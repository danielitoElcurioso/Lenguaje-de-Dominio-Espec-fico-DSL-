# Razonador del DSL de Plan de Estudios (fuera de MPS)

Algoritmo del razonador probado en Java puro, antes de integrarlo en JetBrains MPS.

## Cómo correrlo

```bash
javac -encoding UTF-8 -d out src/razonador/*.java test/razonador/*.java
java -cp out razonador.RazonadorTest   # 34 pruebas
java -cp out razonador.Ejemplos        # imprime el reporte JSON de dos planes
```

## Qué hace

| Parte | Qué detecta o deduce | Algoritmo | Teoría | Complejidad |
|---|---|---|---|---|
| Verificador | Ciclos de prerrequisitos (incluye auto-prerrequisito) | Tarjan (componentes fuertemente conexas) | Grafo dirigido; un plan válido es un DAG = orden parcial estricto | O(V+E) |
| Verificador | Materias inalcanzables (dependen de un ciclo) | Kahn: lo que no entra al orden topológico | Alcanzabilidad en grafos | O(V+E) |
| Verificador | Prerrequisito inexistente, materia que excede el tope de créditos, créditos insuficientes para el grado | Recorrido simple | Restricciones del dominio | O(V+E) |
| Inferencia | Prerrequisitos transitivos de cada materia | BFS desde cada nodo | Cierre transitivo | O(V·(V+E)) |
| Inferencia | Prerrequisitos redundantes | Comparar contra el cierre transitivo | Reducción transitiva | O(V·E) aprox. |
| Inferencia | Semestres mínimos sin tope y ruta crítica | Camino más largo en un DAG | Orden topológico, programación dinámica | O(V+E) |
| Simulador | Semestre a semestre con tope de créditos | Voraz por ruta crítica | Sistema de transición: estado = materias aprobadas; transición = semestre | O(S·V log V) |

Para el análisis crítico del video: repartir las materias en semestres con tope de créditos y el
mínimo de semestres es NP-difícil (scheduling con precedencias), así que el simulador usa una
heurística. Sin tope, el número de niveles del DAG sí es la respuesta exacta.

## Archivos

- `Materia.java`, `PlanEstudios.java`: el modelo (equivalen a los conceptos de MPS).
- `Razonador.java`: verificación, inferencia y simulación.
- `Reporte.java`: genera el JSON (maqueta de lo que hará el Generator/TextGen).
- `Ejemplos.java`: un plan válido y tres inválidos (sirven para la Sandbox).
- `test/RazonadorTest.java`: pruebas sin dependencias (no necesita JUnit).

## Paso a MPS (jueves)

1. Conceptos que debe tener la Structure de Daniel: `PlanEstudios` (raíz: `nombre`, `maxCreditosSemestre`,
   `creditosGrado`, hijos `materias`), `Materia` (`codigo`, `nombre`, `creditos`, hijos `prerrequisitos`),
   `RefPrerrequisito` (referencia a `Materia`).
2. Copiar `Razonador` como clase de baseLanguage en el modelo del lenguaje (el código está en Java
   simple a propósito), cambiando los `String` de código por `node<Materia>`.
3. Una regla `checking rule` en el Typesystem sobre `PlanEstudios` que llame a `verificar()` y
   marque con `error`/`warning` el nodo de cada `Diagnostico`.
4. Un TextGen sobre `PlanEstudios` que produzca el JSON de `Reporte`.
