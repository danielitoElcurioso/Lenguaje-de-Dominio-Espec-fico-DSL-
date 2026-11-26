# DSL de Planes de Estudio con Razonador (JetBrains MPS)

Proyecto de Teoría de la Computación: un Lenguaje de Dominio Específico para describir planes de
estudio (materias, créditos y prerrequisitos) con un **razonador** que verifica el plan, deduce
información nueva y simula el avance semestre a semestre.

El reto central: el proyecto no consiste únicamente en crear una sintaxis agradable, sino en dotar al
lenguaje de un razonador capaz de analizar los modelos escritos por un usuario, verificar propiedades
formales, detectar inconsistencias o deducir nueva información de forma automática.

**Versión de MPS:** 2026.2 (todo el equipo debe usar la misma).

## Estructura del repositorio

```
.mps/                             proyecto de MPS (abrir esta carpeta raíz con File → Open)
languages/planestudios/           el lenguaje: structure, editor, constraints, typesystem, behavior
solutions/planestudios.razonador/ el razonador empaquetado (lib/razonador.jar) para usarlo desde MPS
solutions/planestudios.sandbox/   modelos de ejemplo: válidos (se generan) e inválidos (no se generan)
solutions/planestudios.tests/     pruebas automáticas jetbrains.mps.lang.test
razonador-java/                   código fuente del razonador y sus 40 pruebas (fuera de MPS)
```

## Cómo trabajar

1. `git pull`
2. Abrir la carpeta raíz en MPS (**File → Open**).
3. Clic derecho en el lenguaje `planestudios` → **Rebuild Language**, luego **Build → Rebuild Project**.
4. Al terminar: `git add . && git commit -m "..." && git push`.

No subir archivos por la web de GitHub ni las carpetas `source_gen` / `classes_gen` (el `.gitignore`
ya las excluye). Si MPS muestra "Perform Quick Fixes" en la validación, **no** aplicarlo sin revisar:
puede borrar datos de los modelos.

## El lenguaje

| Concepto | Qué representa | Contenido |
|---|---|---|
| `PlanEstudios` (raíz) | Un plan de estudios | `name`, `maxCreditosSemestre`, `creditosGrado`, materias |
| `Materia` | Una materia del plan | `name` (código, ej. MAT1), `nombre`, `creditos`, prerrequisitos |
| `RefPrerrequisito` | "esta materia exige aquella" | referencia a una `Materia` |

El editor muestra el plan con un encabezado y una **tabla** (`jetbrains.mps.lang.editor.table`):
una fila por materia; la primera columna es la materia y las siguientes, sus prerrequisitos.

## El razonador

El plan se modela como un grafo dirigido (prerrequisito → materia). Un plan es consistente sii ese
grafo es un DAG, es decir, "debe verse antes de" es un orden parcial estricto.

| Función | Algoritmo | Complejidad |
|---|---|---|
| Ciclos de prerrequisitos | Tarjan (componentes fuertemente conexas) | O(V+E) |
| Materias inalcanzables | Kahn (lo que no entra al orden topológico) | O(V+E) |
| Prerrequisitos transitivos | BFS desde cada materia (cierre transitivo) | O(V·(V+E)) |
| Prerrequisitos redundantes | Reducción transitiva | O(V·E) aprox. |
| Semestres mínimos y ruta crítica | Camino más largo en un DAG | O(V+E) |
| Simulación semestre a semestre | Sistema de transición con heurística voraz por ruta crítica | O(S·V log V) |

Con tope de créditos, el reparto óptimo es NP-difícil (scheduling con precedencias); por eso el
simulador usa una heurística. Detalle completo en [`razonador-java/README.md`](razonador-java/README.md).

**En MPS:** la regla de Typesystem `check_PlanEstudios_razonador` llama al razonador cada vez que se
edita un plan y marca en rojo los ciclos, materias inalcanzables, materias que exceden el tope y
prerrequisitos inexistentes; en amarillo los prerrequisitos redundantes; y como error del plan los
créditos insuficientes.

## Generador (TextGen)

Cada plan del modelo `planestudios.sandbox` se genera como un archivo `<nombre del plan>.json` con el
reporte completo del razonador: diagnósticos, orden topológico, semestres mínimos, ruta crítica,
prerrequisitos transitivos de cada materia y la simulación semestre a semestre. Para generarlo: clic
derecho en el modelo `planestudios.sandbox` → **Generate Model**. El archivo queda en
`solutions/planestudios.sandbox/source_gen/` (no se sube a git; se regenera).

## Pruebas automáticas (`jetbrains.mps.lang.test`)

`solutions/planestudios.tests` contiene el caso `PruebasRazonador` con 5 planes. Cada nodo marcado con
*has error* / *has warning* debe recibir ese mensaje del razonador, y los demás no deben tener ninguno:

| Plan de prueba | Qué verifica |
|---|---|
| Plan minimo valido | un plan correcto no produce errores ni advertencias |
| Ingenieria de Sistemas | inferencia: en TC el prerrequisito DIS es redundante (warning) |
| Plan con ciclo | ciclo A → B → C → A (error en las tres) y D inalcanzable (error) |
| Plan con auto-prerrequisito | una materia que se exige a sí misma es un ciclo |
| Plan con tope excedido | PG supera el tope de créditos (error) y el plan no suma los créditos del grado (error del plan) |

Para correrlas: clic derecho en la solución `planestudios.tests` → **Run Tests**.

## Modelos de la Sandbox

| Modelo | Tipo | Qué demuestra |
|---|---|---|
| Ingenieria de Sistemas | válido | 9 materias; el razonador advierte que en TC el prerrequisito DIS es redundante (ya lo exige EDD) |
| Plan con ciclo (invalido) | inválido | ciclo A → B → C → A (error en las tres) y D inalcanzable porque depende del ciclo |
| Plan con tope excedido (invalido) | inválido | materia de 12 créditos con tope de 10 y créditos insuficientes para el grado |

Los planes inválidos están en el modelo `planestudios.sandbox.invalidos`, marcado para no generarse
(MPS no genera modelos con errores).

## Avance del proyecto

| Parte | Responsable | Estado |
|---|---|---|
| `.gitignore` para MPS y Java | Miguel Ángel Cortés | ✅ hecho |
| Structure (PlanEstudios, Materia, RefPrerrequisito) | Daniel Mauricio Jiménez | ✅ hecho |
| Razonador en Java con pruebas (fuera de MPS) | Gabriel Felipe Ruiz | ✅ hecho |
| Reconstrucción del proyecto MPS para que se pueda abrir desde el repo | Gabriel Felipe Ruiz | ✅ hecho |
| Editor con proyección tabular | Gabriel Felipe Ruiz | ✅ hecho |
| Integración del razonador en MPS (Typesystem) | Gabriel Felipe Ruiz | ✅ hecho |
| Sandbox: 1 plan válido y 2 inválidos | Gabriel Felipe Ruiz | ✅ hecho |
| Sandbox: modelos válidos restantes | Daniel Mauricio Jiménez | pendiente |
| Constraints (scoping) y reglas de tipos | Andrés Felipe Camargo | pendiente |
| Modelos inválidos y tests `lang.test` de scoping y tipos | Andrés Felipe Camargo | pendiente |
| Generator / TextGen (reporte JSON) | Gabriel Felipe Ruiz | ✅ hecho |
| Tests `lang.test` del razonador (5 planes de prueba) | Gabriel Felipe Ruiz | ✅ hecho |
| PDF del Hito 1, tabla de teoría y guion del video | Miguel Ángel Cortés | pendiente |

### Aportes de Gabriel Felipe Ruiz (rol: Razonador y generador)

- **25-nov — Razonador en Java** (`razonador-java/`): modelo del plan como grafo; verificación de
  ciclos (Tarjan), materias inalcanzables (Kahn), prerrequisitos inexistentes, tope de créditos y
  créditos de grado; inferencia del cierre transitivo, prerrequisitos redundantes, semestres mínimos y
  ruta crítica; simulador semestre a semestre; reporte JSON. Pruebas automáticas sin dependencias.
- **25-nov — Reconstrucción del proyecto MPS:** se restauraron desde el historial de git los modelos
  del lenguaje que se habían borrado, se agregaron el descriptor del lenguaje (`.mpl`) y la carpeta
  `.mps/`, se quitó el código generado que se había subido y se corrigió `cretitosGrado → creditosGrado`.
- **25-nov — Editor:** proyección del plan con encabezado y tabla de materias × prerrequisitos;
  `PlanEstudios` y `Materia` pasan a implementar `INamedConcept` para poder elegir los prerrequisitos
  por código.
- **25-nov — Integración del razonador en MPS:** clase puente `VerificadorMPS`, solución
  `planestudios.razonador` con el jar, y la regla de Typesystem `check_PlanEstudios_razonador`.
  Verificado en MPS 2026.2: detecta el ciclo A → B → C → A, la materia D inalcanzable y el
  prerrequisito redundante de TC.
- **25-nov — Generador y pruebas:** TextGen que convierte cada plan válido en un reporte JSON con
  las deducciones del razonador; separación de la Sandbox en modelos válidos e inválidos; solución
  `planestudios.tests` con el caso `PruebasRazonador` (5 planes, 8 verificaciones de errores y
  advertencias).
