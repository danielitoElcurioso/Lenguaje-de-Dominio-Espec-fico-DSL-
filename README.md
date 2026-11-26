# Lenguaje-de-Dominio-Espec-fico-DSL-
El reto central: El proyecto no consiste únicamente en crear una sintaxis agradable, sino en dotar al lenguaje de un razonador: un mecanismo capaz de analizar los modelos escritos por un usuario, verificar propiedades formales, detectar inconsistencias o deducir nueva información de forma automática.

## Estructura del repositorio

```
.mps/                          proyecto de MPS (abrir esta carpeta raíz con File → Open)
languages/planestudios/        el lenguaje: structure, editor, constraints, typesystem, behavior
solutions/planestudios.sandbox/ modelos de prueba (Sandbox)
razonador-java/                razonador probado fuera de MPS (34 pruebas)
```

Para trabajar: `git pull`, abrir la carpeta raíz en MPS, **Build → Rebuild Project** y, al terminar,
`git add . && git commit -m "..." && git push`. No subir archivos por la web de GitHub ni la carpeta
`source_gen` / `classes_gen` (el `.gitignore` ya las excluye).
