<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5eafa541-9f0d-4b27-8d02-927047baf238(planestudios.sandbox.TecnologiaSoftware)">
  <persistence version="9" />
  <languages>
    <use id="dbe5d7f8-a785-4fd5-9e2a-2639aa7cbf2a" name="planestudios" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="dbe5d7f8-a785-4fd5-9e2a-2639aa7cbf2a" name="planestudios">
      <concept id="4328918987950113750" name="planestudios.structure.PlanEstudios" flags="ng" index="1Q9EGO">
        <property id="4328918987950113814" name="maxCreditosSemestre" index="1Q9ENO" />
        <property id="4328918987950113819" name="creditosGrado" index="1Q9ENT" />
        <child id="4328918987950113832" name="materia" index="1Q9ENa" />
      </concept>
      <concept id="4328918987950113806" name="planestudios.structure.RefPrerrequisito" flags="ng" index="1Q9ENG" />
      <concept id="4328918987950113805" name="planestudios.structure.Materia" flags="ng" index="1Q9ENJ">
        <property id="4328918987950113826" name="creditos" index="1Q9EN0" />
        <property id="4328918987950113825" name="nombre" index="1Q9EN3" />
        <child id="4328918987950113834" name="prerrequisitos" index="1Q9EN8" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1Q9EGO" id="3Kjqe9aeSo3">
    <property role="TrG5h" value="Tecnologia de Software" />
    <property role="1Q9ENO" value="12" />
    <property role="1Q9ENT" value="18" />
    <node concept="1Q9ENJ" id="3Kjqe9aeSo4" role="1Q9ENa">
      <property role="TrG5h" value="PRG1" />
      <property role="1Q9EN3" value="Programación I" />
      <property role="1Q9EN0" value="4" />
      <node concept="1Q9ENG" id="3Kjqe9aeSo5" role="1Q9EN8" />
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeSo6" role="1Q9ENa">
      <property role="TrG5h" value="MAT1" />
      <property role="1Q9EN3" value="Matematicas Basicas" />
      <property role="1Q9EN0" value="3" />
      <node concept="1Q9ENG" id="3Kjqe9aeSo7" role="1Q9EN8" />
      <node concept="1Q9ENG" id="3Kjqe9aeSo8" role="1Q9EN8" />
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeSoa" role="1Q9ENa">
      <property role="TrG5h" value="PRG2" />
      <property role="1Q9EN3" value="Programación II" />
      <property role="1Q9EN0" value="4" />
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeSob" role="1Q9ENa">
      <property role="TrG5h" value="BD1" />
      <property role="1Q9EN3" value="Bases de Datos" />
      <property role="1Q9EN0" value="3" />
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeSoc" role="1Q9ENa">
      <property role="TrG5h" value="ING1" />
      <property role="1Q9EN3" value="Ingenieria de Software" />
      <property role="1Q9EN0" value="4" />
    </node>
  </node>
</model>

