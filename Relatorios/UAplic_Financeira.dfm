�
 TRPT_APLIC_FINANCEIRA 0�  TPF0Trpt_aplic_financeirarpt_aplic_financeiraLeft� TopuWidthLHeight�Captionrpt_aplic_financeiraColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeft Top�WidthPHeightAColumnsColumnSpace DataSet	AplicFin1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthAOptions.PageWidthPOptions.PaperTypezptSheet TSZRBandZRBand1LeftTopWidthNHeightBeforePrintZRBand1BeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth/HeightAlignToBand	FontStyle WordWrap	Caption*SIAC - Relatorio de Aplicacoes Financeiras  TSZRSysData
ZRSysData2Left0TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width/HeightAlignToBand	FontStyle BeforePrintZRLabel3BeforePrintWordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel1Left0Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabelZRLabel5Left TopWidthNHeightAlignToBand	FontStyle WordWrap	CaptionN==============================================================================  	TSZRLabelZRLabel6Left TopWidthNHeightAlignToBand	FontStyle WordWrap	CaptionN==============================================================================  	TSZRLabelZRLabel7Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionBanco  	TSZRLabel	ZRLabel10LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionAgencia  	TSZRLabel	ZRLabel11Left$TopWidth	HeightAlignToBand	FontStyle WordWrap	CaptionSaldo  	TSZRLabel	ZRLabel12Left3TopWidthHeightAlignToBand	FontStyle WordWrap	Caption
Observacao  	TSZRLabelZRLabel9LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCod.Agn.   TSZRBandZRBand2LeftTopWidthNHeightBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText	ZRDBText1Left Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet	AplicFin1	DataField
BNC_NUMERO  
TSZRDBText	ZRDBText2LeftTop WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet	AplicFin1	DataFieldAGN_NOME  
TSZRDBText	ZRDBText3Left3Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet	AplicFin1	DataFieldAPF_OBSERVACAO  
TSZRDBText	ZRDBText4Left$Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet	AplicFin1	DataField	APF_SALDO  
TSZRDBText	ZRDBText5LeftTop WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet	AplicFin1	DataField
AGN_NUMERO   TSZRBandZRBand3LeftTopWidthNHeightBeforePrintZRBand3BeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData1LeftCTopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberTextPag.:  	TSZRLabelZRLabel8Left Top WidthNHeightAlignToBand	FontStyle WordWrap	CaptionN------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left TopWidth"HeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora    	TAplicFin	AplicFin1
BeforeOpenAplicFin1BeforeOpenDatabaseNameDBguerraSQL.Strings"SELECT * FROM APLICACAO_FINANCEIRAWHERE CNC_CODIGO=:CNC_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina	CodigoAPF CodigoAgencia CodigoBanco Situacao LeftTop� 	ParamDataDataType	ftUnknownName
CNC_CODIGO	ParamType	ptUnknown   TIntegerFieldAplicFin1APF_CODIGO	FieldName
APF_CODIGOOriginaplicacao_financeira.APF_CODIGO  TIntegerFieldAplicFin1CNC_CODIGO	FieldName
CNC_CODIGOOriginaplicacao_financeira.CNC_CODIGO  TIntegerFieldAplicFin1BNC_NUMERO	FieldName
BNC_NUMEROOriginaplicacao_financeira.BNC_NUMERO  TIntegerFieldAplicFin1APF_SITUACAO	FieldNameAPF_SITUACAOOrigin!aplicacao_financeira.APF_SITUACAO  TIntegerFieldAplicFin1AGN_NUMERO	FieldName
AGN_NUMEROOriginaplicacao_financeira.AGN_NUMERO  TStringFieldAplicFin1APF_OBSERVACAO	FieldNameAPF_OBSERVACAOOrigin#aplicacao_financeira.APF_OBSERVACAO  TStringFieldAplicFin1AGN_NOME	FieldKindfkLookup	FieldNameAGN_NOMELookupDataSetAgencia1LookupKeyFields
AGN_NUMEROLookupResultFieldAGN_NOME	KeyFields
AGN_NUMEROSize(Lookup	  TFloatFieldAplicFin1APF_SALDO	FieldName	APF_SALDOOriginAPLICACAO_FINANCEIRA.APF_CODIGO   TAgenciaAgencia1DatabaseNameDBguerraFiltered	SQL.StringsSELECT * FROM AGENCIA 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina	CodigoAGN 	CodigoBNC 
Logradouro NumeroAgencia NumeroBanco Left3Top�    