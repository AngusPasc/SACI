�
 TRPT_ITEMEMBARQUE 00  TPF0Trpt_ItemEmbarquerpt_ItemEmbarqueLeftTTop=WidthdHeightwCaptionrpt_ItemEmbarqueColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PixelsPerInch`
TextHeight 	TSZReportreportLeftTop WidthPHeightBColumnsColumnSpace DataSet	Embarque1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthBOptions.PageWidthPOptions.PaperTypezptSheet TSZRBandZRBand1LeftTopWidthNHeightBeforePrintZRBand1BeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth/HeightAlignToBand	FontStyle WordWrap	Caption%SIAC - Relatorio de Itens de Embarque  TSZRSysData
ZRSysData2Left0TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width/HeightAlignToBand	FontStyleesUnderline WordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel5Left TopWidthNHeightAlignToBand	FontStyle WordWrap	CaptionN==============================================================================  	TSZRLabelZRLabel1Left0Top WidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabel	SZRLabel5Left TopWidth
HeightAlignToBand	FontStyle WordWrap	Caption	SZRLabel5  	TSZRLabel	SZRLabel6LeftTopWidthHeightAlignToBand	FontStyle WordWrap	Captiona  	TSZRLabel	SZRLabel7LeftTopWidth
HeightAlignToBand	FontStyle WordWrap	Caption	SZRLabel7  	TSZRLabel	SZRLabel8Left0TopWidthHeightAlignToBand	FontStyle WordWrap	Caption	SZRLabel8   TSZRBandZRBand3LeftTopWidthNHeightBeforePrintZRBand3BeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData1LeftCTopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberTextPag.:  	TSZRLabelZRLabel8Left Top WidthNHeightAlignToBand	FontStyle WordWrap	CaptionN------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left TopWidth"HeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora   	TSZRGroupZRGroup1LeftTopWidthNHeight
ExpressionIEB_DESTINO
FooterBandZRBand2MasterreportForceNewColumnForceNewPage 
TSZRDBText	ZRDBText1Left	Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet	Embarque1	DataFieldtipo  
TSZRDBText	ZRDBText2Left	TopWidthEHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet	Embarque1	DataFieldIEB_DESTINO  	TSZRLabel	ZRLabel15Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionProduto  	TSZRLabel	ZRLabel16Left3TopWidthHeightAlignToBand	FontStyle WordWrap	Caption
Referencia  	TSZRLabel	ZRLabel18LeftDTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption
Quantidade  	TSZRLabel	ZRLabel14Left Top WidthHeightAlignToBand	FontStyle WordWrap	CaptionTipo   :  	TSZRLabel	ZRLabel17Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionOrigem :  	TSZRLabel	ZRLabel19LeftTop WidthHeightAlignToBand	FontStyle WordWrap	CaptionCod. Origem:  	TSZRLabel	ZRLabel20Left5Top Width
HeightAlignToBand	FontStyle WordWrap	Caption
Documento:  
TSZRDBText	ZRDBText6Left	TopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet	Embarque1	DataFieldLocOri  
TSZRDBText	ZRDBText7Left)Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet	Embarque1	DataFieldCodOri  
TSZRDBText
ZRDBText10Left@Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet	Embarque1	DataFieldNumDoc  	TSZRLabel	ZRLabel21Left TopWidthNHeightAlignToBand	FontStyle WordWrap	CaptionN------------------------------------------------------------------------------  	TSZRLabel	ZRLabel11Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionDestino:   TSZRBandZRBand4LeftTopWidthNHeightBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText	ZRDBText3Left Top Width2HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet	Embarque1	DataFieldproduto  
TSZRDBText	ZRDBText4Left3Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet	Embarque1	DataField
referencia  
TSZRDBText	ZRDBText5LeftETop Width	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet	Embarque1	DataFieldIEB_QUANTIDADE   TSZRBandZRBand2LeftTopWidthNHeightBandTyperbGroupFooterForceNewColumnForceNewPage 	TSZRLabel	SZRLabel1Left TopWidthNHeightAlignToBand	FontStyle WordWrap	CaptionN==============================================================================    TProdutoProduto1DatabaseNameDBguerraSQL.Strings1select * from produto where prd_codigo=prd_codigo 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaPRODUTOCatalogoClassificacao 	CodigoCLF 	CodigoCTP 	CodigoFOR 	CodigoGRP 	CodigoORF 	CodigoPRD 	CodigoSGP EstoqueDetalhadoForaDeLinhaForaPrevisao
ForaTabelaInsumoNivel Previsao ServicoSituacao 
TempoMedio Left_Top�   	TEmbarque	Embarque1
BeforeOpenEmbarque1BeforeOpenOnCalcFieldsEmbarque1CalcFieldsDatabaseNameDBguerraFiltered	SQL.Strings>SELECT T1.*, T2.* FROM EMBARQUE T1, ITEM_DE_EMBARQUE T2 WHERE T1.EMB_CODIGO=T2.EMB_CODIGO ANDT1.CNC_CODIGO=:CNC_CODIGO ANDT2.CNC_CODIGO=:CNC_CODIGO ANDT1.EMB_CODIGO=:EMB_CODIGOORDER BY IEB_DESTINO ASC CConfiguracaoDM.Configuracao1CLogDM.Log1	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina	CodigoEMB 	CodigoTRN FunMotorista FunResp FunTran Situacao 
Totalitens Left;Top� 	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
EMB_CODIGO	ParamType	ptUnknown   TStringFieldEmbarque1transportadora	FieldKindfkLookup	FieldNametransportadoraLookupDataSetTransportadora1LookupKeyFields
TRN_CODIGOLookupResultFieldTRN_RZ_SOCIAL	KeyFields
TRN_CODIGOSize(Lookup	  TStringFieldEmbarque1motorista	FieldKindfkLookup	FieldName	motoristaLookupDataSetFuncionario1LookupKeyFields
FUN_CODIGOLookupResultFieldFUN_NOME	KeyFieldsEMB_FUN_MOTORISTASize(Lookup	  TStringFieldEmbarque1responsavel	FieldKindfkLookup	FieldNameresponsavelLookupDataSetFuncionario2LookupKeyFields
FUN_CODIGOLookupResultFieldFUN_NOME	KeyFieldsEMB_FUN_RESPSize(Lookup	  TStringFieldEmbarque1resultado	FieldKindfkCalculated	FieldName	resultadoSize(
Calculated	  TIntegerFieldEmbarque1EMB_CODIGO	FieldName
EMB_CODIGOOriginEMBARQUE.EMB_CODIGO  TIntegerFieldEmbarque1CNC_CODIGO	FieldName
CNC_CODIGOOriginEMBARQUE.CNC_CODIGO  TDateTimeFieldEmbarque1EMB_DATA	FieldNameEMB_DATAOriginEMBARQUE.EMB_DATA  TIntegerFieldEmbarque1TRN_CODIGO	FieldName
TRN_CODIGOOriginEMBARQUE.TRN_CODIGO  TIntegerFieldEmbarque1EMB_SITUACAO	FieldNameEMB_SITUACAOOriginEMBARQUE.EMB_SITUACAO  TStringFieldEmbarque1EMB_OBSERVACAO	FieldNameEMB_OBSERVACAOOriginEMBARQUE.EMB_OBSERVACAO  TIntegerFieldEmbarque1EMB_TOT_ITENS	FieldNameEMB_TOT_ITENSOriginEMBARQUE.EMB_TOT_ITENS  TIntegerFieldEmbarque1EMB_FUN_MOTORISTA	FieldNameEMB_FUN_MOTORISTAOriginEMBARQUE.EMB_FUN_MOTORISTA  TIntegerFieldEmbarque1EMB_FUN_RESP	FieldNameEMB_FUN_RESPOriginEMBARQUE.EMB_FUN_RESP  TStringFieldEmbarque1EMB_CAMINHAO	FieldNameEMB_CAMINHAOOriginEMBARQUE.EMB_CAMINHAO  TIntegerFieldEmbarque1EMB_FUN_TRAN	FieldNameEMB_FUN_TRANOriginEMBARQUE.EMB_FUN_TRAN  TIntegerFieldEmbarque1IEB_CODIGO	FieldName
IEB_CODIGOOriginITEM_DE_EMBARQUE.IEB_CODIGO  TIntegerFieldEmbarque1CNC_CODIGO_1	FieldNameCNC_CODIGO_1OriginITEM_DE_EMBARQUE.CNC_CODIGO  TIntegerFieldEmbarque1PRD_CODIGO	FieldName
PRD_CODIGOOriginITEM_DE_EMBARQUE.PRD_CODIGO  TIntegerFieldEmbarque1EMB_CODIGO_1	FieldNameEMB_CODIGO_1OriginITEM_DE_EMBARQUE.EMB_CODIGO  TFloatFieldEmbarque1IEB_QUANTIDADE	FieldNameIEB_QUANTIDADEOriginITEM_DE_EMBARQUE.IEB_QUANTIDADEDisplayFormat0.00  TIntegerFieldEmbarque1IEB_TIPO_ENT	FieldNameIEB_TIPO_ENTOriginITEM_DE_EMBARQUE.IEB_TIPO_ENT  TIntegerFieldEmbarque1IEB_CNC_CODIGO_ENT	FieldNameIEB_CNC_CODIGO_ENTOrigin#ITEM_DE_EMBARQUE.IEB_CNC_CODIGO_ENT  TIntegerFieldEmbarque1IEB_ENT_CODIGO	FieldNameIEB_ENT_CODIGOOriginITEM_DE_EMBARQUE.IEB_ENT_CODIGO  TStringFieldEmbarque1IEB_DESTINO	FieldNameIEB_DESTINOOriginITEM_DE_EMBARQUE.IEB_DESTINOSized  TIntegerFieldEmbarque1IEB_SITUACAO	FieldNameIEB_SITUACAOOriginITEM_DE_EMBARQUE.IEB_SITUACAO  TStringFieldEmbarque1produto	FieldKindfkLookup	FieldNameprodutoLookupDataSetProduto1LookupKeyFields
PRD_CODIGOLookupResultFieldPRD_DESCRICAO	KeyFields
PRD_CODIGOSize(Lookup	  TStringFieldEmbarque1referencia	FieldKindfkLookup	FieldName
referenciaLookupDataSetProduto1LookupKeyFields
PRD_CODIGOLookupResultFieldPRD_REFERENCIA	KeyFields
PRD_CODIGOSize(Lookup	  TStringFieldEmbarque1tipo	FieldKindfkCalculated	FieldNametipo
Calculated	  TStringFieldEmbarque1LocOri	FieldKindfkCalculated	FieldNameLocOriSize
Calculated	  TStringFieldEmbarque1CodOri	FieldKindfkCalculated	FieldNameCodOri
Calculated	  TStringFieldEmbarque1NumDoc	FieldKindfkCalculated	FieldNameNumDoc
Calculated	   TFuncionarioFuncionario1DatabaseNameDBguerraFiltered	SQL.StringsSELECT * FROM FUNCIONARIO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaFUNCIONARIOApareceServicosApareceVendasCFuncao CLogradouro 	CodigoFUN Funcao 
Logradouro Parceiro Secao Situacao Superior TodosCentrosUsuarioVinculado Left� Top�  TIntegerFieldFuncionario1FUN_CODIGO	FieldName
FUN_CODIGOOriginFUNCIONARIO.FUN_CODIGO  TIntegerFieldFuncionario1CNC_CODIGO	FieldName
CNC_CODIGOOriginFUNCIONARIO.CNC_CODIGO  TStringFieldFuncionario1FUN_NOME	FieldNameFUN_NOMEOriginFUNCIONARIO.FUN_NOMESize(   TTransportadoraTransportadora1DatabaseNameDBguerraFiltered	SQL.StringsSELECT * FROM TRANSPORTADORA 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaTRANSPORTADORACFornecedor 	CodigoCCX 	CodigoTRN 
Logradouro Situacao LeftTop�  TIntegerFieldTransportadora1TRN_CODIGO	FieldName
TRN_CODIGOOriginTRANSPORTADORA.TRN_CODIGO  TIntegerFieldTransportadora1CNC_CODIGO	FieldName
CNC_CODIGOOriginTRANSPORTADORA.CNC_CODIGO  TStringFieldTransportadora1TRN_RZ_SOCIAL	FieldNameTRN_RZ_SOCIALOriginTRANSPORTADORA.TRN_RZ_SOCIALSize<   TFuncionarioFuncionario2DatabaseNameDBguerraFiltered	SQL.StringsSELECT * FROM FUNCIONARIO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaFUNCIONARIOApareceServicosApareceVendasCFuncao CLogradouro 	CodigoFUN Funcao 
Logradouro Parceiro Secao Situacao Superior TodosCentrosUsuarioVinculado Left� Top�  TIntegerFieldIntegerField1	FieldName
FUN_CODIGOOriginFUNCIONARIO.FUN_CODIGO  TIntegerFieldIntegerField2	FieldName
CNC_CODIGOOriginFUNCIONARIO.CNC_CODIGO  TStringFieldStringField1	FieldNameFUN_NOMEOriginFUNCIONARIO.FUN_NOMESize(   TCentroCustoCentroCusto1DatabaseNameDBguerraSQL.StringsSELECT * FROM CENTRO_DE_CUSTO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaCENTRO_DE_CUSTO
Logradouro RecebeDadosLeft� Top�    