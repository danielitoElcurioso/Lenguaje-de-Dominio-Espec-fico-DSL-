<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6b1d6c3e-2f0a-4d8b-9a51-3c7e5f2a9d10(planestudios.sandbox.invalidos)" doNotGenerate="true">
  <persistence version="9" />
  <languages>
    <use id="dbe5d7f8-a785-4fd5-9e2a-2639aa7cbf2a" name="planestudios" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="dbe5d7f8-a785-4fd5-9e2a-2639aa7cbf2a" name="planestudios">
      <concept id="4328918987950113750" name="planestudios.structure.PlanEstudios" flags="ng" index="pe01">
        <property id="4328918987950113814" name="maxCreditosSemestre" index="pe11" />
        <property id="4328918987950113819" name="creditosGrado" index="pe12" />
        <child id="4328918987950113832" name="materia" index="pe13" />
      </concept>
      <concept id="4328918987950113805" name="planestudios.structure.Materia" flags="ng" index="pe02">
        <property id="4328918987950113825" name="nombre" index="pe21" />
        <property id="4328918987950113826" name="creditos" index="pe22" />
        <child id="4328918987950113834" name="prerrequisitos" index="pe23" />
      </concept>
      <concept id="4328918987950113806" name="planestudios.structure.RefPrerrequisito" flags="ng" index="pe03">
        <reference id="4328918987950113839" name="materia" index="pe31" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="pe01" id="3Kjqe9aeI06">
    <property role="TrG5h" value="Plan con ciclo (invalido)" />
    <property role="pe11" value="12" />
    <property role="pe12" value="10" />
    <node concept="pe02" id="3Kjqe9aeI01" role="pe13">
      <property role="TrG5h" value="BAS" />
      <property role="pe21" value="Basica" />
      <property role="pe22" value="3" />
    </node>
    <node concept="pe02" id="3Kjqe9aeI02" role="pe13">
      <property role="TrG5h" value="A" />
      <property role="pe21" value="Materia A" />
      <property role="pe22" value="3" />
      <node concept="pe03" id="3Kjqe9aeI07" role="pe23">
        <ref role="pe31" node="3Kjqe9aeI04" resolve="C" />
      </node>
      <node concept="pe03" id="3Kjqe9aeI08" role="pe23">
        <ref role="pe31" node="3Kjqe9aeI01" resolve="BAS" />
      </node>
    </node>
    <node concept="pe02" id="3Kjqe9aeI03" role="pe13">
      <property role="TrG5h" value="B" />
      <property role="pe21" value="Materia B" />
      <property role="pe22" value="3" />
      <node concept="pe03" id="3Kjqe9aeI09" role="pe23">
        <ref role="pe31" node="3Kjqe9aeI02" resolve="A" />
      </node>
    </node>
    <node concept="pe02" id="3Kjqe9aeI04" role="pe13">
      <property role="TrG5h" value="C" />
      <property role="pe21" value="Materia C" />
      <property role="pe22" value="3" />
      <node concept="pe03" id="3Kjqe9aeI0a" role="pe23">
        <ref role="pe31" node="3Kjqe9aeI03" resolve="B" />
      </node>
    </node>
    <node concept="pe02" id="3Kjqe9aeI05" role="pe13">
      <property role="TrG5h" value="D" />
      <property role="pe21" value="Materia D" />
      <property role="pe22" value="3" />
      <node concept="pe03" id="3Kjqe9aeI0b" role="pe23">
        <ref role="pe31" node="3Kjqe9aeI04" resolve="C" />
      </node>
    </node>
  </node>
  <node concept="pe01" id="3Kjqe9aeI0e">
    <property role="TrG5h" value="Plan con tope excedido (invalido)" />
    <property role="pe11" value="10" />
    <property role="pe12" value="40" />
    <node concept="pe02" id="3Kjqe9aeI0c" role="pe13">
      <property role="TrG5h" value="X1" />
      <property role="pe21" value="Introduccion" />
      <property role="pe22" value="3" />
    </node>
    <node concept="pe02" id="3Kjqe9aeI0d" role="pe13">
      <property role="TrG5h" value="PG" />
      <property role="pe21" value="Proyecto de Grado" />
      <property role="pe22" value="12" />
      <node concept="pe03" id="3Kjqe9aeI0f" role="pe23">
        <ref role="pe31" node="3Kjqe9aeI0c" resolve="X1" />
      </node>
    </node>
  </node>
</model>
