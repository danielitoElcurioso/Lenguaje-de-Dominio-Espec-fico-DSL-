package razonador;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * Raíz del modelo. En MPS corresponde al concepto raíz "PlanEstudios".
 * El plan es un grafo dirigido G = (V, E):
 *   V = materias
 *   E = {(p, m) | p es prerrequisito de m}
 */
public class PlanEstudios {
    public final String nombre;
    public final int maxCreditosSemestre;
    public final int creditosGrado;
    public final Map<String, Materia> materias = new LinkedHashMap<String, Materia>();

    public PlanEstudios(String nombre, int maxCreditosSemestre, int creditosGrado) {
        this.nombre = nombre;
        this.maxCreditosSemestre = maxCreditosSemestre;
        this.creditosGrado = creditosGrado;
    }

    public PlanEstudios agregar(Materia m) {
        materias.put(m.codigo, m);
        return this;
    }

    public Materia get(String codigo) {
        return materias.get(codigo);
    }

    public int creditosTotales() {
        int total = 0;
        for (Materia m : materias.values()) {
            total += m.creditos;
        }
        return total;
    }

    /** Sucesores: materias que tienen a 'codigo' como prerrequisito (aristas salientes). */
    public List<String> sucesores(String codigo) {
        List<String> res = new ArrayList<String>();
        for (Materia m : materias.values()) {
            if (m.prerrequisitos.contains(codigo)) {
                res.add(m.codigo);
            }
        }
        return res;
    }
}
