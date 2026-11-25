package razonador;

import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Lo que después hará el Generator/TextGen de MPS: convertir el modelo + las deducciones
 * del razonador en un artefacto (aquí JSON). Sirve de "maqueta" del generador.
 */
public class Reporte {

    public static String json(PlanEstudios plan) {
        Razonador r = new Razonador(plan);
        StringBuilder sb = new StringBuilder();
        sb.append("{\n");
        sb.append("  \"plan\": ").append(str(plan.nombre)).append(",\n");
        sb.append("  \"creditosTotales\": ").append(plan.creditosTotales()).append(",\n");
        sb.append("  \"creditosGrado\": ").append(plan.creditosGrado).append(",\n");
        sb.append("  \"maxCreditosSemestre\": ").append(plan.maxCreditosSemestre).append(",\n");
        sb.append("  \"consistente\": ").append(r.esConsistente()).append(",\n");

        sb.append("  \"diagnosticos\": [");
        List<Razonador.Diagnostico> ds = r.verificar();
        for (int i = 0; i < ds.size(); i++) {
            Razonador.Diagnostico d = ds.get(i);
            sb.append(i == 0 ? "\n" : ",\n");
            sb.append("    {\"severidad\": ").append(str(d.severidad))
              .append(", \"tipo\": ").append(str(d.tipo))
              .append(", \"materia\": ").append(str(d.materia))
              .append(", \"mensaje\": ").append(str(d.mensaje)).append("}");
        }
        sb.append(ds.isEmpty() ? "],\n" : "\n  ],\n");

        sb.append("  \"ordenTopologico\": ").append(lista(r.ordenTopologico())).append(",\n");
        sb.append("  \"semestresMinimos\": ").append(r.semestresMinimos()).append(",\n");
        sb.append("  \"rutaCritica\": ").append(lista(r.rutaCritica())).append(",\n");

        sb.append("  \"prerrequisitosTransitivos\": {");
        boolean primero = true;
        for (Map.Entry<String, Set<String>> e : r.cierreTransitivo().entrySet()) {
            sb.append(primero ? "\n" : ",\n");
            primero = false;
            sb.append("    ").append(str(e.getKey())).append(": ").append(lista(e.getValue()));
        }
        sb.append("\n  },\n");

        Razonador.ResultadoSimulacion sim = r.simular();
        sb.append("  \"simulacion\": {\n");
        sb.append("    \"completo\": ").append(sim.completo).append(",\n");
        sb.append("    \"semestres\": [");
        for (int i = 0; i < sim.semestres.size(); i++) {
            Razonador.Semestre s = sim.semestres.get(i);
            sb.append(i == 0 ? "\n" : ",\n");
            sb.append("      {\"numero\": ").append(s.numero)
              .append(", \"creditos\": ").append(s.creditos)
              .append(", \"materias\": ").append(lista(s.inscritas)).append("}");
        }
        sb.append(sim.semestres.isEmpty() ? "],\n" : "\n    ],\n");
        sb.append("    \"sinCursar\": ").append(lista(sim.sinCursar)).append("\n");
        sb.append("  }\n");
        sb.append("}\n");
        return sb.toString();
    }

    private static String lista(Iterable<String> xs) {
        StringBuilder sb = new StringBuilder("[");
        boolean primero = true;
        for (String x : xs) {
            if (!primero) sb.append(", ");
            sb.append(str(x));
            primero = false;
        }
        return sb.append("]").toString();
    }

    private static String str(String s) {
        return "\"" + s.replace("\\", "\\\\").replace("\"", "\\\"") + "\"";
    }
}
