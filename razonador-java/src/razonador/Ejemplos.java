package razonador;

/** Planes de ejemplo: sirven para las pruebas y como base de los modelos de la Sandbox. */
public class Ejemplos {

    /** Plan válido (pequeño plan de Ingeniería de Sistemas). */
    public static PlanEstudios sistemasValido() {
        return new PlanEstudios("Ingenieria de Sistemas", 12, 30)
            .agregar(new Materia("MAT1", "Calculo I", 4))
            .agregar(new Materia("PRG1", "Programacion I", 4))
            .agregar(new Materia("LOG",  "Logica", 3))
            .agregar(new Materia("MAT2", "Calculo II", 4, "MAT1"))
            .agregar(new Materia("PRG2", "Programacion II", 4, "PRG1"))
            .agregar(new Materia("DIS",  "Matematicas Discretas", 3, "LOG"))
            .agregar(new Materia("EDD",  "Estructuras de Datos", 4, "PRG2", "DIS"))
            .agregar(new Materia("TC",   "Teoria de la Computacion", 3, "DIS", "EDD"))
            .agregar(new Materia("ALG",  "Complejidad Algoritmica", 3, "EDD", "MAT2"));
    }

    /** Plan inválido: ciclo A -> B -> C -> A, y D depende del ciclo. */
    public static PlanEstudios conCiclo() {
        return new PlanEstudios("Plan con ciclo", 12, 10)
            .agregar(new Materia("BAS", "Basica", 3))
            .agregar(new Materia("A", "Materia A", 3, "C", "BAS"))
            .agregar(new Materia("B", "Materia B", 3, "A"))
            .agregar(new Materia("C", "Materia C", 3, "B"))
            .agregar(new Materia("D", "Materia D", 3, "C"));
    }

    /** Plan inválido: materia que no cabe en el tope y créditos insuficientes. */
    public static PlanEstudios conTopeExcedido() {
        return new PlanEstudios("Plan con tope excedido", 10, 40)
            .agregar(new Materia("X1", "Introduccion", 3))
            .agregar(new Materia("PG", "Proyecto de Grado", 12, "X1"));
    }

    /** Plan con prerrequisito redundante: TC pide DIS, pero EDD ya exige DIS. */
    public static PlanEstudios conRedundante() {
        return sistemasValido();
    }

    public static void main(String[] args) {
        System.out.println("=== Plan valido ===");
        System.out.println(Reporte.json(sistemasValido()));
        System.out.println("=== Plan con ciclo ===");
        System.out.println(Reporte.json(conCiclo()));
    }
}
