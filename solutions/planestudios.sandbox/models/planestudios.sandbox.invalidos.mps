<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6b1d6c3e-2f0a-4d8b-9a51-3c7e5f2a9d10(planestudios.sandbox.invalidos)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="true" />
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
      <concept id="4328918987950113806" name="planestudios.structure.RefPrerrequisito" flags="ng" index="1Q9ENG">
        <reference id="4328918987950113839" name="materia" index="1Q9ENd" />
      </concept>
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
  <node concept="1Q9EGO" id="3Kjqe9aeI06">
    <property role="TrG5h" value="Plan con ciclo (invalido)" />
    <property role="1Q9ENO" value="12" />
    <property role="1Q9ENT" value="10" />
    <node concept="1Q9ENJ" id="3Kjqe9aeI01" role="1Q9ENa">
      <property role="TrG5h" value="BAS" />
      <property role="1Q9EN3" value="Basica" />
      <property role="1Q9EN0" value="3" />
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeI02" role="1Q9ENa">
      <property role="TrG5h" value="A" />
      <property role="1Q9EN3" value="Materia A" />
      <property role="1Q9EN0" value="3" />
      <node concept="1Q9ENG" id="3Kjqe9aeI07" role="1Q9EN8">
        <ref role="1Q9ENd" node="3Kjqe9aeI04" resolve="C" />
      </node>
      <node concept="1Q9ENG" id="3Kjqe9aeI08" role="1Q9EN8">
        <ref role="1Q9ENd" node="3Kjqe9aeI01" resolve="BAS" />
      </node>
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeI03" role="1Q9ENa">
      <property role="TrG5h" value="B" />
      <property role="1Q9EN3" value="Materia B" />
      <property role="1Q9EN0" value="3" />
      <node concept="1Q9ENG" id="3Kjqe9aeI09" role="1Q9EN8">
        <ref role="1Q9ENd" node="3Kjqe9aeI02" resolve="A" />
      </node>
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeI04" role="1Q9ENa">
      <property role="TrG5h" value="C" />
      <property role="1Q9EN3" value="Materia C" />
      <property role="1Q9EN0" value="3" />
      <node concept="1Q9ENG" id="3Kjqe9aeI0a" role="1Q9EN8">
        <ref role="1Q9ENd" node="3Kjqe9aeI03" resolve="B" />
      </node>
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeI05" role="1Q9ENa">
      <property role="TrG5h" value="D" />
      <property role="1Q9EN3" value="Materia D" />
      <property role="1Q9EN0" value="3" />
      <node concept="1Q9ENG" id="3Kjqe9aeI0b" role="1Q9EN8">
        <ref role="1Q9ENd" node="3Kjqe9aeI04" resolve="C" />
      </node>
    </node>
  </node>
  <node concept="1Q9EGO" id="3Kjqe9aeI0e">
    <property role="TrG5h" value="Plan con tope excedido (invalido)" />
    <property role="1Q9ENO" value="10" />
    <property role="1Q9ENT" value="40" />
    <node concept="1Q9ENJ" id="3Kjqe9aeI0c" role="1Q9ENa">
      <property role="TrG5h" value="X1" />
      <property role="1Q9EN3" value="Introduccion" />
      <property role="1Q9EN0" value="3" />
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeI0d" role="1Q9ENa">
      <property role="TrG5h" value="PG" />
      <property role="1Q9EN3" value="Proyecto de Grado" />
      <property role="1Q9EN0" value="12" />
      <node concept="1Q9ENG" id="3Kjqe9aeI0f" role="1Q9EN8">
        <ref role="1Q9ENd" node="3Kjqe9aeI0c" resolve="X1" />
      </node>
    </node>
  </node>
</model>

