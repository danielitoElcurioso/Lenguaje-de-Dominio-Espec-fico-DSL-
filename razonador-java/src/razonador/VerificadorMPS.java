package razonador;

import java.util.ArrayList;
import java.util.List;

/**
 * Puente entre MPS y el razonador.
 * La regla de Typesystem de MPS arma el plan llamando materia(...) y prerrequisito(...)
 * con los datos del modelo que el usuario escribe, y luego pide los mensajes de cada materia.
 * Solo usa String, int y String[] para que llamarlo desde baseLanguage sea simple.
 */
public class VerificadorMPS {

    private final PlanEstudios plan;
    private List<Razonador.Diagnostico> diagnosticos;

    public VerificadorMPS(String nombre, int maxCreditosSemestre, int creditosGrado) {
        this.plan = new PlanEstudios(texto(nombre), maxCreditosSemestre, creditosGrado);
    }

    public void materia(String codigo, String nombre, int creditos) {
        plan.agregar(new Materia(texto(codigo), texto(nombre), creditos));
        diagnosticos = null;
    }

    public void prerrequisito(String materia, String prerrequisito) {
        Materia m = plan.get(texto(materia));
        if (m != null) {
            m.prerrequisitos.add(texto(prerrequisito));
        }
        diagnosticos = null;
    }

    /** Errores (ciclo, inalcanzable, tope, prerrequisito inexistente) de una materia. */
    public String[] errores(String codigoMateria) {
        return mensajes(texto(codigoMateria), Razonador.ERROR);
    }

    /** Advertencias (prerrequisito redundante) de una materia. */
    public String[] advertencias(String codigoMateria) {
        return mensajes(texto(codigoMateria), Razonador.ADVERTENCIA);
    }

    /** Errores que son del plan completo y no de una materia (créditos insuficientes). */
    public String[] erroresDelPlan() {
        List<String> res = new ArrayList<String>();
        for (Razonador.Diagnostico d : diagnosticos()) {
            if (d.severidad.equals(Razonador.ERROR) && plan.get(d.materia) == null) {
                res.add(d.mensaje);
            }
        }
        return res.toArray(new String[0]);
    }

    /** Reporte JSON completo (lo usará el generador). */
    public String reporteJson() {
        return Reporte.json(plan);
    }

    private String[] mensajes(String codigo, String severidad) {
        List<String> res = new ArrayList<String>();
        for (Razonador.Diagnostico d : diagnosticos()) {
            if (d.severidad.equals(severidad) && d.materia.equals(codigo) && plan.get(codigo) != null) {
                res.add(d.mensaje);
            }
        }
        return res.toArray(new String[0]);
    }

    private List<Razonador.Diagnostico> diagnosticos() {
        if (diagnosticos == null) {
            diagnosticos = new Razonador(plan).verificar();
        }
        return diagnosticos;
    }

    private static String texto(String s) {
        return s == null ? "" : s;
    }
}
