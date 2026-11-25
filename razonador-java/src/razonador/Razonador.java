package razonador;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Deque;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

/**
 * Razonador del DSL de planes de estudio.
 *
 * Teoría:
 *  - El plan es un grafo dirigido; "p es prerrequisito de m" es la arista p -> m.
 *  - Un plan es consistente sii el grafo es un DAG, es decir, la relación
 *    "debe cursarse antes de" es un orden parcial estricto (irreflexivo, transitivo,
 *    asimétrico). Un ciclo rompe la asimetría y hace las materias imposibles de cursar.
 *  - Verificador de consistencia: Tarjan (componentes fuertemente conexas) O(V+E)
 *    y Kahn (orden topológico) O(V+E).
 *  - Motor de inferencia: cierre transitivo (BFS desde cada nodo, O(V·(V+E))),
 *    prerrequisitos redundantes (reducción transitiva), niveles y ruta crítica.
 *  - Simulador operacional: sistema de transición donde el estado es el conjunto
 *    de materias aprobadas y cada transición es un semestre con tope de créditos.
 *    El óptimo exacto con tope de créditos es NP-difícil (scheduling con precedencias),
 *    por eso se usa una heurística voraz por ruta crítica; sin tope, el número de
 *    niveles del DAG (camino más largo) sí es la cota exacta.
 *
 * Escrito con Java simple (sin records, sin lambdas complejas) para que sea fácil
 * llevarlo a baseLanguage dentro de MPS.
 */
public class Razonador {

    // ------------------------------------------------------------------ diagnósticos

    public static final String ERROR = "ERROR";
    public static final String ADVERTENCIA = "ADVERTENCIA";

    public static class Diagnostico {
        public final String severidad;
        public final String tipo;
        public final String materia;
        public final String mensaje;

        public Diagnostico(String severidad, String tipo, String materia, String mensaje) {
            this.severidad = severidad;
            this.tipo = tipo;
            this.materia = materia;
            this.mensaje = mensaje;
        }

        @Override
        public String toString() {
            return "[" + severidad + "] " + tipo + " (" + materia + "): " + mensaje;
        }
    }

    public static class Semestre {
        public final int numero;
        public final List<String> disponibles;
        public final List<String> inscritas;
        public final int creditos;

        public Semestre(int numero, List<String> disponibles, List<String> inscritas, int creditos) {
            this.numero = numero;
            this.disponibles = disponibles;
            this.inscritas = inscritas;
            this.creditos = creditos;
        }
    }

    public static class ResultadoSimulacion {
        public final List<Semestre> semestres = new ArrayList<Semestre>();
        /** Materias que nunca se pudieron inscribir (bloqueadas o que no caben en el tope). */
        public final List<String> sinCursar = new ArrayList<String>();
        public boolean completo;
    }

    private final PlanEstudios plan;

    public Razonador(PlanEstudios plan) {
        this.plan = plan;
    }

    // ------------------------------------------------------------------ 1. verificación

    /** Prerrequisitos que apuntan a materias que no existen en el plan. */
    public List<Diagnostico> prerrequisitosInexistentes() {
        List<Diagnostico> res = new ArrayList<Diagnostico>();
        for (Materia m : plan.materias.values()) {
            for (String p : m.prerrequisitos) {
                if (!plan.materias.containsKey(p)) {
                    res.add(new Diagnostico(ERROR, "PRERREQUISITO_INEXISTENTE", m.codigo,
                            "el prerrequisito " + p + " no existe en el plan"));
                }
            }
        }
        return res;
    }

    /**
     * Ciclos de prerrequisitos con el algoritmo de Tarjan.
     * Cada componente fuertemente conexa con más de un nodo, o con un auto-lazo, es un ciclo.
     */
    public List<List<String>> ciclos() {
        TarjanEstado st = new TarjanEstado();
        for (String v : plan.materias.keySet()) {
            if (!st.indice.containsKey(v)) {
                tarjan(v, st);
            }
        }
        List<List<String>> res = new ArrayList<List<String>>();
        for (List<String> scc : st.componentes) {
            boolean autoLazo = scc.size() == 1
                    && plan.get(scc.get(0)).prerrequisitos.contains(scc.get(0));
            if (scc.size() > 1 || autoLazo) {
                Collections.sort(scc);
                res.add(scc);
            }
        }
        return res;
    }

    private static class TarjanEstado {
        int contador = 0;
        Map<String, Integer> indice = new HashMap<String, Integer>();
        Map<String, Integer> bajo = new HashMap<String, Integer>();
        Deque<String> pila = new ArrayDeque<String>();
        Set<String> enPila = new LinkedHashSet<String>();
        List<List<String>> componentes = new ArrayList<List<String>>();
    }

    private void tarjan(String v, TarjanEstado st) {
        st.indice.put(v, st.contador);
        st.bajo.put(v, st.contador);
        st.contador++;
        st.pila.push(v);
        st.enPila.add(v);

        for (String w : plan.sucesores(v)) {
            if (!st.indice.containsKey(w)) {
                tarjan(w, st);
                st.bajo.put(v, Math.min(st.bajo.get(v), st.bajo.get(w)));
            } else if (st.enPila.contains(w)) {
                st.bajo.put(v, Math.min(st.bajo.get(v), st.indice.get(w)));
            }
        }

        if (st.bajo.get(v).equals(st.indice.get(v))) {
            List<String> scc = new ArrayList<String>();
            String w;
            do {
                w = st.pila.pop();
                st.enPila.remove(w);
                scc.add(w);
            } while (!w.equals(v));
            st.componentes.add(scc);
        }
    }

    /**
     * Orden topológico con el algoritmo de Kahn (desempate alfabético para que sea determinista).
     * Devuelve solo las materias alcanzables; las que quedan fuera están en un ciclo o dependen de uno.
     */
    public List<String> ordenTopologico() {
        Map<String, Integer> gradoEntrada = new HashMap<String, Integer>();
        for (Materia m : plan.materias.values()) {
            int g = 0;
            for (String p : m.prerrequisitos) {
                if (plan.materias.containsKey(p)) {
                    g++;
                }
            }
            gradoEntrada.put(m.codigo, g);
        }
        TreeSet<String> listos = new TreeSet<String>();
        for (Map.Entry<String, Integer> e : gradoEntrada.entrySet()) {
            if (e.getValue() == 0) {
                listos.add(e.getKey());
            }
        }
        List<String> orden = new ArrayList<String>();
        while (!listos.isEmpty()) {
            String v = listos.pollFirst();
            orden.add(v);
            for (String w : plan.sucesores(v)) {
                int g = gradoEntrada.get(w) - 1;
                gradoEntrada.put(w, g);
                if (g == 0) {
                    listos.add(w);
                }
            }
        }
        return orden;
    }

    /** Materias que nunca se pueden cursar: están en un ciclo o dependen (transitivamente) de uno. */
    public Set<String> materiasBloqueadas() {
        Set<String> bloqueadas = new TreeSet<String>(plan.materias.keySet());
        bloqueadas.removeAll(ordenTopologico());
        return bloqueadas;
    }

    public boolean esConsistente() {
        return ciclos().isEmpty() && prerrequisitosInexistentes().isEmpty();
    }

    /** Todos los diagnósticos del plan (lo que en MPS se mostraría como errores/advertencias). */
    public List<Diagnostico> verificar() {
        List<Diagnostico> res = new ArrayList<Diagnostico>(prerrequisitosInexistentes());

        Set<String> enCiclo = new TreeSet<String>();
        for (List<String> c : ciclos()) {
            enCiclo.addAll(c);
            String cadena = String.join(" -> ", c) + " -> " + c.get(0);
            for (String m : c) {
                res.add(new Diagnostico(ERROR, "CICLO", m, "ciclo de prerrequisitos: " + cadena));
            }
        }
        for (String m : materiasBloqueadas()) {
            if (!enCiclo.contains(m)) {
                res.add(new Diagnostico(ERROR, "INALCANZABLE", m,
                        "depende de una materia en ciclo, nunca se podrá cursar"));
            }
        }
        for (Materia m : plan.materias.values()) {
            if (m.creditos > plan.maxCreditosSemestre) {
                res.add(new Diagnostico(ERROR, "EXCEDE_TOPE", m.codigo,
                        m.creditos + " créditos > tope de " + plan.maxCreditosSemestre + " por semestre"));
            }
        }
        if (plan.creditosTotales() < plan.creditosGrado) {
            res.add(new Diagnostico(ERROR, "CREDITOS_INSUFICIENTES", plan.nombre,
                    "el plan suma " + plan.creditosTotales() + " créditos y el grado exige " + plan.creditosGrado));
        }
        for (String[] r : prerrequisitosRedundantes()) {
            res.add(new Diagnostico(ADVERTENCIA, "PRERREQUISITO_REDUNDANTE", r[0],
                    r[1] + " ya está implicado por " + r[2]));
        }
        return res;
    }

    // ------------------------------------------------------------------ 2. inferencia

    /** Cierre transitivo: todas las materias que hay que aprobar antes de cada materia. */
    public Map<String, Set<String>> cierreTransitivo() {
        Map<String, Set<String>> res = new LinkedHashMap<String, Set<String>>();
        for (String m : plan.materias.keySet()) {
            res.put(m, ancestros(m));
        }
        return res;
    }

    public Set<String> ancestros(String codigo) {
        Set<String> vistos = new TreeSet<String>();
        Deque<String> cola = new ArrayDeque<String>();
        cola.add(codigo);
        while (!cola.isEmpty()) {
            Materia actual = plan.get(cola.poll());
            if (actual == null) {
                continue;
            }
            for (String p : actual.prerrequisitos) {
                if (plan.materias.containsKey(p) && vistos.add(p)) {
                    cola.add(p);
                }
            }
        }
        return vistos;
    }

    /**
     * Prerrequisitos redundantes (reducción transitiva): en m, el prerrequisito p sobra
     * si otro prerrequisito q de m ya exige p. Devuelve {materia, redundante, implicadoPor}.
     */
    public List<String[]> prerrequisitosRedundantes() {
        List<String[]> res = new ArrayList<String[]>();
        Set<String> bloqueadas = materiasBloqueadas(); // en un ciclo todo "implica" todo: no se reporta
        for (Materia m : plan.materias.values()) {
            if (bloqueadas.contains(m.codigo)) {
                continue;
            }
            for (String p : m.prerrequisitos) {
                for (String q : m.prerrequisitos) {
                    if (!q.equals(p) && ancestros(q).contains(p)) {
                        res.add(new String[]{m.codigo, p, q});
                        break;
                    }
                }
            }
        }
        return res;
    }

    /**
     * Nivel de cada materia = longitud del camino más largo que termina en ella (1 = sin prerrequisitos).
     * Es el semestre más temprano posible si no hubiera tope de créditos.
     */
    public Map<String, Integer> niveles() {
        Map<String, Integer> nivel = new LinkedHashMap<String, Integer>();
        for (String v : ordenTopologico()) {
            int max = 0;
            for (String p : plan.get(v).prerrequisitos) {
                Integer np = nivel.get(p);
                if (np != null && np > max) {
                    max = np;
                }
            }
            nivel.put(v, max + 1);
        }
        return nivel;
    }

    /** Cota inferior exacta de semestres para graduarse (sin tope de créditos). */
    public int semestresMinimos() {
        int max = 0;
        for (int n : niveles().values()) {
            max = Math.max(max, n);
        }
        return max;
    }

    /** Altura = cuántas materias faltan en la cadena más larga que empieza en esta materia. */
    public Map<String, Integer> alturas() {
        List<String> orden = ordenTopologico();
        Map<String, Integer> altura = new HashMap<String, Integer>();
        for (int i = orden.size() - 1; i >= 0; i--) {
            String v = orden.get(i);
            int max = 0;
            for (String s : plan.sucesores(v)) {
                Integer hs = altura.get(s);
                if (hs != null && hs > max) {
                    max = hs;
                }
            }
            altura.put(v, max + 1);
        }
        return altura;
    }

    /** Ruta crítica: la cadena de prerrequisitos más larga del plan. */
    public List<String> rutaCritica() {
        Map<String, Integer> altura = alturas();
        String actual = null;
        for (String v : new TreeSet<String>(altura.keySet())) {
            if (actual == null || altura.get(v) > altura.get(actual)) {
                actual = v;
            }
        }
        List<String> ruta = new ArrayList<String>();
        while (actual != null) {
            ruta.add(actual);
            String siguiente = null;
            for (String s : new TreeSet<String>(plan.sucesores(actual))) {
                if (altura.containsKey(s)
                        && altura.get(s) == altura.get(actual) - 1
                        && siguiente == null) {
                    siguiente = s;
                }
            }
            actual = siguiente;
        }
        return ruta;
    }

    // ------------------------------------------------------------------ 3. simulación

    /**
     * Simulador operacional (sistema de transición).
     * Estado: conjunto de materias aprobadas.
     * Transición (un semestre): se inscriben materias habilitadas (todos sus prerrequisitos
     * aprobados) sin pasar el tope de créditos, priorizando la ruta crítica.
     * Termina cuando se aprueba todo o cuando no hay ninguna transición posible (estado muerto).
     */
    public ResultadoSimulacion simular() {
        ResultadoSimulacion res = new ResultadoSimulacion();
        final Map<String, Integer> altura = alturas();
        Set<String> aprobadas = new LinkedHashSet<String>();
        Set<String> pendientes = new TreeSet<String>(altura.keySet()); // ya excluye bloqueadas

        // Las que no caben en ningún semestre nunca se pueden inscribir
        for (String m : new ArrayList<String>(pendientes)) {
            if (plan.get(m).creditos > plan.maxCreditosSemestre) {
                pendientes.remove(m);
            }
        }

        int numero = 1;
        while (!pendientes.isEmpty()) {
            List<String> disponibles = new ArrayList<String>();
            for (String m : pendientes) {
                if (aprobadas.containsAll(existentes(plan.get(m).prerrequisitos))) {
                    disponibles.add(m);
                }
            }
            if (disponibles.isEmpty()) {
                break; // estado muerto: quedan pendientes pero ninguna está habilitada
            }
            Collections.sort(disponibles, new Comparator<String>() {
                public int compare(String a, String b) {
                    int c = altura.get(b) - altura.get(a);
                    if (c != 0) return c;
                    c = plan.get(b).creditos - plan.get(a).creditos;
                    if (c != 0) return c;
                    return a.compareTo(b);
                }
            });
            List<String> inscritas = new ArrayList<String>();
            int creditos = 0;
            for (String m : disponibles) {
                int cm = plan.get(m).creditos;
                if (creditos + cm <= plan.maxCreditosSemestre) {
                    inscritas.add(m);
                    creditos += cm;
                }
            }
            res.semestres.add(new Semestre(numero, disponibles, inscritas, creditos));
            aprobadas.addAll(inscritas);
            pendientes.removeAll(inscritas);
            numero++;
        }

        for (String m : plan.materias.keySet()) {
            if (!aprobadas.contains(m)) {
                res.sinCursar.add(m);
            }
        }
        res.completo = res.sinCursar.isEmpty();
        return res;
    }

    private List<String> existentes(List<String> codigos) {
        List<String> res = new ArrayList<String>();
        for (String c : codigos) {
            if (plan.materias.containsKey(c)) {
                res.add(c);
            }
        }
        return res;
    }
}
