package razonador;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * Pruebas del razonador sin dependencias externas (no requiere JUnit).
 * Ejecutar: ver README.md. Termina con código 1 si alguna prueba falla.
 * En el Hito 3 estos mismos casos se convierten en pruebas jetbrains.mps.lang.test.
 */
public class RazonadorTest {

    private static int ok = 0;
    private static final List<String> fallos = new ArrayList<String>();

    public static void main(String[] args) {
        planValidoEsConsistente();
        planValidoOrdenTopologicoRespetaPrerrequisitos();
        planValidoSemestresMinimos();
        planValidoRutaCritica();
        planValidoCierreTransitivo();
        detectaPrerrequisitoRedundante();
        simulacionRespetaTopeYPrerrequisitos();
        detectaCicloYMateriaInalcanzable();
        detectaAutoPrerrequisito();
        detectaPrerrequisitoInexistente();
        detectaTopeExcedidoYCreditosInsuficientes();
        simulacionSeDetieneConCiclo();
        reporteJsonContieneDeducciones();

        System.out.println();
        System.out.println(ok + " pruebas OK, " + fallos.size() + " fallidas");
        for (String f : fallos) {
            System.out.println("  FALLO: " + f);
        }
        if (!fallos.isEmpty()) {
            System.exit(1);
        }
    }

    // ------------------------------------------------------------------ plan válido

    static void planValidoEsConsistente() {
        Razonador r = new Razonador(Ejemplos.sistemasValido());
        check("plan valido es consistente", r.esConsistente());
        check("plan valido sin errores", contar(r.verificar(), Razonador.ERROR) == 0);
        check("plan valido sin bloqueadas", r.materiasBloqueadas().isEmpty());
    }

    static void planValidoOrdenTopologicoRespetaPrerrequisitos() {
        PlanEstudios p = Ejemplos.sistemasValido();
        List<String> orden = new Razonador(p).ordenTopologico();
        check("orden incluye todas las materias", orden.size() == p.materias.size());
        boolean respeta = true;
        for (Materia m : p.materias.values()) {
            for (String pre : m.prerrequisitos) {
                if (orden.indexOf(pre) > orden.indexOf(m.codigo)) {
                    respeta = false;
                }
            }
        }
        check("cada prerrequisito va antes que su materia", respeta);
    }

    static void planValidoSemestresMinimos() {
        Razonador r = new Razonador(Ejemplos.sistemasValido());
        Map<String, Integer> n = r.niveles();
        check("nivel MAT1 = 1", n.get("MAT1") == 1);
        check("nivel EDD = 3", n.get("EDD") == 3);
        check("nivel TC = 4", n.get("TC") == 4);
        check("semestres minimos = 4", r.semestresMinimos() == 4);
    }

    static void planValidoRutaCritica() {
        List<String> ruta = new Razonador(Ejemplos.sistemasValido()).rutaCritica();
        check("ruta critica = LOG, DIS, EDD, ALG",
                ruta.equals(Arrays.asList("LOG", "DIS", "EDD", "ALG")));
    }

    static void planValidoCierreTransitivo() {
        Razonador r = new Razonador(Ejemplos.sistemasValido());
        check("TC exige transitivamente PRG1 y LOG",
                r.ancestros("TC").containsAll(Arrays.asList("PRG1", "PRG2", "LOG", "DIS", "EDD")));
        check("MAT1 no exige nada", r.ancestros("MAT1").isEmpty());
    }

    static void detectaPrerrequisitoRedundante() {
        List<String[]> red = new Razonador(Ejemplos.conRedundante()).prerrequisitosRedundantes();
        check("hay exactamente 1 redundante", red.size() == 1);
        check("en TC, DIS es redundante por EDD",
                red.size() == 1 && red.get(0)[0].equals("TC")
                        && red.get(0)[1].equals("DIS") && red.get(0)[2].equals("EDD"));
    }

    static void simulacionRespetaTopeYPrerrequisitos() {
        PlanEstudios p = Ejemplos.sistemasValido();
        Razonador.ResultadoSimulacion sim = new Razonador(p).simular();
        check("simulacion completa", sim.completo);
        check("simulacion en 4 semestres", sim.semestres.size() == 4);
        List<String> aprobadas = new ArrayList<String>();
        boolean topeOk = true;
        boolean prereqOk = true;
        for (Razonador.Semestre s : sim.semestres) {
            if (s.creditos > p.maxCreditosSemestre) topeOk = false;
            for (String m : s.inscritas) {
                if (!aprobadas.containsAll(p.get(m).prerrequisitos)) prereqOk = false;
            }
            aprobadas.addAll(s.inscritas);
        }
        check("ningun semestre pasa el tope", topeOk);
        check("nadie se inscribe sin prerrequisitos aprobados", prereqOk);
    }

    // ------------------------------------------------------------------ planes inválidos

    static void detectaCicloYMateriaInalcanzable() {
        Razonador r = new Razonador(Ejemplos.conCiclo());
        List<List<String>> ciclos = r.ciclos();
        check("hay un ciclo", ciclos.size() == 1);
        check("el ciclo es A, B, C", ciclos.size() == 1 && ciclos.get(0).equals(Arrays.asList("A", "B", "C")));
        check("bloqueadas = A, B, C, D",
                r.materiasBloqueadas().equals(new java.util.TreeSet<String>(Arrays.asList("A", "B", "C", "D"))));
        check("D marcada INALCANZABLE", tiene(r.verificar(), "INALCANZABLE", "D"));
        check("plan con ciclo no es consistente", !r.esConsistente());
    }

    static void detectaAutoPrerrequisito() {
        PlanEstudios p = new PlanEstudios("auto", 12, 0)
                .agregar(new Materia("X", "Se exige a si misma", 3, "X"));
        Razonador r = new Razonador(p);
        check("auto-prerrequisito es un ciclo", r.ciclos().size() == 1);
        check("X marcada CICLO", tiene(r.verificar(), "CICLO", "X"));
    }

    static void detectaPrerrequisitoInexistente() {
        PlanEstudios p = new PlanEstudios("fantasma", 12, 0)
                .agregar(new Materia("A", "A", 3, "NOEXISTE"));
        check("prerrequisito inexistente detectado",
                tiene(new Razonador(p).verificar(), "PRERREQUISITO_INEXISTENTE", "A"));
    }

    static void detectaTopeExcedidoYCreditosInsuficientes() {
        List<Razonador.Diagnostico> ds = new Razonador(Ejemplos.conTopeExcedido()).verificar();
        check("PG excede el tope", tiene(ds, "EXCEDE_TOPE", "PG"));
        check("creditos insuficientes", tiene(ds, "CREDITOS_INSUFICIENTES", "Plan con tope excedido"));
        Razonador.ResultadoSimulacion sim = new Razonador(Ejemplos.conTopeExcedido()).simular();
        check("PG queda sin cursar", sim.sinCursar.contains("PG") && !sim.completo);
    }

    static void simulacionSeDetieneConCiclo() {
        Razonador.ResultadoSimulacion sim = new Razonador(Ejemplos.conCiclo()).simular();
        check("solo se cursa BAS", sim.semestres.size() == 1
                && sim.semestres.get(0).inscritas.equals(Arrays.asList("BAS")));
        check("A, B, C, D sin cursar", sim.sinCursar.containsAll(Arrays.asList("A", "B", "C", "D")));
    }

    static void reporteJsonContieneDeducciones() {
        String json = Reporte.json(Ejemplos.sistemasValido());
        check("json trae semestresMinimos", json.contains("\"semestresMinimos\": 4"));
        check("json trae consistente true", json.contains("\"consistente\": true"));
        String jsonCiclo = Reporte.json(Ejemplos.conCiclo());
        check("json del ciclo trae CICLO", jsonCiclo.contains("\"tipo\": \"CICLO\""));
    }

    // ------------------------------------------------------------------ utilidades

    private static int contar(List<Razonador.Diagnostico> ds, String severidad) {
        int n = 0;
        for (Razonador.Diagnostico d : ds) if (d.severidad.equals(severidad)) n++;
        return n;
    }

    private static boolean tiene(List<Razonador.Diagnostico> ds, String tipo, String materia) {
        for (Razonador.Diagnostico d : ds) {
            if (d.tipo.equals(tipo) && d.materia.equals(materia)) return true;
        }
        return false;
    }

    private static void check(String nombre, boolean condicion) {
        if (condicion) {
            ok++;
            System.out.println("OK    " + nombre);
        } else {
            fallos.add(nombre);
            System.out.println("FALLO " + nombre);
        }
    }
}
