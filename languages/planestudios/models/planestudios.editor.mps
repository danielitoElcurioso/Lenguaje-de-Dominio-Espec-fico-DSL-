<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a7e02087-31aa-4727-a576-1fac60ae2264(planestudios.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="15" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="0272d3b4-4cc8-481e-9e2f-07793fbfcb41" name="jetbrains.mps.lang.editor.table" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="u6h8" ref="r:4a1f0499-890e-4e4d-93a6-51e20f7da37a(planestudios.structure)" />
    <import index="squ6" ref="r:b60215f1-3d3e-41cc-8321-723ef8eb59dd(jetbrains.mps.lang.editor.table.runtime)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ngI" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
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
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ngI" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="5979988948250981289" name="jetbrains.mps.lang.actions.structure.SNodeCreatorAndInitializer" flags="nn" index="2fJWfE" />
      <concept id="767145758118872833" name="jetbrains.mps.lang.actions.structure.NF_LinkList_AddNewChildOperation" flags="nn" index="2DeJg1" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
    <language id="0272d3b4-4cc8-481e-9e2f-07793fbfcb41" name="jetbrains.mps.lang.editor.table">
      <concept id="4490468428501056077" name="jetbrains.mps.lang.editor.table.structure.QueryFunction_TableModel" flags="in" index="2XI2dN" />
      <concept id="4677325677876400523" name="jetbrains.mps.lang.editor.table.structure.CellModel_Table" flags="ng" index="1CiYdB">
        <child id="4490468428501048483" name="tableModel" index="2XI0mt" />
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
      <concept id="1227022196108" name="jetbrains.mps.baseLanguage.collections.structure.RemoveAtElementOperation" flags="nn" index="2KedMh">
        <child id="1227022274197" name="index" index="2KewY8" />
      </concept>
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1225621920911" name="jetbrains.mps.baseLanguage.collections.structure.InsertElementOperation" flags="nn" index="1sK_Qi">
        <child id="1225621943565" name="element" index="1sKFgg" />
        <child id="1225621960341" name="index" index="1sKJu8" />
      </concept>
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="3Kjqe9aeE2F">
    <ref role="1XX52x" to="u6h8:3Kjqe9adsfm" resolve="PlanEstudios" />
    <node concept="3EZMnI" id="3Kjqe9aeE2E" role="2wV5jI">
      <node concept="3EZMnI" id="3Kjqe9aeE2p" role="3EZMnx">
        <node concept="VPM3Z" id="3Kjqe9aeE2n" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="3Kjqe9aeE2l" role="3EZMnx">
          <property role="3F0ifm" value="plan de estudios" />
        </node>
        <node concept="3F0A7n" id="3Kjqe9aeE2m" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="3Kjqe9aeE2o" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3Kjqe9aeE2v" role="3EZMnx">
        <node concept="VPM3Z" id="3Kjqe9aeE2t" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="3Kjqe9aeE2q" role="3EZMnx">
          <property role="3F0ifm" value="tope por semestre:" />
        </node>
        <node concept="3F0A7n" id="3Kjqe9aeE2r" role="3EZMnx">
          <ref role="1NtTu8" to="u6h8:3Kjqe9adsgm" resolve="maxCreditosSemestre" />
        </node>
        <node concept="3F0ifn" id="3Kjqe9aeE2s" role="3EZMnx">
          <property role="3F0ifm" value="créditos" />
        </node>
        <node concept="2iRfu4" id="3Kjqe9aeE2u" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3Kjqe9aeE2A" role="3EZMnx">
        <node concept="VPM3Z" id="3Kjqe9aeE2y" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="3Kjqe9aeE2w" role="3EZMnx">
          <property role="3F0ifm" value="créditos para graduarse:" />
        </node>
        <node concept="3F0A7n" id="3Kjqe9aeE2x" role="3EZMnx">
          <ref role="1NtTu8" to="u6h8:3Kjqe9adsgr" resolve="creditosGrado" />
        </node>
        <node concept="2iRfu4" id="3Kjqe9aeE2z" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="3Kjqe9aeE2B" role="3EZMnx">
        <property role="3F0ifm" value="" />
      </node>
      <node concept="3F0ifn" id="3Kjqe9aeE2C" role="3EZMnx">
        <property role="3F0ifm" value="materia (código  nombre  créditos)   |   prerrequisitos  →" />
      </node>
      <node concept="1CiYdB" id="3Kjqe9aeE2k" role="3EZMnx">
        <node concept="2XI2dN" id="3Kjqe9aeE2j" role="2XI0mt">
          <node concept="3clFbS" id="3Kjqe9aeE2i" role="2VODD2">
            <node concept="3cpWs6" id="3Kjqe9aeE2h" role="3cqZAp">
              <node concept="2ShNRf" id="3Kjqe9aeE2g" role="3cqZAk">
                <node concept="YeOm9" id="3Kjqe9aeE2f" role="2ShVmc">
                  <node concept="1Y3b0j" id="3Kjqe9aeE2e" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="squ6:C$5wo1fOXD" resolve="AbstractTableModel" />
                    <ref role="37wK5l" to="squ6:C$5wo1fOXF" resolve="AbstractTableModel" />
                    <node concept="3clFb_" id="3Kjqe9aeE0z" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="getColumnCount" />
                      <node concept="3Tm1VV" id="3Kjqe9aeE0y" role="1B3o_S" />
                      <node concept="10Oyi0" id="3Kjqe9aeE0r" role="3clF45" />
                      <node concept="3clFbS" id="3Kjqe9aeE0x" role="3clF47">
                        <node concept="3cpWs8" id="3Kjqe9aeE0s" role="3cqZAp">
                          <node concept="3cpWsn" id="3Kjqe9aeE01" role="3cpWs9">
                            <property role="TrG5h" value="max" />
                            <node concept="10Oyi0" id="3Kjqe9aeE02" role="1tU5fm" />
                            <node concept="3cmrfG" id="3Kjqe9aeE03" role="33vP2m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                        <node concept="2Gpval" id="3Kjqe9aeE0q" role="3cqZAp">
                          <node concept="2OqwBi" id="3Kjqe9aeE0e" role="2GsD0m">
                            <node concept="pncrf" id="3Kjqe9aeE0c" role="2Oq$k0" />
                            <node concept="3Tsc0h" id="3Kjqe9aeE0d" role="2OqNvi">
                              <ref role="3TtcxE" to="u6h8:3Kjqe9adsgC" resolve="materia" />
                            </node>
                          </node>
                          <node concept="2GrKxI" id="3Kjqe9aeE04" role="2Gsz3X">
                            <property role="TrG5h" value="m" />
                          </node>
                          <node concept="3clFbS" id="3Kjqe9aeE0p" role="2LFqv$">
                            <node concept="3clFbJ" id="3Kjqe9aeE0o" role="3cqZAp">
                              <node concept="3eOSWO" id="3Kjqe9aeE0l" role="3clFbw">
                                <node concept="2OqwBi" id="3Kjqe9aeE0j" role="3uHU7B">
                                  <node concept="2OqwBi" id="3Kjqe9aeE0h" role="2Oq$k0">
                                    <node concept="2GrUjf" id="3Kjqe9aeE0f" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="3Kjqe9aeE04" resolve="m" />
                                    </node>
                                    <node concept="3Tsc0h" id="3Kjqe9aeE0g" role="2OqNvi">
                                      <ref role="3TtcxE" to="u6h8:3Kjqe9adsgE" resolve="prerrequisitos" />
                                    </node>
                                  </node>
                                  <node concept="34oBXx" id="3Kjqe9aeE0i" role="2OqNvi" />
                                </node>
                                <node concept="37vLTw" id="3Kjqe9aeE0k" role="3uHU7w">
                                  <ref role="3cqZAo" node="3Kjqe9aeE01" resolve="max" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="3Kjqe9aeE0n" role="3clFbx">
                                <node concept="3clFbF" id="3Kjqe9aeE0m" role="3cqZAp">
                                  <node concept="37vLTI" id="3Kjqe9aeE0b" role="3clFbG">
                                    <node concept="37vLTw" id="3Kjqe9aeE05" role="37vLTJ">
                                      <ref role="3cqZAo" node="3Kjqe9aeE01" resolve="max" />
                                    </node>
                                    <node concept="2OqwBi" id="3Kjqe9aeE0a" role="37vLTx">
                                      <node concept="2OqwBi" id="3Kjqe9aeE08" role="2Oq$k0">
                                        <node concept="2GrUjf" id="3Kjqe9aeE06" role="2Oq$k0">
                                          <ref role="2Gs0qQ" node="3Kjqe9aeE04" resolve="m" />
                                        </node>
                                        <node concept="3Tsc0h" id="3Kjqe9aeE07" role="2OqNvi">
                                          <ref role="3TtcxE" to="u6h8:3Kjqe9adsgE" resolve="prerrequisitos" />
                                        </node>
                                      </node>
                                      <node concept="34oBXx" id="3Kjqe9aeE09" role="2OqNvi" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="3Kjqe9aeE0w" role="3cqZAp">
                          <node concept="3cpWs3" id="3Kjqe9aeE0v" role="3cqZAk">
                            <node concept="37vLTw" id="3Kjqe9aeE0t" role="3uHU7B">
                              <ref role="3cqZAo" node="3Kjqe9aeE01" resolve="max" />
                            </node>
                            <node concept="3cmrfG" id="3Kjqe9aeE0u" role="3uHU7w">
                              <property role="3cmrfH" value="2" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFb_" id="3Kjqe9aeE0J" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="getRowCount" />
                      <node concept="3Tm1VV" id="3Kjqe9aeE0I" role="1B3o_S" />
                      <node concept="10Oyi0" id="3Kjqe9aeE0A" role="3clF45" />
                      <node concept="3clFbS" id="3Kjqe9aeE0H" role="3clF47">
                        <node concept="3cpWs6" id="3Kjqe9aeE0G" role="3cqZAp">
                          <node concept="2OqwBi" id="3Kjqe9aeE0F" role="3cqZAk">
                            <node concept="2OqwBi" id="3Kjqe9aeE0D" role="2Oq$k0">
                              <node concept="pncrf" id="3Kjqe9aeE0B" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="3Kjqe9aeE0C" role="2OqNvi">
                                <ref role="3TtcxE" to="u6h8:3Kjqe9adsgC" resolve="materia" />
                              </node>
                            </node>
                            <node concept="34oBXx" id="3Kjqe9aeE0E" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFb_" id="3Kjqe9aeE1r" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="getValueAt" />
                      <node concept="3Tm1VV" id="3Kjqe9aeE1q" role="1B3o_S" />
                      <node concept="3Tqbb2" id="3Kjqe9aeE0V" role="3clF45" />
                      <node concept="37vLTG" id="3Kjqe9aeE0L" role="3clF46">
                        <property role="TrG5h" value="row" />
                        <node concept="10Oyi0" id="3Kjqe9aeE0K" role="1tU5fm" />
                      </node>
                      <node concept="37vLTG" id="3Kjqe9aeE0N" role="3clF46">
                        <property role="TrG5h" value="column" />
                        <node concept="10Oyi0" id="3Kjqe9aeE0M" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="3Kjqe9aeE1p" role="3clF47">
                        <node concept="3cpWs8" id="3Kjqe9aeE0W" role="3cqZAp">
                          <node concept="3cpWsn" id="3Kjqe9aeE0O" role="3cpWs9">
                            <property role="TrG5h" value="m" />
                            <node concept="3Tqbb2" id="3Kjqe9aeE0P" role="1tU5fm">
                              <ref role="ehGHo" to="u6h8:3Kjqe9adsgd" resolve="Materia" />
                            </node>
                            <node concept="1y4W85" id="3Kjqe9aeE0U" role="33vP2m">
                              <node concept="2OqwBi" id="3Kjqe9aeE0S" role="1y566C">
                                <node concept="pncrf" id="3Kjqe9aeE0Q" role="2Oq$k0" />
                                <node concept="3Tsc0h" id="3Kjqe9aeE0R" role="2OqNvi">
                                  <ref role="3TtcxE" to="u6h8:3Kjqe9adsgC" resolve="materia" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="3Kjqe9aeE0T" role="1y58nS">
                                <ref role="3cqZAo" node="3Kjqe9aeE0L" resolve="row" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="3Kjqe9aeE13" role="3cqZAp">
                          <node concept="3clFbC" id="3Kjqe9aeE0Z" role="3clFbw">
                            <node concept="37vLTw" id="3Kjqe9aeE0X" role="3uHU7B">
                              <ref role="3cqZAo" node="3Kjqe9aeE0N" resolve="column" />
                            </node>
                            <node concept="3cmrfG" id="3Kjqe9aeE0Y" role="3uHU7w">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="3Kjqe9aeE12" role="3clFbx">
                            <node concept="3cpWs6" id="3Kjqe9aeE11" role="3cqZAp">
                              <node concept="37vLTw" id="3Kjqe9aeE10" role="3cqZAk">
                                <ref role="3cqZAo" node="3Kjqe9aeE0O" resolve="m" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="3Kjqe9aeE1m" role="3cqZAp">
                          <node concept="3eOVzh" id="3Kjqe9aeE1c" role="3clFbw">
                            <node concept="3cpWsd" id="3Kjqe9aeE16" role="3uHU7B">
                              <node concept="37vLTw" id="3Kjqe9aeE14" role="3uHU7B">
                                <ref role="3cqZAo" node="3Kjqe9aeE0N" resolve="column" />
                              </node>
                              <node concept="3cmrfG" id="3Kjqe9aeE15" role="3uHU7w">
                                <property role="3cmrfH" value="1" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="3Kjqe9aeE1b" role="3uHU7w">
                              <node concept="2OqwBi" id="3Kjqe9aeE19" role="2Oq$k0">
                                <node concept="37vLTw" id="3Kjqe9aeE17" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3Kjqe9aeE0O" resolve="m" />
                                </node>
                                <node concept="3Tsc0h" id="3Kjqe9aeE18" role="2OqNvi">
                                  <ref role="3TtcxE" to="u6h8:3Kjqe9adsgE" resolve="prerrequisitos" />
                                </node>
                              </node>
                              <node concept="34oBXx" id="3Kjqe9aeE1a" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="3Kjqe9aeE1l" role="3clFbx">
                            <node concept="3cpWs6" id="3Kjqe9aeE1k" role="3cqZAp">
                              <node concept="1y4W85" id="3Kjqe9aeE1j" role="3cqZAk">
                                <node concept="2OqwBi" id="3Kjqe9aeE1f" role="1y566C">
                                  <node concept="37vLTw" id="3Kjqe9aeE1d" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3Kjqe9aeE0O" resolve="m" />
                                  </node>
                                  <node concept="3Tsc0h" id="3Kjqe9aeE1e" role="2OqNvi">
                                    <ref role="3TtcxE" to="u6h8:3Kjqe9adsgE" resolve="prerrequisitos" />
                                  </node>
                                </node>
                                <node concept="3cpWsd" id="3Kjqe9aeE1i" role="1y58nS">
                                  <node concept="37vLTw" id="3Kjqe9aeE1g" role="3uHU7B">
                                    <ref role="3cqZAo" node="3Kjqe9aeE0N" resolve="column" />
                                  </node>
                                  <node concept="3cmrfG" id="3Kjqe9aeE1h" role="3uHU7w">
                                    <property role="3cmrfH" value="1" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="3Kjqe9aeE1o" role="3cqZAp">
                          <node concept="10Nm6u" id="3Kjqe9aeE1n" role="3cqZAk" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFb_" id="3Kjqe9aeE1J" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="createElement" />
                      <node concept="3Tm1VV" id="3Kjqe9aeE1I" role="1B3o_S" />
                      <node concept="3cqZAl" id="3Kjqe9aeE1w" role="3clF45" />
                      <node concept="37vLTG" id="3Kjqe9aeE1t" role="3clF46">
                        <property role="TrG5h" value="row" />
                        <node concept="10Oyi0" id="3Kjqe9aeE1s" role="1tU5fm" />
                      </node>
                      <node concept="37vLTG" id="3Kjqe9aeE1v" role="3clF46">
                        <property role="TrG5h" value="column" />
                        <node concept="10Oyi0" id="3Kjqe9aeE1u" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="3Kjqe9aeE1H" role="3clF47">
                        <node concept="3clFbF" id="3Kjqe9aeE1G" role="3cqZAp">
                          <node concept="2OqwBi" id="3Kjqe9aeE1F" role="3clFbG">
                            <node concept="2OqwBi" id="3Kjqe9aeE1D" role="2Oq$k0">
                              <node concept="1y4W85" id="3Kjqe9aeE1B" role="2Oq$k0">
                                <node concept="2OqwBi" id="3Kjqe9aeE1z" role="1y566C">
                                  <node concept="pncrf" id="3Kjqe9aeE1x" role="2Oq$k0" />
                                  <node concept="3Tsc0h" id="3Kjqe9aeE1y" role="2OqNvi">
                                    <ref role="3TtcxE" to="u6h8:3Kjqe9adsgC" resolve="materia" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="3Kjqe9aeE1A" role="1y58nS">
                                  <ref role="3cqZAo" node="3Kjqe9aeE1t" resolve="row" />
                                </node>
                              </node>
                              <node concept="3Tsc0h" id="3Kjqe9aeE1C" role="2OqNvi">
                                <ref role="3TtcxE" to="u6h8:3Kjqe9adsgE" resolve="prerrequisitos" />
                              </node>
                            </node>
                            <node concept="2DeJg1" id="3Kjqe9aeE1E" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFb_" id="3Kjqe9aeE1Z" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="insertRow" />
                      <node concept="3Tm1VV" id="3Kjqe9aeE1Y" role="1B3o_S" />
                      <node concept="3cqZAl" id="3Kjqe9aeE1R" role="3clF45" />
                      <node concept="37vLTG" id="3Kjqe9aeE1L" role="3clF46">
                        <property role="TrG5h" value="rowNumber" />
                        <node concept="10Oyi0" id="3Kjqe9aeE1K" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="3Kjqe9aeE1X" role="3clF47">
                        <node concept="3clFbF" id="3Kjqe9aeE1W" role="3cqZAp">
                          <node concept="2OqwBi" id="3Kjqe9aeE1V" role="3clFbG">
                            <node concept="2OqwBi" id="3Kjqe9aeE1U" role="2Oq$k0">
                              <node concept="pncrf" id="3Kjqe9aeE1S" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="3Kjqe9aeE1T" role="2OqNvi">
                                <ref role="3TtcxE" to="u6h8:3Kjqe9adsgC" resolve="materia" />
                              </node>
                            </node>
                            <node concept="1sK_Qi" id="3Kjqe9aeE1Q" role="2OqNvi">
                              <node concept="37vLTw" id="3Kjqe9aeE1M" role="1sKJu8">
                                <ref role="3cqZAo" node="3Kjqe9aeE1L" resolve="rowNumber" />
                              </node>
                              <node concept="2ShNRf" id="3Kjqe9aeE1P" role="1sKFgg">
                                <node concept="2fJWfE" id="3Kjqe9aeE1O" role="2ShVmc">
                                  <node concept="3Tqbb2" id="3Kjqe9aeE1N" role="3zrR0E">
                                    <ref role="ehGHo" to="u6h8:3Kjqe9adsgd" resolve="Materia" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFb_" id="3Kjqe9aeE2c" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="deleteRow" />
                      <node concept="3Tm1VV" id="3Kjqe9aeE2b" role="1B3o_S" />
                      <node concept="3cqZAl" id="3Kjqe9aeE22" role="3clF45" />
                      <node concept="37vLTG" id="3Kjqe9aeE21" role="3clF46">
                        <property role="TrG5h" value="rowNumber" />
                        <node concept="10Oyi0" id="3Kjqe9aeE20" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="3Kjqe9aeE2a" role="3clF47">
                        <node concept="3clFbF" id="3Kjqe9aeE29" role="3cqZAp">
                          <node concept="2OqwBi" id="3Kjqe9aeE28" role="3clFbG">
                            <node concept="2OqwBi" id="3Kjqe9aeE25" role="2Oq$k0">
                              <node concept="pncrf" id="3Kjqe9aeE23" role="2Oq$k0" />
                              <node concept="3Tsc0h" id="3Kjqe9aeE24" role="2OqNvi">
                                <ref role="3TtcxE" to="u6h8:3Kjqe9adsgC" resolve="materia" />
                              </node>
                            </node>
                            <node concept="2KedMh" id="3Kjqe9aeE27" role="2OqNvi">
                              <node concept="37vLTw" id="3Kjqe9aeE26" role="2KewY8">
                                <ref role="3cqZAo" node="3Kjqe9aeE21" resolve="rowNumber" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="3Kjqe9aeE2d" role="1B3o_S" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRkQZ" id="3Kjqe9aeE2D" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3Kjqe9aeE2O">
    <ref role="1XX52x" to="u6h8:3Kjqe9adsgd" resolve="Materia" />
    <node concept="3EZMnI" id="3Kjqe9aeE2N" role="2wV5jI">
      <node concept="VPM3Z" id="3Kjqe9aeE2L" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="3F0A7n" id="3Kjqe9aeE2G" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0A7n" id="3Kjqe9aeE2H" role="3EZMnx">
        <ref role="1NtTu8" to="u6h8:3Kjqe9adsgx" resolve="nombre" />
      </node>
      <node concept="3F0ifn" id="3Kjqe9aeE2I" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F0A7n" id="3Kjqe9aeE2J" role="3EZMnx">
        <ref role="1NtTu8" to="u6h8:3Kjqe9adsgy" resolve="creditos" />
      </node>
      <node concept="3F0ifn" id="3Kjqe9aeE2K" role="3EZMnx">
        <property role="3F0ifm" value="cr)" />
      </node>
      <node concept="2iRfu4" id="3Kjqe9aeE2M" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3Kjqe9aeE2S">
    <ref role="1XX52x" to="u6h8:3Kjqe9adsge" resolve="RefPrerrequisito" />
    <node concept="1iCGBv" id="3Kjqe9aeE2R" role="2wV5jI">
      <ref role="1NtTu8" to="u6h8:3Kjqe9adsgJ" resolve="materia" />
      <node concept="1sVBvm" id="3Kjqe9aeE2Q" role="1sWHZn">
        <node concept="3F0A7n" id="3Kjqe9aeE2P" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
</model>

