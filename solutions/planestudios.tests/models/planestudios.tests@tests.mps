<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9c2e4a71-5d3b-4f86-b0e2-7a1d8c6f4e59(planestudios.tests@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="6" />
    <use id="dbe5d7f8-a785-4fd5-9e2a-2639aa7cbf2a" name="planestudios" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="1215507671101" name="jetbrains.mps.lang.test.structure.NodeErrorCheckOperation" flags="ng" index="1TM$A" />
      <concept id="1215511704609" name="jetbrains.mps.lang.test.structure.NodeWarningCheckOperation" flags="ng" index="wnCk" />
      <concept id="1215603922101" name="jetbrains.mps.lang.test.structure.NodeOperationsContainer" flags="ng" index="7CXmI">
        <child id="1215604436604" name="nodeOperations" index="7EUXB" />
      </concept>
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <property id="2616911529524314943" name="accessMode" index="3DII0k" />
        <child id="1217501822150" name="nodesToCheck" index="1SKRRt" />
      </concept>
      <concept id="1216989428737" name="jetbrains.mps.lang.test.structure.TestNode" flags="ng" index="1qefOq">
        <child id="1216989461394" name="nodeToCheck" index="1qenE9" />
      </concept>
    </language>
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1lH9Xt" id="3Kjqe9aeU01">
    <property role="3DII0k" value="2hh8MJdVwqX/command" />
    <property role="TrG5h" value="PruebasRazonador" />
    <node concept="1qefOq" id="3Kjqe9aeU04" role="1SKRRt">
      <node concept="pe01" id="3Kjqe9aeU05" role="1qenE9">
        <property role="TrG5h" value="Plan minimo valido" />
        <property role="pe11" value="12" />
        <property role="pe12" value="8" />
        <node concept="pe02" id="3Kjqe9aeU02" role="pe13">
          <property role="TrG5h" value="MAT1" />
          <property role="pe21" value="Calculo I" />
          <property role="pe22" value="4" />
        </node>
        <node concept="pe02" id="3Kjqe9aeU03" role="pe13">
          <property role="TrG5h" value="MAT2" />
          <property role="pe21" value="Calculo II" />
          <property role="pe22" value="4" />
          <node concept="pe03" id="3Kjqe9aeU06" role="pe23">
            <ref role="pe31" node="3Kjqe9aeU02" resolve="MAT1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="3Kjqe9aeU0g" role="1SKRRt">
      <node concept="pe01" id="3Kjqe9aeU0h" role="1qenE9">
        <property role="TrG5h" value="Ingenieria de Sistemas" />
        <property role="pe11" value="12" />
        <property role="pe12" value="30" />
        <node concept="pe02" id="3Kjqe9aeU07" role="pe13">
          <property role="TrG5h" value="MAT1" />
          <property role="pe21" value="Calculo I" />
          <property role="pe22" value="4" />
        </node>
        <node concept="pe02" id="3Kjqe9aeU08" role="pe13">
          <property role="TrG5h" value="PRG1" />
          <property role="pe21" value="Programacion I" />
          <property role="pe22" value="4" />
        </node>
        <node concept="pe02" id="3Kjqe9aeU09" role="pe13">
          <property role="TrG5h" value="LOG" />
          <property role="pe21" value="Logica" />
          <property role="pe22" value="3" />
        </node>
        <node concept="pe02" id="3Kjqe9aeU0a" role="pe13">
          <property role="TrG5h" value="MAT2" />
          <property role="pe21" value="Calculo II" />
          <property role="pe22" value="4" />
          <node concept="pe03" id="3Kjqe9aeU0i" role="pe23">
            <ref role="pe31" node="3Kjqe9aeU07" resolve="MAT1" />
          </node>
        </node>
        <node concept="pe02" id="3Kjqe9aeU0b" role="pe13">
          <property role="TrG5h" value="PRG2" />
          <property role="pe21" value="Programacion II" />
          <property role="pe22" value="4" />
          <node concept="pe03" id="3Kjqe9aeU0j" role="pe23">
            <ref role="pe31" node="3Kjqe9aeU08" resolve="PRG1" />
          </node>
        </node>
        <node concept="pe02" id="3Kjqe9aeU0c" role="pe13">
          <property role="TrG5h" value="DIS" />
          <property role="pe21" value="Matematicas Discretas" />
          <property role="pe22" value="3" />
          <node concept="pe03" id="3Kjqe9aeU0k" role="pe23">
            <ref role="pe31" node="3Kjqe9aeU09" resolve="LOG" />
          </node>
        </node>
        <node concept="pe02" id="3Kjqe9aeU0d" role="pe13">
          <property role="TrG5h" value="EDD" />
          <property role="pe21" value="Estructuras de Datos" />
          <property role="pe22" value="4" />
          <node concept="pe03" id="3Kjqe9aeU0l" role="pe23">
            <ref role="pe31" node="3Kjqe9aeU0b" resolve="PRG2" />
          </node>
          <node concept="pe03" id="3Kjqe9aeU0m" role="pe23">
            <ref role="pe31" node="3Kjqe9aeU0c" resolve="DIS" />
          </node>
        </node>
        <node concept="pe02" id="3Kjqe9aeU0e" role="pe13">
          <property role="TrG5h" value="TC" />
          <property role="pe21" value="Teoria de la Computacion" />
          <property role="pe22" value="3" />
          <node concept="pe03" id="3Kjqe9aeU0n" role="pe23">
            <ref role="pe31" node="3Kjqe9aeU0c" resolve="DIS" />
          </node>
          <node concept="pe03" id="3Kjqe9aeU0o" role="pe23">
            <ref role="pe31" node="3Kjqe9aeU0d" resolve="EDD" />
          </node>
          <node concept="7CXmI" id="3Kjqe9aeU0p" role="lGtFl">
            <node concept="wnCk" id="3Kjqe9aeU0q" role="7EUXB" />
          </node>
        </node>
        <node concept="pe02" id="3Kjqe9aeU0f" role="pe13">
          <property role="TrG5h" value="ALG" />
          <property role="pe21" value="Complejidad Algoritmica" />
          <property role="pe22" value="3" />
          <node concept="pe03" id="3Kjqe9aeU0r" role="pe23">
            <ref role="pe31" node="3Kjqe9aeU0d" resolve="EDD" />
          </node>
          <node concept="pe03" id="3Kjqe9aeU0s" role="pe23">
            <ref role="pe31" node="3Kjqe9aeU0a" resolve="MAT2" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="3Kjqe9aeU0y" role="1SKRRt">
      <node concept="pe01" id="3Kjqe9aeU0z" role="1qenE9">
        <property role="TrG5h" value="Plan con ciclo" />
        <property role="pe11" value="12" />
        <property role="pe12" value="10" />
        <node concept="pe02" id="3Kjqe9aeU0t" role="pe13">
          <property role="TrG5h" value="BAS" />
          <property role="pe21" value="Basica" />
          <property role="pe22" value="3" />
        </node>
        <node concept="pe02" id="3Kjqe9aeU0u" role="pe13">
          <property role="TrG5h" value="A" />
          <property role="pe21" value="Materia A" />
          <property role="pe22" value="3" />
          <node concept="pe03" id="3Kjqe9aeU0A" role="pe23">
            <ref role="pe31" node="3Kjqe9aeU0w" resolve="C" />
          </node>
          <node concept="pe03" id="3Kjqe9aeU0B" role="pe23">
            <ref role="pe31" node="3Kjqe9aeU0t" resolve="BAS" />
          </node>
          <node concept="7CXmI" id="3Kjqe9aeU0C" role="lGtFl">
            <node concept="1TM$A" id="3Kjqe9aeU0D" role="7EUXB" />
          </node>
        </node>
        <node concept="pe02" id="3Kjqe9aeU0v" role="pe13">
          <property role="TrG5h" value="B" />
          <property role="pe21" value="Materia B" />
          <property role="pe22" value="3" />
          <node concept="pe03" id="3Kjqe9aeU0E" role="pe23">
            <ref role="pe31" node="3Kjqe9aeU0u" resolve="A" />
          </node>
          <node concept="7CXmI" id="3Kjqe9aeU0F" role="lGtFl">
            <node concept="1TM$A" id="3Kjqe9aeU0G" role="7EUXB" />
          </node>
        </node>
        <node concept="pe02" id="3Kjqe9aeU0w" role="pe13">
          <property role="TrG5h" value="C" />
          <property role="pe21" value="Materia C" />
          <property role="pe22" value="3" />
          <node concept="pe03" id="3Kjqe9aeU0H" role="pe23">
            <ref role="pe31" node="3Kjqe9aeU0v" resolve="B" />
          </node>
          <node concept="7CXmI" id="3Kjqe9aeU0I" role="lGtFl">
            <node concept="1TM$A" id="3Kjqe9aeU0J" role="7EUXB" />
          </node>
        </node>
        <node concept="pe02" id="3Kjqe9aeU0x" role="pe13">
          <property role="TrG5h" value="D" />
          <property role="pe21" value="Materia D" />
          <property role="pe22" value="3" />
          <node concept="pe03" id="3Kjqe9aeU0K" role="pe23">
            <ref role="pe31" node="3Kjqe9aeU0w" resolve="C" />
          </node>
          <node concept="7CXmI" id="3Kjqe9aeU0L" role="lGtFl">
            <node concept="1TM$A" id="3Kjqe9aeU0M" role="7EUXB" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="3Kjqe9aeU0O" role="1SKRRt">
      <node concept="pe01" id="3Kjqe9aeU0P" role="1qenE9">
        <property role="TrG5h" value="Plan con auto-prerrequisito" />
        <property role="pe11" value="12" />
        <property role="pe12" value="3" />
        <node concept="pe02" id="3Kjqe9aeU0N" role="pe13">
          <property role="TrG5h" value="X" />
          <property role="pe21" value="Se exige a si misma" />
          <property role="pe22" value="3" />
          <node concept="pe03" id="3Kjqe9aeU0Q" role="pe23">
            <ref role="pe31" node="3Kjqe9aeU0N" resolve="X" />
          </node>
          <node concept="7CXmI" id="3Kjqe9aeU0R" role="lGtFl">
            <node concept="1TM$A" id="3Kjqe9aeU0S" role="7EUXB" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1qefOq" id="3Kjqe9aeU0V" role="1SKRRt">
      <node concept="pe01" id="3Kjqe9aeU0W" role="1qenE9">
        <property role="TrG5h" value="Plan con tope excedido" />
        <property role="pe11" value="10" />
        <property role="pe12" value="40" />
        <node concept="pe02" id="3Kjqe9aeU0T" role="pe13">
          <property role="TrG5h" value="X1" />
          <property role="pe21" value="Introduccion" />
          <property role="pe22" value="3" />
        </node>
        <node concept="pe02" id="3Kjqe9aeU0U" role="pe13">
          <property role="TrG5h" value="PG" />
          <property role="pe21" value="Proyecto de Grado" />
          <property role="pe22" value="12" />
          <node concept="pe03" id="3Kjqe9aeU0X" role="pe23">
            <ref role="pe31" node="3Kjqe9aeU0T" resolve="X1" />
          </node>
          <node concept="7CXmI" id="3Kjqe9aeU0Y" role="lGtFl">
            <node concept="1TM$A" id="3Kjqe9aeU0Z" role="7EUXB" />
          </node>
        </node>
        <node concept="7CXmI" id="3Kjqe9aeU10" role="lGtFl">
          <node concept="1TM$A" id="3Kjqe9aeU11" role="7EUXB" />
        </node>
      </node>
    </node>
  </node>
</model>
