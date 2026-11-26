<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4a1f0499-890e-4e4d-93a6-51e20f7da37a(planesEstudios.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="3Kjqe9adsfm">
    <property role="EcuMT" value="4328918987950113750" />
    <property role="TrG5h" value="PlanEstudios" />
    <property role="R4oN_" value="Concepto que representa el plan de estudios." />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3Kjqe9adsgl" role="1TKVEl">
      <property role="IQ2nx" value="4328918987950113813" />
      <property role="TrG5h" value="nombre" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3Kjqe9adsgm" role="1TKVEl">
      <property role="IQ2nx" value="4328918987950113814" />
      <property role="TrG5h" value="maxCreditosSemestre" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="3Kjqe9adsgr" role="1TKVEl">
      <property role="IQ2nx" value="4328918987950113819" />
      <property role="TrG5h" value="cretitosGrado" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyj" id="3Kjqe9adsgC" role="1TKVEi">
      <property role="IQ2ns" value="4328918987950113832" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="materia" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3Kjqe9adsgd" resolve="Materia" />
    </node>
  </node>
  <node concept="1TIwiD" id="3Kjqe9adsgd">
    <property role="EcuMT" value="4328918987950113805" />
    <property role="TrG5h" value="Materia" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="3Kjqe9adsgv" role="1TKVEl">
      <property role="IQ2nx" value="4328918987950113823" />
      <property role="TrG5h" value="codigo" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3Kjqe9adsgx" role="1TKVEl">
      <property role="IQ2nx" value="4328918987950113825" />
      <property role="TrG5h" value="nombre" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="3Kjqe9adsgy" role="1TKVEl">
      <property role="IQ2nx" value="4328918987950113826" />
      <property role="TrG5h" value="creditos" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyj" id="3Kjqe9adsgE" role="1TKVEi">
      <property role="IQ2ns" value="4328918987950113834" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="prerrequisitos" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="3Kjqe9adsge" resolve="RefPrerrequisito" />
    </node>
  </node>
  <node concept="1TIwiD" id="3Kjqe9adsge">
    <property role="EcuMT" value="4328918987950113806" />
    <property role="TrG5h" value="RefPrerrequisito" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="3Kjqe9adsgJ" role="1TKVEi">
      <property role="IQ2ns" value="4328918987950113839" />
      <property role="20kJfa" value="materia" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="3Kjqe9adsgd" resolve="Materia" />
    </node>
  </node>
</model>

