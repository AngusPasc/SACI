�
 TRPT_USUARIO 0�  TPF0Trpt_usuariorpt_usuarioLeftTop� Width;HeightYCaptionrpt_usuarioColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreateOnShowFormShowPixelsPerInch`
TextHeight 	TSZReportreportLeft Top WidthNHeightAColumnsColumnSpace DataSetUsuario1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthAOptions.PageWidthNOptions.PaperTypezptSheet TSZRBandZRBand1LeftTopWidthLHeightBeforePrintZRBand1BeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth/HeightAlignToBand	FontStyle WordWrap	Caption   SIAC - Relatorio de Usuários  TSZRSysData
ZRSysData2Left.TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width.HeightAlignToBand	FontStyle BeforePrintZRLabel3BeforePrintWordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel5Left TopWidthNHeightAlignToBand	FontStyle WordWrap	CaptionN==============================================================================  	TSZRLabelZRLabel1Left.Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabelZRLabel6Left TopWidthNHeightAlignToBand	FontStyle WordWrap	CaptionN==============================================================================  	TSZRLabelZRLabel7LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionNome  	TSZRLabelZRLabel9Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCodigo  	TSZRLabel	SZRLabel1Left,TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionPerfil  	TSZRLabel	SZRLabel3Left3TopWidth
HeightAlignToBand	FontStyle WordWrap	CaptionSituacao  	TSZRLabel	SZRLabel6Left>TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionMaq  	TSZRLabel	SZRLabel8LeftBTopWidth
HeightAlignToBand	FontStyle WordWrap	CaptionAlterado  	TSZRLabel	SZRLabel9LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionFone   TSZRBandZRBand2LeftTopWidthLHeightBeforePrintZRBand2BeforePrintBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText	ZRDBText1LeftTop WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetUsuario1	DataFieldUSU_NOME  
TSZRDBText	ZRDBText2Left Top WidthHeightHint
USU_CODIGOAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetUsuario1	DataField
USU_CODIGO  	TSZRLabel	SZRLabel2Left,Top WidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabel	SZRLabel4Left3Top Width
HeightAlignToBand	FontStyle WordWrap	  	TSZRLabel	SZRLabel7Left>Top WidthHeightAlignToBand	FontStyle WordWrap	  
TSZRDBText
SZRDBText1LeftBTop Width
HeightHintUSU_DT_ALTERADOAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetUsuario1	DataFieldUSU_DT_ALTERADO  
TSZRDBText
SZRDBText2LeftTop WidthHeightHelpType	htKeywordAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetUsuario1	DataFieldUSU_FONE   TSZRBandZRBand3LeftTopWidthLHeightBeforePrintZRBand3BeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData1LeftATopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberTextPag.:  	TSZRLabelZRLabel8Left Top WidthNHeightAlignToBand	FontStyle WordWrap	CaptionN------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left TopWidth!HeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora   	TSZRGroup	SZRGroup1LeftTopWidthLHeightBeforePrintSZRGroup1BeforePrint
Expression
CNC_CODIGO
FooterBandSZRBand1MasterreportForceNewColumnForceNewPage 	TSZRLabelSZRLabel171Left Top WidthHeightAlignToBand	FontStyle WordWrap	Caption*** Centro de Custo:  	TSZRLabelSZRLabel172LeftTop Width HeightAlignToBand	FontStyle WordWrap	CaptionSZRLabel172   TSZRBandSZRBand1LeftTop	WidthLHeightBandTyperbGroupFooterForceNewColumnForceNewPage 	TSZRLabel	SZRLabel5Left�TopWidthNHeightAlignToBand	FontStyle WordWrap	CaptionN==============================================================================    TUsuarioUsuario1DatabaseNameDBguerraSQL.StringsSELECT * FROM USUARIO ORDER BY CNC_CODIGO,USU_NOME 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaMaquinaLogado PerfilSituacao TodosCentrosLeftTop�   TCentroCustoCentroCusto1DatabaseNameDBguerraSQL.StringsSELECT * FROM CENTRO_DE_CUSTOWHERE CNC_CODIGO=:CNC_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaCENTRO_DE_CUSTO
Logradouro RecebeDadosLeft;Top� 	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown     