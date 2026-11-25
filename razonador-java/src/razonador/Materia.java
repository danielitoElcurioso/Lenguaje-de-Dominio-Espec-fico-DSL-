package razonador;

import java.util.ArrayList;
import java.util.List;

/**
 * Nodo del grafo del plan de estudios.
 * En MPS corresponde al concepto "Materia" (propiedades: codigo, nombre, creditos;
 * referencias: prerrequisitos -> Materia).
 */
public class Materia {
    public final String codigo;
    public final String nombre;
    public final int creditos;
    public final List<String> prerrequisitos = new ArrayList<String>();

    public Materia(String codigo, String nombre, int creditos, String... prerrequisitos) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.creditos = creditos;
        for (String p : prerrequisitos) {
            this.prerrequisitos.add(p);
        }
    }

    @Override
    public String toString() {
        return codigo;
    }
}
