�
 TRPT_VERIFICACAIXA 0�  TPF0Trpt_VerificaCaixarpt_VerificaCaixaLeft� Top� Width;Height�Captionrpt_VerificaCaixaColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	WindowStatewsMaximizedOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeft Top�WidthPHeight ColumnsColumnSpace DataSetMovimento_caixa1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLength Options.PageWidthPOptions.PaperTypezptSheet TSZRBandzrbCabecalhoLeftTopWidthNHeightBeforePrintzrbCabecalhoBeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelzrlTituloBoletimLeft TopWidth/HeightAlignToBand	FontStyle WordWrap	CaptionSIAC - Verificacao do Caixa  TSZRSysData
ZRSysData2Left0TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width/HeightAlignToBand	FontStyle WordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel5Left TopWidthNHeightAlignToBand	FontStyle WordWrap	CaptionN==============================================================================  	TSZRLabelZRLabel1Left0Top WidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	CaptionCentro de Custo   TSZRBand
zrbDetalheLeftTopWidthNHeightBeforePrintzrbDetalheBeforePrintBandTyperbDetailForceNewColumnForceNewPage 	TSZRLabelZRLabel7LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionData   :  	TSZRLabelZRLabel9LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCaixa  :  
TSZRDBText	ZRDBText1Left
TopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetMovimento_caixa1	DataFieldMVC_DATA  
TSZRDBText	ZRDBText4Left
TopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetMovimento_caixa1	DataField
CAX_CODIGO  	TSZRLabelZRLabel6LeftTopWidthHeightAlignToBand	FontStyle WordWrap	Caption-  	TSZRLabel	ZRLabel15LeftTop	Width
HeightAlignToBand	FontStyle WordWrap	Caption
Obs.     :  
TSZRDBText	ZRDBText6LeftTop	WidthAHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetMovimento_caixa1	DataFieldMVC_OBSERVACAO  	TSZRLabel	ZRLabel22LeftTopWidthHeightAlignToBand	FontStyle WordWrap	Caption_____________________  	TSZRLabel	ZRLabel16Left	TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCaixa  	TSZRLabel	ZRLabel17Left1TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionConferencia  	TSZRLabel	ZRLabel18Left+TopWidthHeightAlignToBand	FontStyle WordWrap	Caption_____________________  	TSZRLabelzrlCaixaLeftTopWidth HeightAlignToBand	FontStyle WordWrap	CaptionCaixa  
TSZRDBText
SZRDBText1LeftTopWidthAHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetMovimento_caixa1	DataFieldMVC_DESCRICAO  	TSZRLabel	SZRLabel1LeftTopWidth
HeightAlignToBand	FontStyle WordWrap	Caption
Descricao:  	TSZRLabel	SZRLabel2LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionNumero :  
TSZRDBText
SZRDBText2Left
TopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetMovimento_caixa1	DataField
MVC_NUMERO  	TSZRLabel	SZRLabel3LeftTopWidth
HeightAlignToBand	FontStyle WordWrap	Caption
Sequencia:  
TSZRDBText
SZRDBText3Left#TopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetMovimento_caixa1	DataFieldMVC_TIT_SEQUENCIA  	TSZRLabel	SZRLabel4LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionTipoDoc:  	TSZRLabelzrlTipoDocumentoLeft
TopWidth%HeightAlignToBand	FontStyle WordWrap	   TSZRBand
zrlbRodapeLeftTopWidthNHeightBeforePrintzrlbRodapeBeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData1LeftCTopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberTextPag.:  	TSZRLabelZRLabel8Left Top WidthNHeightAlignToBand	FontStyle WordWrap	CaptionN------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left TopWidth!HeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora    TMovimento_caixaMovimento_caixa1DatabaseNameDBguerraSQL.Strings SELECT * FROM MOVIMENTO_DE_CAIXAWHERE CNC_CODIGO=:CNC_CODIGOAND MVC_CODIGO=:MVC_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaMOVIMENTO_DE_CAIXA	CNCTitulo Cc 	ChequeCNC 	CodigoCAX 	CodigoCCX CodigoCCXRecebimento 	CodigoCHQ 	CodigoMVC 	CodigoTIT 
MaquinaMVC NaoContabilOrigemExtorno Tipo TipoPGTO LeftTop� 	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
MVC_CODIGO	ParamType	ptUnknown     