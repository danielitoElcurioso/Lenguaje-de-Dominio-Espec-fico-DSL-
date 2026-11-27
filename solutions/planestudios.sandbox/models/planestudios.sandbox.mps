<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:da94d0a2-ad27-454c-93d8-4fcd6288ba19(planestudios.sandbox)">
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
  <node concept="1Q9EGO" id="3Kjqe9aeS0a">
    <property role="TrG5h" value="Ingenieria de Sistemas" />
    <property role="1Q9ENO" value="12" />
    <property role="1Q9ENT" value="30" />
    <node concept="1Q9ENJ" id="3Kjqe9aeS01" role="1Q9ENa">
      <property role="TrG5h" value="MAT1" />
      <property role="1Q9EN3" value="Calculo I" />
      <property role="1Q9EN0" value="4" />
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeS02" role="1Q9ENa">
      <property role="TrG5h" value="PRG1" />
      <property role="1Q9EN3" value="Programacion I" />
      <property role="1Q9EN0" value="4" />
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeS03" role="1Q9ENa">
      <property role="TrG5h" value="LOG" />
      <property role="1Q9EN3" value="Logica" />
      <property role="1Q9EN0" value="3" />
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeS04" role="1Q9ENa">
      <property role="TrG5h" value="MAT2" />
      <property role="1Q9EN3" value="Calculo II" />
      <property role="1Q9EN0" value="4" />
      <node concept="1Q9ENG" id="3Kjqe9aeS0b" role="1Q9EN8">
        <ref role="1Q9ENd" node="3Kjqe9aeS01" resolve="MAT1" />
      </node>
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeS05" role="1Q9ENa">
      <property role="TrG5h" value="PRG2" />
      <property role="1Q9EN3" value="Programacion II" />
      <property role="1Q9EN0" value="4" />
      <node concept="1Q9ENG" id="3Kjqe9aeS0c" role="1Q9EN8">
        <ref role="1Q9ENd" node="3Kjqe9aeS02" resolve="PRG1" />
      </node>
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeS06" role="1Q9ENa">
      <property role="TrG5h" value="DIS" />
      <property role="1Q9EN3" value="Matematicas Discretas" />
      <property role="1Q9EN0" value="3" />
      <node concept="1Q9ENG" id="3Kjqe9aeS0d" role="1Q9EN8">
        <ref role="1Q9ENd" node="3Kjqe9aeS03" resolve="LOG" />
      </node>
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeS07" role="1Q9ENa">
      <property role="TrG5h" value="EDD" />
      <property role="1Q9EN3" value="Estructuras de Datos" />
      <property role="1Q9EN0" value="4" />
      <node concept="1Q9ENG" id="3Kjqe9aeS0e" role="1Q9EN8">
        <ref role="1Q9ENd" node="3Kjqe9aeS05" resolve="PRG2" />
      </node>
      <node concept="1Q9ENG" id="3Kjqe9aeS0f" role="1Q9EN8">
        <ref role="1Q9ENd" node="3Kjqe9aeS06" resolve="DIS" />
      </node>
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeS08" role="1Q9ENa">
      <property role="TrG5h" value="TC" />
      <property role="1Q9EN3" value="Teoria de la Computacion" />
      <property role="1Q9EN0" value="3" />
      <node concept="1Q9ENG" id="3Kjqe9aeS0g" role="1Q9EN8">
        <ref role="1Q9ENd" node="3Kjqe9aeS06" resolve="DIS" />
      </node>
      <node concept="1Q9ENG" id="3Kjqe9aeS0h" role="1Q9EN8">
        <ref role="1Q9ENd" node="3Kjqe9aeS07" resolve="EDD" />
      </node>
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeS09" role="1Q9ENa">
      <property role="TrG5h" value="ALG" />
      <property role="1Q9EN3" value="Complejidad Algoritmica" />
      <property role="1Q9EN0" value="3" />
      <node concept="1Q9ENG" id="3Kjqe9aeS0i" role="1Q9EN8">
        <ref role="1Q9ENd" node="3Kjqe9aeS07" resolve="EDD" />
      </node>
      <node concept="1Q9ENG" id="3Kjqe9aeS0j" role="1Q9EN8">
        <ref role="1Q9ENd" node="3Kjqe9aeS04" resolve="MAT2" />
      </node>
    </node>
  </node>
</model>

