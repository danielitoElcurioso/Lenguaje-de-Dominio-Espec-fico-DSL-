<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:023dc56e-aa02-46c3-9b9a-8f21d99a5db1(planestudios.sandbox.CienciasComputacion)">
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
  <node concept="1Q9EGO" id="3Kjqe9aeSod">
    <property role="TrG5h" value="Ciencias de la Computación" />
    <property role="1Q9ENO" value="10" />
    <property role="1Q9ENT" value="40" />
    <node concept="1Q9ENJ" id="3Kjqe9aeSoe" role="1Q9ENa">
      <property role="TrG5h" value="MAT1" />
      <property role="1Q9EN3" value="Calculo I" />
      <property role="1Q9EN0" value="4" />
      <node concept="1Q9ENG" id="3Kjqe9aeSof" role="1Q9EN8" />
      <node concept="1Q9ENG" id="3Kjqe9aeSog" role="1Q9EN8" />
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeSoh" role="1Q9ENa">
      <property role="TrG5h" value="ALG" />
      <property role="1Q9EN3" value="Algebra Lineal" />
      <property role="1Q9EN0" value="3" />
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeSoi" role="1Q9ENa">
      <property role="TrG5h" value="PRG1" />
      <property role="1Q9EN3" value="Programación I" />
      <property role="1Q9EN0" value="4" />
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeSoj" role="1Q9ENa">
      <property role="TrG5h" value="MAT2" />
      <property role="1Q9EN3" value="Calculo II" />
      <property role="1Q9EN0" value="4" />
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeSok" role="1Q9ENa">
      <property role="TrG5h" value="MD" />
      <property role="1Q9EN3" value="Matematicas Discretas" />
      <property role="1Q9EN0" value="3" />
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeSol" role="1Q9ENa">
      <property role="TrG5h" value="EDD" />
      <property role="1Q9EN3" value="Estructuras de Datos" />
      <property role="1Q9EN0" value="4" />
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeSom" role="1Q9ENa">
      <property role="TrG5h" value="PROB" />
      <property role="1Q9EN3" value="Probabilidad" />
      <property role="1Q9EN0" value="3" />
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeSon" role="1Q9ENa">
      <property role="TrG5h" value="SO" />
      <property role="1Q9EN3" value="Sistemas Operativos" />
      <property role="1Q9EN0" value="4" />
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeSoo" role="1Q9ENa">
      <property role="TrG5h" value="ALGO" />
      <property role="1Q9EN3" value="Analisis de ALgoritmos" />
      <property role="1Q9EN0" value="4" />
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeSop" role="1Q9ENa">
      <property role="TrG5h" value="RED" />
      <property role="1Q9EN3" value="Redes" />
      <property role="1Q9EN0" value="3" />
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeSoq" role="1Q9ENa">
      <property role="TrG5h" value="TC" />
      <property role="1Q9EN3" value="Teoria de la Computación" />
      <property role="1Q9EN0" value="4" />
    </node>
    <node concept="1Q9ENJ" id="3Kjqe9aeSor" role="1Q9ENa">
      <property role="TrG5h" value="IA" />
      <property role="1Q9EN3" value="Inteligencia Artificial" />
      <property role="1Q9EN0" value="4" />
    </node>
  </node>
</model>

