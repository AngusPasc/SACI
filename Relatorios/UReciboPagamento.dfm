˙
 TRPT_RECIBOPAGAMENTO 0f  TPF0Trpt_ReciboPagamentorpt_ReciboPagamentoLeft TopŁ BorderIconsbiSystemMenu
biMaximize BorderStylebsDialogCaptionReciboClientHeightĎClientWidthĹColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightő	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeft Top Width Height ColumnsColumnSpace DataSetMovimento_caixa1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightő	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLength Options.PageWidth Options.PaperTypezptSheet TSZRBandZRBand1LeftTopWidth HeightBeforePrintZRBand1BeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth/HeightAlignToBand	FontStyle WordWrap	CaptionSIAC - RECIBO PAGAMENTO  TSZRSysData
ZRSysData2Left_TopWidth)Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width/HeightAlignToBand	FontStyle WordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel5Left TopWidth HeightAlignToBand	FontStyle WordWrap	Caption========================================================================================================================================  	TSZRLabelZRLabel1Left_Top Width)Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabelZRLabel6Left;TopWidthHeightAlignToBand	FontStyle WordWrap	Caption** R E C I B O **  
TSZRDBText	ZRDBText1Left{TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetMovimento_caixa1	DataField
MVC_CODIGO  	TSZRLabelZRLabel9LeftTop	Width	HeightAlignToBand	FontStyle WordWrap	Caption	VALOR: R$  	TSZRLabel
zrlExtensoLeftTop	WidthoHeightAlignToBand	FontStyleesBold WordWrap	  
TSZRDBText
ZRDBText13LeftTopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetMovimento_caixa1	DataFieldMVC_TIT_SEQUENCIA  	TSZRLabel	ZRLabel17LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionSEQUENCIA :  	TSZRLabel	ZRLabel22Left2TopWidth HeightAlignToBand	FontStyle WordWrap	Caption ________________________________  	TSZRLabel	ZRLabel11Left>TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCAIXA  	TSZRLabel	SZRLabel1LeftTopWidth&Height	AlignmenttaCenterAlignToBand	FontStyle WordWrap	  
TSZRDBText
SZRDBText3LeftTopWidth HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetMovimento_caixa1	DataFieldMVC_DESCRICAO  	TSZRLabel	SZRLabel2LeftKTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCCX:  	TSZRLabelzrlContaDeCaixaLeftPTopWidth7HeightAlignToBand	FontStyle WordWrap	  	TSZRLabel	SZRLabel4LeftTopWidth
HeightAlignToBand	FontStyle WordWrap	Caption
TIPO DOC.:  	TSZRLabelzrlTipoDocumentoLeftTopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabel	SZRLabel6Left&TopWidth
HeightAlignToBand	FontStyle WordWrap	Caption
TIPO PAG.:  	TSZRLabelzrlTipoPagamentoLeft1TopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlValorLeftTop	WidthHeightAlignToBand	FontStyle WordWrap	  
TSZRDBText
SZRDBText1Left&TopWidth
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetMovimento_caixa1	DataFieldMVC_TIT_NUMERO  	TSZRLabel	SZRLabel5LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionNUMERO:  
TSZRDBText
SZRDBText2LeftTopWidth HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetMovimento_caixa1	DataFieldMVC_OBSERVACAO1  
TSZRDBText
SZRDBText4LeftPTopWidth
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetMovimento_caixa1	DataField
CHQ_CODIGO  	TSZRLabel	SZRLabel7LeftKTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCHQ:  
TSZRDBText
SZRDBText5Left>TopWidth
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetMovimento_caixa1	DataFieldMVC_COMPETENCIA  	TSZRLabel	SZRLabel8Left1TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCOMPETENCIA:   TSZRBandZRBand3LeftTopWidth HeightBeforePrintZRBand3BeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData1Left}TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberText   PĂĄg.:  	TSZRLabelZRLabel8Left Top Width HeightAlignToBand	FontStyle WordWrap	Caption----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left TopWidth!HeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora  	TSZRLabel
zrlUsuarioLeft#TopWidth,HeightAlignToBand	FontStyleesItalic WordWrap	    TCentroCustoCentroCusto1DatabaseNameDBguerraSQL.StringsSELECT * FROM CENTRO_DE_CUSTOWHERE CNC_CODIGO=:CNC_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaCENTRO_DE_CUSTO
Logradouro RecebeDadosLeft'Top~	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown    TMovimento_caixaMovimento_caixa1DatabaseNameDBGuerra	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaMOVIMENTO_DE_CAIXA	CNCTitulo Cc 	ChequeCNC 	CodigoCAX 	CodigoCCX CodigoCCXRecebimento 	CodigoCHQ 	CodigoMVC 	CodigoTIT 
MaquinaMVC NaoContabilOrigemExtorno Tipo TipoPGTO Left
Top~   