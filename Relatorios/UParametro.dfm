�
 TRPT_PARAMETRO 0C  TPF0Trpt_parametrorpt_parametroLeft� TopgWidth�Height�Captionrpt_parametroColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeft Top�Width� HeightAColumnsColumnSpace DataSet
Parametro1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthAOptions.PageWidth� Options.PaperTypezptSheet TSZRBandZRBand1LeftTopWidth� HeightBeforePrintZRBand1BeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth/HeightAlignToBand	FontStyle WordWrap	Caption   SIAC - Relatorio de Parâmetros  TSZRSysData
ZRSysData2LeftdTopWidth$Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width/HeightAlignToBand	FontStyleesUnderline BeforePrintZRLabel3BeforePrintWordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel5Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================  	TSZRLabelZRLabel1LeftdTop Width$Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	CaptionCentro de Custo   TSZRBandZRBand2LeftTopWidth� HeightBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText	ZRDBText1Left
Top Width(HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet
Parametro1	DataFieldPAR_DESCRICAO  
TSZRDBText	ZRDBText3LeftTop WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet
Parametro1	DataField
PAR_CODIGO  	TSZRLabel	SZRLabel3Left	Top WidthHeightAlignToBand	FontStyle WordWrap	Caption-  
TSZRDBText
SZRDBText2Left3Top Width
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet
Parametro1	DataFieldPAR_INFORMACAO  
TSZRDBText
SZRDBText3Left?Top WidthIHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet
Parametro1	DataFieldPAR_OBSERVACAO   TSZRBandZRBand3LeftTopWidth� HeightBeforePrintZRBand3BeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData1Left}TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberText   Pág.:  	TSZRLabelZRLabel8Left Top Width� HeightAlignToBand	FontStyle WordWrap	Caption�----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left TopWidth!HeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora  	TSZRLabel
zrlUsuarioLeft$TopWidth,HeightAlignToBand	FontStyleesItalic WordWrap	   	TSZRGroup	SZRGroup1LeftTopWidth� Height
ExpressionTPR_DESCRICAO
FooterBandSZRBand1MasterreportForceNewColumnForceNewPage 	TSZRLabelZRLabel6Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabelZRLabel7Left
TopWidth(HeightAlignToBand	FontStyle WordWrap	Caption	Parametro  	TSZRLabel	ZRLabel10LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCodigo  	TSZRLabel	SZRLabel1Left Top WidthHeightAlignToBand	FontStyle WordWrap	CaptionTipo de Parametro:  	TSZRLabel	SZRLabel2Left	TopWidthHeightAlignToBand	FontStyle WordWrap	Caption-  
TSZRDBText
SZRDBText1LeftTop WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet
Parametro1	DataFieldTPR_DESCRICAO  	TSZRLabel	SZRLabel5Left3TopWidth
HeightAlignToBand	FontStyle WordWrap	Caption
Informacao  	TSZRLabel	SZRLabel6Left?TopWidthIHeightAlignToBand	FontStyle WordWrap	Caption
Observacao   TSZRBandSZRBand1LeftTop	Width� HeightBandTyperbGroupFooterForceNewColumnForceNewPage 	TSZRLabel	SZRLabel4Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================    
TParametro
Parametro1DatabaseNameDBguerraSQL.StringsSELECT T1.*,T2.TPR_DESCRICAO'FROM PARAMETRO T1, TIPO_DE_PARAMETRO T2!WHERE T2.TPR_CODIGO=T1.TPR_CODIGO*ORDER BY T2.TPR_DESCRICAO,T1.PAR_DESCRICAO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina	CodigoPAR 	CodigoTPR 
Informacao Situacao Left;Top�  TIntegerFieldParametro1PAR_CODIGO	FieldName
PAR_CODIGOOriginDBGUERRA.PARAMETRO.PAR_CODIGO  TStringFieldParametro1PAR_DESCRICAO	FieldNamePAR_DESCRICAOOrigin DBGUERRA.PARAMETRO.PAR_DESCRICAO  TStringFieldParametro1TPR_DESCRICAO	FieldNameTPR_DESCRICAOOrigin(DBGUERRA.TIPO_DE_PARAMETRO.TPR_DESCRICAOSize2  TIntegerFieldParametro1TPR_CODIGO	FieldName
TPR_CODIGOOriginDBGUERRA.PARAMETRO.TPR_CODIGO  TIntegerFieldParametro1CNC_CODIGO	FieldName
CNC_CODIGOOriginDBGUERRA.PARAMETRO.CNC_CODIGO  TIntegerFieldParametro1PAR_SITUACAO	FieldNamePAR_SITUACAOOriginDBGUERRA.PARAMETRO.PAR_SITUACAO  TDateTimeFieldParametro1PAR_DT_CADASTRO	FieldNamePAR_DT_CADASTROOrigin"DBGUERRA.PARAMETRO.PAR_DT_CADASTRO  TDateTimeFieldParametro1PAR_DT_ALTERADO	FieldNamePAR_DT_ALTERADOOrigin"DBGUERRA.PARAMETRO.PAR_DT_ALTERADO  TIntegerFieldParametro1PAR_INFORMACAO	FieldNamePAR_INFORMACAOOrigin!DBGUERRA.PARAMETRO.PAR_INFORMACAO  TStringFieldParametro1PAR_OBSERVACAO	FieldNamePAR_OBSERVACAOOrigin!DBGUERRA.PARAMETRO.PAR_OBSERVACAO	FixedChar	Size�    
TTipoParam
TipoParam1Active	DatabaseNameDBguerraSQL.StringsSelect * from tipo_de_parametro CConfiguracaoDM.Configuracao1	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina	CodigoTPR	Descricao
LOGRADOUROLeftTop�    