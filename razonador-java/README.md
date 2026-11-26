# Razonador del DSL de Plan de Estudios (fuera de MPS)

Algoritmo del razonador probado en Java puro, antes de integrarlo en JetBrains MPS.

## Cómo correrlo

```bash
javac -encoding UTF-8 -d out src/razonador/*.java test/razonador/*.java
java -cp out razonador.RazonadorTest   # 40 pruebas
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

## Integración con MPS

- `VerificadorMPS.java` es el puente: recibe el plan con tipos simples (String, int) y devuelve
  los mensajes de cada materia como `String[]`.
- Las clases se empaquetan en `solutions/planestudios.razonador/lib/razonador.jar`. Esa solución
  expone el jar a MPS como *stubs* de Java, y el lenguaje `planestudios` depende de ella.
- La regla `check_PlanEstudios_razonador` (Typesystem, *checking rule*) arma un `VerificadorMPS`
  con el plan del editor y marca en rojo (error) o amarillo (warning) cada materia.

Si cambias el razonador, vuelve a generar el jar:

```bash
javac -encoding UTF-8 --release 17 -d /tmp/jar src/razonador/*.java
(cd /tmp/jar && jar cf ../razonador.jar razonador/*.class)
cp /tmp/razonador.jar ../solutions/planestudios.razonador/lib/razonador.jar
```
