�
 TRPT_SECAO 0  TPF0
Trpt_secao	rpt_secaoLeft� Top� WidthKHeightNCaption	rpt_secaoColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeft�Top WidthPHeightAColumnsColumnSpace DataSetSecao1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthAOptions.PageWidthPOptions.PaperTypezptSheet TSZRBandZRBand1LeftTopWidthNHeightBeforePrintZRBand1BeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth/HeightAlignToBand	FontStyle WordWrap	CaptionSIAC - Relatorio de Secoes  TSZRSysData
ZRSysData2Left0TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width/HeightAlignToBand	FontStyle BeforePrintZRLabel3BeforePrintWordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel5Left TopWidthNHeightAlignToBand	FontStyle WordWrap	CaptionN==============================================================================  	TSZRLabelZRLabel1Left0Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabelZRLabel6Left TopWidthNHeightAlignToBand	FontStyle WordWrap	CaptionN==============================================================================  	TSZRLabelZRLabel7LeftTopWidthHeightAlignToBand	FontStyle WordWrap	Caption   Seçao  	TSZRLabel	ZRLabel10Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCod.   TSZRBandZRBand2LeftTopWidthNHeightBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText	ZRDBText1LeftTop Width(HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetSecao1	DataFieldSEC_DESCRICAO  
TSZRDBText	ZRDBText3Left Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetSecao1	DataField
SEC_CODIGO   TSZRBandZRBand3LeftTopWidthNHeightBeforePrintZRBand3BeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData1LeftCTopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberTextPag.:  	TSZRLabelZRLabel8Left Top WidthNHeightAlignToBand	FontStyle WordWrap	CaptionN------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left TopWidth%HeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora    TSecaoSecao1
BeforeOpenSecao1BeforeOpenDatabaseNameDBguerraFiltered	SQL.StringsSELECT * FROM SECAO WHERE CNC_CODIGO=:CNC_CODIGOORDER BY SECAO.SEC_DESCRICAO CConfiguracaoDM.Configuracao1	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaCodigoSecao Left� Top� 	ParamDataDataType	ftUnknownName
CNC_CODIGO	ParamType	ptUnknown     