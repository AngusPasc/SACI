�
 TRPT_CONTA_CONTABIL 0  TPF0Trpt_conta_contabilrpt_conta_contabilLeft� Top� WidthHHeight�Captionrpt_conta_contabilColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PixelsPerInch`
TextHeight 	TSZReportreportLeft Top�WidthPHeightBColumnsColumnSpace DataSetConta_Contabil1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthBOptions.PageWidthPOptions.PaperTypezptSheet TSZRBandZRBand1LeftTopWidthNHeightBeforePrintZRBand1BeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth/HeightAlignToBand	FontStyle WordWrap	Caption$SIAC - Relatorio de Contas Contabeis  TSZRSysData
ZRSysData2Left0TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width/HeightAlignToBand	FontStyle BeforePrintZRLabel3BeforePrintWordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel5Left TopWidthNHeightAlignToBand	FontStyle WordWrap	CaptionN==============================================================================  	TSZRLabelZRLabel1Left0Top WidthHeightAlignToBand	FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabelZRLabel6Left TopWidthNHeightAlignToBand	FontStyle WordWrap	CaptionN==============================================================================  	TSZRLabelZRLabel7LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionConta  	TSZRLabelZRLabel9Left&TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionLimite de Gasto  	TSZRLabel	ZRLabel10Left6TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionTipo de Conta  	TSZRLabel	ZRLabel11Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCod.   TSZRBandZRBand2LeftTopWidthNHeightBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText	ZRDBText1LeftTop WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetConta_Contabil1	DataFieldCCT_DESCRICAO  
TSZRDBText	ZRDBText2Left&Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetConta_Contabil1	DataFieldCCT_LIMITE_GASTO  
TSZRDBText	ZRDBText3Left6Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetConta_Contabil1	DataFieldCCT_DC  
TSZRDBText	ZRDBText4Left Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetConta_Contabil1	DataField
CCT_CODIGO   TSZRBandZRBand3LeftTopWidthNHeightBeforePrintZRBand3BeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData1LeftCTopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberTextPag.:  	TSZRLabelZRLabel8Left Top WidthNHeightAlignToBand	FontStyle WordWrap	CaptionN------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left TopWidth%HeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora    TConta_ContabilConta_Contabil1
BeforeOpenConta_Contabil1BeforeOpenDatabaseNameDBGuerraFiltered	SQL.StringsSELECT * FROM CONTA_CONTABIL WHERE CNC_CODIGO=:CNC_CODIGO%ORDER BY CONTA_CONTABIL.CCT_DESCRICAO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina	CodigoCCT Left� Top� 	ParamDataDataType	ftUnknownName
CNC_CODIGO	ParamType	ptUnknown     