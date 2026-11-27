<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d5fe4803-edb4-4145-bec7-380716f7c6ca(planestudios.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="u6h8" ref="r:4a1f0499-890e-4e4d-93a6-51e20f7da37a(planestudios.structure)" />
    <import index="ko7k" ref="43f03e70-0bde-4d08-ac41-fb8b91c25994/java:razonador(planestudios.razonador/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1207055528241" name="jetbrains.mps.lang.typesystem.structure.WarningStatement" flags="nn" index="a7r0C">
        <child id="1207055552304" name="warningText" index="a7wSD" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="3937244445246642777" name="jetbrains.mps.lang.typesystem.structure.AbstractReportStatement" flags="ng" index="1urrMJ">
        <child id="3937244445246642781" name="nodeToReport" index="1urrMF" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
    </language>
  </registry>
  <node concept="18kY7G" id="3Kjqe9aeT1L">
    <property role="TrG5h" value="check_PlanEstudios_razonador" />
    <node concept="3clFbS" id="3Kjqe9aeT1K" role="18ibNy">
      <node concept="3cpWs8" id="3Kjqe9aeT0f" role="3cqZAp">
        <node concept="3cpWsn" id="3Kjqe9aeT02" role="3cpWs9">
          <property role="TrG5h" value="v" />
          <node concept="3uibUv" id="3Kjqe9aeT0c" role="1tU5fm">
            <ref role="3uigEE" to="ko7k:~VerificadorMPS" resolve="VerificadorMPS" />
          </node>
          <node concept="2ShNRf" id="3Kjqe9aeT0e" role="33vP2m">
            <node concept="1pGfFk" id="3Kjqe9aeT0d" role="2ShVmc">
              <ref role="37wK5l" to="ko7k:~VerificadorMPS.&lt;init&gt;(java.lang.String,int,int)" resolve="VerificadorMPS" />
              <node concept="2OqwBi" id="3Kjqe9aeT05" role="37wK5m">
                <node concept="1YBJjd" id="3Kjqe9aeT03" role="2Oq$k0">
                  <ref role="1YBMHb" node="3Kjqe9aeT01" resolve="plan" />
                </node>
                <node concept="3TrcHB" id="3Kjqe9aeT04" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="2OqwBi" id="3Kjqe9aeT08" role="37wK5m">
                <node concept="1YBJjd" id="3Kjqe9aeT06" role="2Oq$k0">
                  <ref role="1YBMHb" node="3Kjqe9aeT01" resolve="plan" />
                </node>
                <node concept="3TrcHB" id="3Kjqe9aeT07" role="2OqNvi">
                  <ref role="3TsBF5" to="u6h8:3Kjqe9adsgm" resolve="maxCreditosSemestre" />
                </node>
              </node>
              <node concept="2OqwBi" id="3Kjqe9aeT0b" role="37wK5m">
                <node concept="1YBJjd" id="3Kjqe9aeT09" role="2Oq$k0">
                  <ref role="1YBMHb" node="3Kjqe9aeT01" resolve="plan" />
                </node>
                <node concept="3TrcHB" id="3Kjqe9aeT0a" role="2OqNvi">
                  <ref role="3TsBF5" to="u6h8:3Kjqe9adsgr" resolve="creditosGrado" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2Gpval" id="3Kjqe9aeT0k" role="3cqZAp">
        <node concept="2OqwBi" id="3Kjqe9aeT0i" role="2GsD0m">
          <node concept="1YBJjd" id="3Kjqe9aeT0g" role="2Oq$k0">
            <ref role="1YBMHb" node="3Kjqe9aeT01" resolve="plan" />
          </node>
          <node concept="3Tsc0h" id="3Kjqe9aeT0h" role="2OqNvi">
            <ref role="3TtcxE" to="u6h8:3Kjqe9adsgC" resolve="materia" />
          </node>
        </node>
        <node concept="2GrKxI" id="3Kjqe9aeT0j" role="2Gsz3X">
          <property role="TrG5h" value="m" />
        </node>
        <node concept="3clFbS" id="3Kjqe9aeT0y" role="2LFqv$">
          <node concept="3clFbF" id="3Kjqe9aeT0x" role="3cqZAp">
            <node concept="2OqwBi" id="3Kjqe9aeT0w" role="3clFbG">
              <node concept="37vLTw" id="3Kjqe9aeT0l" role="2Oq$k0">
                <ref role="3cqZAo" node="3Kjqe9aeT02" resolve="v" />
              </node>
              <node concept="liA8E" id="3Kjqe9aeT0v" role="2OqNvi">
                <ref role="37wK5l" to="ko7k:~VerificadorMPS.materia(java.lang.String,java.lang.String,int)" resolve="materia" />
                <node concept="2OqwBi" id="3Kjqe9aeT0o" role="37wK5m">
                  <node concept="2GrUjf" id="3Kjqe9aeT0m" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="3Kjqe9aeT0j" resolve="m" />
                  </node>
                  <node concept="3TrcHB" id="3Kjqe9aeT0n" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3Kjqe9aeT0r" role="37wK5m">
                  <node concept="2GrUjf" id="3Kjqe9aeT0p" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="3Kjqe9aeT0j" resolve="m" />
                  </node>
                  <node concept="3TrcHB" id="3Kjqe9aeT0q" role="2OqNvi">
                    <ref role="3TsBF5" to="u6h8:3Kjqe9adsgx" resolve="nombre" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3Kjqe9aeT0u" role="37wK5m">
                  <node concept="2GrUjf" id="3Kjqe9aeT0s" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="3Kjqe9aeT0j" resolve="m" />
                  </node>
                  <node concept="3TrcHB" id="3Kjqe9aeT0t" role="2OqNvi">
                    <ref role="3TsBF5" to="u6h8:3Kjqe9adsgy" resolve="creditos" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2Gpval" id="3Kjqe9aeT0D" role="3cqZAp">
        <node concept="2OqwBi" id="3Kjqe9aeT0B" role="2GsD0m">
          <node concept="1YBJjd" id="3Kjqe9aeT0z" role="2Oq$k0">
            <ref role="1YBMHb" node="3Kjqe9aeT01" resolve="plan" />
          </node>
          <node concept="3Tsc0h" id="3Kjqe9aeT0A" role="2OqNvi">
            <ref role="3TtcxE" to="u6h8:3Kjqe9adsgC" resolve="materia" />
          </node>
        </node>
        <node concept="2GrKxI" id="3Kjqe9aeT0C" role="2Gsz3X">
          <property role="TrG5h" value="m" />
        </node>
        <node concept="3clFbS" id="3Kjqe9aeT13" role="2LFqv$">
          <node concept="2Gpval" id="3Kjqe9aeT0I" role="3cqZAp">
            <node concept="2OqwBi" id="3Kjqe9aeT0G" role="2GsD0m">
              <node concept="2GrUjf" id="3Kjqe9aeT0E" role="2Oq$k0">
                <ref role="2Gs0qQ" node="3Kjqe9aeT0C" resolve="m" />
              </node>
              <node concept="3Tsc0h" id="3Kjqe9aeT0F" role="2OqNvi">
                <ref role="3TtcxE" to="u6h8:3Kjqe9adsgE" resolve="prerrequisitos" />
              </node>
            </node>
            <node concept="2GrKxI" id="3Kjqe9aeT0H" role="2Gsz3X">
              <property role="TrG5h" value="r" />
            </node>
            <node concept="3clFbS" id="3Kjqe9aeT12" role="2LFqv$">
              <node concept="3clFbJ" id="3Kjqe9aeT11" role="3cqZAp">
                <node concept="2OqwBi" id="3Kjqe9aeT0N" role="3clFbw">
                  <node concept="2OqwBi" id="3Kjqe9aeT0L" role="2Oq$k0">
                    <node concept="2GrUjf" id="3Kjqe9aeT0J" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="3Kjqe9aeT0H" resolve="r" />
                    </node>
                    <node concept="3TrEf2" id="3Kjqe9aeT0K" role="2OqNvi">
                      <ref role="3Tt5mk" to="u6h8:3Kjqe9adsgJ" resolve="materia" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="3Kjqe9aeT0M" role="2OqNvi" />
                </node>
                <node concept="3clFbS" id="3Kjqe9aeT10" role="3clFbx">
                  <node concept="3clFbF" id="3Kjqe9aeT0Z" role="3cqZAp">
                    <node concept="2OqwBi" id="3Kjqe9aeT0Y" role="3clFbG">
                      <node concept="37vLTw" id="3Kjqe9aeT0O" role="2Oq$k0">
                        <ref role="3cqZAo" node="3Kjqe9aeT02" resolve="v" />
                      </node>
                      <node concept="liA8E" id="3Kjqe9aeT0X" role="2OqNvi">
                        <ref role="37wK5l" to="ko7k:~VerificadorMPS.prerrequisito(java.lang.String,java.lang.String)" resolve="prerrequisito" />
                        <node concept="2OqwBi" id="3Kjqe9aeT0R" role="37wK5m">
                          <node concept="2GrUjf" id="3Kjqe9aeT0P" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="3Kjqe9aeT0C" resolve="m" />
                          </node>
                          <node concept="3TrcHB" id="3Kjqe9aeT0Q" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="3Kjqe9aeT0W" role="37wK5m">
                          <node concept="2OqwBi" id="3Kjqe9aeT0U" role="2Oq$k0">
                            <node concept="2GrUjf" id="3Kjqe9aeT0S" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="3Kjqe9aeT0H" resolve="r" />
                            </node>
                            <node concept="3TrEf2" id="3Kjqe9aeT0T" role="2OqNvi">
                              <ref role="3Tt5mk" to="u6h8:3Kjqe9adsgJ" resolve="materia" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="3Kjqe9aeT0V" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2Gpval" id="3Kjqe9aeT18" role="3cqZAp">
        <node concept="2OqwBi" id="3Kjqe9aeT16" role="2GsD0m">
          <node concept="1YBJjd" id="3Kjqe9aeT14" role="2Oq$k0">
            <ref role="1YBMHb" node="3Kjqe9aeT01" resolve="plan" />
          </node>
          <node concept="3Tsc0h" id="3Kjqe9aeT15" role="2OqNvi">
            <ref role="3TtcxE" to="u6h8:3Kjqe9adsgC" resolve="materia" />
          </node>
        </node>
        <node concept="2GrKxI" id="3Kjqe9aeT17" role="2Gsz3X">
          <property role="TrG5h" value="m" />
        </node>
        <node concept="3clFbS" id="3Kjqe9aeT1z" role="2LFqv$">
          <node concept="1DcWWT" id="3Kjqe9aeT1h" role="3cqZAp">
            <node concept="2OqwBi" id="3Kjqe9aeT1e" role="1DdaDG">
              <node concept="37vLTw" id="3Kjqe9aeT19" role="2Oq$k0">
                <ref role="3cqZAo" node="3Kjqe9aeT02" resolve="v" />
              </node>
              <node concept="liA8E" id="3Kjqe9aeT1d" role="2OqNvi">
                <ref role="37wK5l" to="ko7k:~VerificadorMPS.errores(java.lang.String)" resolve="errores" />
                <node concept="2OqwBi" id="3Kjqe9aeT1c" role="37wK5m">
                  <node concept="2GrUjf" id="3Kjqe9aeT1a" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="3Kjqe9aeT17" resolve="m" />
                  </node>
                  <node concept="3TrcHB" id="3Kjqe9aeT1b" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="3Kjqe9aeT1g" role="1Duv9x">
              <property role="TrG5h" value="mensaje" />
              <node concept="17QB3L" id="3Kjqe9aeT1f" role="1tU5fm" />
            </node>
            <node concept="3clFbS" id="3Kjqe9aeT1l" role="2LFqv$">
              <node concept="2MkqsV" id="3Kjqe9aeT1k" role="3cqZAp">
                <node concept="37vLTw" id="3Kjqe9aeT1j" role="2MkJ7o">
                  <ref role="3cqZAo" node="3Kjqe9aeT1g" resolve="mensaje" />
                </node>
                <node concept="2GrUjf" id="3Kjqe9aeT1i" role="1urrMF">
                  <ref role="2Gs0qQ" node="3Kjqe9aeT17" resolve="m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1DcWWT" id="3Kjqe9aeT1u" role="3cqZAp">
            <node concept="2OqwBi" id="3Kjqe9aeT1r" role="1DdaDG">
              <node concept="37vLTw" id="3Kjqe9aeT1m" role="2Oq$k0">
                <ref role="3cqZAo" node="3Kjqe9aeT02" resolve="v" />
              </node>
              <node concept="liA8E" id="3Kjqe9aeT1q" role="2OqNvi">
                <ref role="37wK5l" to="ko7k:~VerificadorMPS.advertencias(java.lang.String)" resolve="advertencias" />
                <node concept="2OqwBi" id="3Kjqe9aeT1p" role="37wK5m">
                  <node concept="2GrUjf" id="3Kjqe9aeT1n" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="3Kjqe9aeT17" resolve="m" />
                  </node>
                  <node concept="3TrcHB" id="3Kjqe9aeT1o" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="3Kjqe9aeT1t" role="1Duv9x">
              <property role="TrG5h" value="aviso" />
              <node concept="17QB3L" id="3Kjqe9aeT1s" role="1tU5fm" />
            </node>
            <node concept="3clFbS" id="3Kjqe9aeT1y" role="2LFqv$">
              <node concept="a7r0C" id="3Kjqe9aeT1x" role="3cqZAp">
                <node concept="37vLTw" id="3Kjqe9aeT1w" role="a7wSD">
                  <ref role="3cqZAo" node="3Kjqe9aeT1t" resolve="aviso" />
                </node>
                <node concept="2GrUjf" id="3Kjqe9aeT1v" role="1urrMF">
                  <ref role="2Gs0qQ" node="3Kjqe9aeT17" resolve="m" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1DcWWT" id="3Kjqe9aeT1F" role="3cqZAp">
        <node concept="2OqwBi" id="3Kjqe9aeT1C" role="1DdaDG">
          <node concept="37vLTw" id="3Kjqe9aeT1A" role="2Oq$k0">
            <ref role="3cqZAo" node="3Kjqe9aeT02" resolve="v" />
          </node>
          <node concept="liA8E" id="3Kjqe9aeT1B" role="2OqNvi">
            <ref role="37wK5l" to="ko7k:~VerificadorMPS.erroresDelPlan()" resolve="erroresDelPlan" />
          </node>
        </node>
        <node concept="3cpWsn" id="3Kjqe9aeT1E" role="1Duv9x">
          <property role="TrG5h" value="mensaje" />
          <node concept="17QB3L" id="3Kjqe9aeT1D" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="3Kjqe9aeT1J" role="2LFqv$">
          <node concept="2MkqsV" id="3Kjqe9aeT1I" role="3cqZAp">
            <node concept="37vLTw" id="3Kjqe9aeT1H" role="2MkJ7o">
              <ref role="3cqZAo" node="3Kjqe9aeT1E" resolve="mensaje" />
            </node>
            <node concept="1YBJjd" id="3Kjqe9aeT1G" role="1urrMF">
              <ref role="1YBMHb" node="3Kjqe9aeT01" resolve="plan" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3Kjqe9aeT01" role="1YuTPh">
      <property role="TrG5h" value="plan" />
      <ref role="1YaFvo" to="u6h8:3Kjqe9adsfm" resolve="PlanEstudios" />
    </node>
  </node>
</model>

