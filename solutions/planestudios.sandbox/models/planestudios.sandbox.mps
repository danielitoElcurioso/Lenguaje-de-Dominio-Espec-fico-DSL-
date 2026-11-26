<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:da94d0a2-ad27-454c-93d8-4fcd6288ba19(planestudios.sandbox)">
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
  <node concept="pe01" id="3Kjqe9aeS0a">
    <property role="TrG5h" value="Ingenieria de Sistemas" />
    <property role="pe11" value="12" />
    <property role="pe12" value="30" />
    <node concept="pe02" id="3Kjqe9aeS01" role="pe13">
      <property role="TrG5h" value="MAT1" />
      <property role="pe21" value="Calculo I" />
      <property role="pe22" value="4" />
    </node>
    <node concept="pe02" id="3Kjqe9aeS02" role="pe13">
      <property role="TrG5h" value="PRG1" />
      <property role="pe21" value="Programacion I" />
      <property role="pe22" value="4" />
    </node>
    <node concept="pe02" id="3Kjqe9aeS03" role="pe13">
      <property role="TrG5h" value="LOG" />
      <property role="pe21" value="Logica" />
      <property role="pe22" value="3" />
    </node>
    <node concept="pe02" id="3Kjqe9aeS04" role="pe13">
      <property role="TrG5h" value="MAT2" />
      <property role="pe21" value="Calculo II" />
      <property role="pe22" value="4" />
      <node concept="pe03" id="3Kjqe9aeS0b" role="pe23">
        <ref role="pe31" node="3Kjqe9aeS01" resolve="MAT1" />
      </node>
    </node>
    <node concept="pe02" id="3Kjqe9aeS05" role="pe13">
      <property role="TrG5h" value="PRG2" />
      <property role="pe21" value="Programacion II" />
      <property role="pe22" value="4" />
      <node concept="pe03" id="3Kjqe9aeS0c" role="pe23">
        <ref role="pe31" node="3Kjqe9aeS02" resolve="PRG1" />
      </node>
    </node>
    <node concept="pe02" id="3Kjqe9aeS06" role="pe13">
      <property role="TrG5h" value="DIS" />
      <property role="pe21" value="Matematicas Discretas" />
      <property role="pe22" value="3" />
      <node concept="pe03" id="3Kjqe9aeS0d" role="pe23">
        <ref role="pe31" node="3Kjqe9aeS03" resolve="LOG" />
      </node>
    </node>
    <node concept="pe02" id="3Kjqe9aeS07" role="pe13">
      <property role="TrG5h" value="EDD" />
      <property role="pe21" value="Estructuras de Datos" />
      <property role="pe22" value="4" />
      <node concept="pe03" id="3Kjqe9aeS0e" role="pe23">
        <ref role="pe31" node="3Kjqe9aeS05" resolve="PRG2" />
      </node>
      <node concept="pe03" id="3Kjqe9aeS0f" role="pe23">
        <ref role="pe31" node="3Kjqe9aeS06" resolve="DIS" />
      </node>
    </node>
    <node concept="pe02" id="3Kjqe9aeS08" role="pe13">
      <property role="TrG5h" value="TC" />
      <property role="pe21" value="Teoria de la Computacion" />
      <property role="pe22" value="3" />
      <node concept="pe03" id="3Kjqe9aeS0g" role="pe23">
        <ref role="pe31" node="3Kjqe9aeS06" resolve="DIS" />
      </node>
      <node concept="pe03" id="3Kjqe9aeS0h" role="pe23">
        <ref role="pe31" node="3Kjqe9aeS07" resolve="EDD" />
      </node>
    </node>
    <node concept="pe02" id="3Kjqe9aeS09" role="pe13">
      <property role="TrG5h" value="ALG" />
      <property role="pe21" value="Complejidad Algoritmica" />
      <property role="pe22" value="3" />
      <node concept="pe03" id="3Kjqe9aeS0i" role="pe23">
        <ref role="pe31" node="3Kjqe9aeS07" resolve="EDD" />
      </node>
      <node concept="pe03" id="3Kjqe9aeS0j" role="pe23">
        <ref role="pe31" node="3Kjqe9aeS04" resolve="MAT2" />
      </node>
    </node>
  </node>
</model>
