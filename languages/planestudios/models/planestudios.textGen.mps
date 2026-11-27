<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fb540d97-827d-4843-b137-2737468fb672(planestudios.textGen)">
  <persistence version="9" />
  <languages>
    <devkit ref="fa73d85a-ac7f-447b-846c-fcdc41caa600(jetbrains.mps.devkit.aspect.textgen)" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
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
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="8931911391946696733" name="jetbrains.mps.lang.textGen.structure.ExtensionDeclaration" flags="in" index="9MYSb" />
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="1233670071145" name="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration" flags="ig" index="WtQ9Q">
        <reference id="1233670257997" name="conceptDeclaration" index="WuzLi" />
        <child id="1233749296504" name="textGenBlock" index="11c4hB" />
        <child id="7991274449437422201" name="extension" index="33IsuW" />
      </concept>
      <concept id="1233748055915" name="jetbrains.mps.lang.textGen.structure.NodeParameter" flags="nn" index="117lpO" />
      <concept id="1233749247888" name="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration" flags="in" index="11bSqf" />
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
  <node concept="WtQ9Q" id="3Kjqe9aeX1e">
    <ref role="WuzLi" to="u6h8:3Kjqe9adsfm" resolve="PlanEstudios" />
    <node concept="9MYSb" id="3Kjqe9aeX1b" role="33IsuW">
      <node concept="3clFbS" id="3Kjqe9aeX1a" role="2VODD2">
        <node concept="3clFbF" id="3Kjqe9aeX19" role="3cqZAp">
          <node concept="Xl_RD" id="3Kjqe9aeX18" role="3clFbG">
            <property role="Xl_RC" value="json" />
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="3Kjqe9aeX1d" role="11c4hB">
      <node concept="3clFbS" id="3Kjqe9aeX1c" role="2VODD2">
        <node concept="3cpWs8" id="3Kjqe9aeX0e" role="3cqZAp">
          <node concept="3cpWsn" id="3Kjqe9aeX01" role="3cpWs9">
            <property role="TrG5h" value="v" />
            <node concept="3uibUv" id="3Kjqe9aeX0b" role="1tU5fm">
              <ref role="3uigEE" to="ko7k:~VerificadorMPS" resolve="VerificadorMPS" />
            </node>
            <node concept="2ShNRf" id="3Kjqe9aeX0d" role="33vP2m">
              <node concept="1pGfFk" id="3Kjqe9aeX0c" role="2ShVmc">
                <ref role="37wK5l" to="ko7k:~VerificadorMPS.&lt;init&gt;(java.lang.String,int,int)" resolve="VerificadorMPS" />
                <node concept="2OqwBi" id="3Kjqe9aeX04" role="37wK5m">
                  <node concept="117lpO" id="3Kjqe9aeX02" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3Kjqe9aeX03" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3Kjqe9aeX07" role="37wK5m">
                  <node concept="117lpO" id="3Kjqe9aeX05" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3Kjqe9aeX06" role="2OqNvi">
                    <ref role="3TsBF5" to="u6h8:3Kjqe9adsgm" resolve="maxCreditosSemestre" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3Kjqe9aeX0a" role="37wK5m">
                  <node concept="117lpO" id="3Kjqe9aeX08" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3Kjqe9aeX09" role="2OqNvi">
                    <ref role="3TsBF5" to="u6h8:3Kjqe9adsgr" resolve="creditosGrado" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="3Kjqe9aeX0j" role="3cqZAp">
          <node concept="2OqwBi" id="3Kjqe9aeX0h" role="2GsD0m">
            <node concept="117lpO" id="3Kjqe9aeX0f" role="2Oq$k0" />
            <node concept="3Tsc0h" id="3Kjqe9aeX0g" role="2OqNvi">
              <ref role="3TtcxE" to="u6h8:3Kjqe9adsgC" resolve="materia" />
            </node>
          </node>
          <node concept="2GrKxI" id="3Kjqe9aeX0i" role="2Gsz3X">
            <property role="TrG5h" value="m" />
          </node>
          <node concept="3clFbS" id="3Kjqe9aeX0x" role="2LFqv$">
            <node concept="3clFbF" id="3Kjqe9aeX0w" role="3cqZAp">
              <node concept="2OqwBi" id="3Kjqe9aeX0v" role="3clFbG">
                <node concept="37vLTw" id="3Kjqe9aeX0k" role="2Oq$k0">
                  <ref role="3cqZAo" node="3Kjqe9aeX01" resolve="v" />
                </node>
                <node concept="liA8E" id="3Kjqe9aeX0u" role="2OqNvi">
                  <ref role="37wK5l" to="ko7k:~VerificadorMPS.materia(java.lang.String,java.lang.String,int)" resolve="materia" />
                  <node concept="2OqwBi" id="3Kjqe9aeX0n" role="37wK5m">
                    <node concept="2GrUjf" id="3Kjqe9aeX0l" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="3Kjqe9aeX0i" resolve="m" />
                    </node>
                    <node concept="3TrcHB" id="3Kjqe9aeX0m" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3Kjqe9aeX0q" role="37wK5m">
                    <node concept="2GrUjf" id="3Kjqe9aeX0o" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="3Kjqe9aeX0i" resolve="m" />
                    </node>
                    <node concept="3TrcHB" id="3Kjqe9aeX0p" role="2OqNvi">
                      <ref role="3TsBF5" to="u6h8:3Kjqe9adsgx" resolve="nombre" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3Kjqe9aeX0t" role="37wK5m">
                    <node concept="2GrUjf" id="3Kjqe9aeX0r" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="3Kjqe9aeX0i" resolve="m" />
                    </node>
                    <node concept="3TrcHB" id="3Kjqe9aeX0s" role="2OqNvi">
                      <ref role="3TsBF5" to="u6h8:3Kjqe9adsgy" resolve="creditos" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="3Kjqe9aeX0C" role="3cqZAp">
          <node concept="2OqwBi" id="3Kjqe9aeX0A" role="2GsD0m">
            <node concept="117lpO" id="3Kjqe9aeX0y" role="2Oq$k0" />
            <node concept="3Tsc0h" id="3Kjqe9aeX0z" role="2OqNvi">
              <ref role="3TtcxE" to="u6h8:3Kjqe9adsgC" resolve="materia" />
            </node>
          </node>
          <node concept="2GrKxI" id="3Kjqe9aeX0B" role="2Gsz3X">
            <property role="TrG5h" value="m" />
          </node>
          <node concept="3clFbS" id="3Kjqe9aeX12" role="2LFqv$">
            <node concept="2Gpval" id="3Kjqe9aeX0H" role="3cqZAp">
              <node concept="2OqwBi" id="3Kjqe9aeX0F" role="2GsD0m">
                <node concept="2GrUjf" id="3Kjqe9aeX0D" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="3Kjqe9aeX0B" resolve="m" />
                </node>
                <node concept="3Tsc0h" id="3Kjqe9aeX0E" role="2OqNvi">
                  <ref role="3TtcxE" to="u6h8:3Kjqe9adsgE" resolve="prerrequisitos" />
                </node>
              </node>
              <node concept="2GrKxI" id="3Kjqe9aeX0G" role="2Gsz3X">
                <property role="TrG5h" value="r" />
              </node>
              <node concept="3clFbS" id="3Kjqe9aeX11" role="2LFqv$">
                <node concept="3clFbJ" id="3Kjqe9aeX10" role="3cqZAp">
                  <node concept="2OqwBi" id="3Kjqe9aeX0M" role="3clFbw">
                    <node concept="2OqwBi" id="3Kjqe9aeX0K" role="2Oq$k0">
                      <node concept="2GrUjf" id="3Kjqe9aeX0I" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="3Kjqe9aeX0G" resolve="r" />
                      </node>
                      <node concept="3TrEf2" id="3Kjqe9aeX0J" role="2OqNvi">
                        <ref role="3Tt5mk" to="u6h8:3Kjqe9adsgJ" resolve="materia" />
                      </node>
                    </node>
                    <node concept="3x8VRR" id="3Kjqe9aeX0L" role="2OqNvi" />
                  </node>
                  <node concept="3clFbS" id="3Kjqe9aeX0Z" role="3clFbx">
                    <node concept="3clFbF" id="3Kjqe9aeX0Y" role="3cqZAp">
                      <node concept="2OqwBi" id="3Kjqe9aeX0X" role="3clFbG">
                        <node concept="37vLTw" id="3Kjqe9aeX0N" role="2Oq$k0">
                          <ref role="3cqZAo" node="3Kjqe9aeX01" resolve="v" />
                        </node>
                        <node concept="liA8E" id="3Kjqe9aeX0W" role="2OqNvi">
                          <ref role="37wK5l" to="ko7k:~VerificadorMPS.prerrequisito(java.lang.String,java.lang.String)" resolve="prerrequisito" />
                          <node concept="2OqwBi" id="3Kjqe9aeX0Q" role="37wK5m">
                            <node concept="2GrUjf" id="3Kjqe9aeX0O" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="3Kjqe9aeX0B" resolve="m" />
                            </node>
                            <node concept="3TrcHB" id="3Kjqe9aeX0P" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="3Kjqe9aeX0V" role="37wK5m">
                            <node concept="2OqwBi" id="3Kjqe9aeX0T" role="2Oq$k0">
                              <node concept="2GrUjf" id="3Kjqe9aeX0R" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="3Kjqe9aeX0G" resolve="r" />
                              </node>
                              <node concept="3TrEf2" id="3Kjqe9aeX0S" role="2OqNvi">
                                <ref role="3Tt5mk" to="u6h8:3Kjqe9adsgJ" resolve="materia" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="3Kjqe9aeX0U" role="2OqNvi">
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
        <node concept="lc7rE" id="3Kjqe9aeX17" role="3cqZAp">
          <node concept="l9hG8" id="3Kjqe9aeX16" role="lcghm">
            <node concept="2OqwBi" id="3Kjqe9aeX15" role="lb14g">
              <node concept="37vLTw" id="3Kjqe9aeX13" role="2Oq$k0">
                <ref role="3cqZAo" node="3Kjqe9aeX01" resolve="v" />
              </node>
              <node concept="liA8E" id="3Kjqe9aeX14" role="2OqNvi">
                <ref role="37wK5l" to="ko7k:~VerificadorMPS.reporteJson()" resolve="reporteJson" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

