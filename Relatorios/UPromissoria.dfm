�
 TRPT_PROMISSORIA 0`  TPF0Trpt_Promissoriarpt_PromissoriaLeft� TopPWidthGHeightjCaptionrpt_PromissoriaColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormClosePixelsPerInch`
TextHeight 	TSZReportreportLeft Top WidthPHeight!ColumnsColumnSpace DataSetTitulo_receber1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLength!Options.PageWidthPOptions.PaperTypezptSheet TSZRBandZRBand1LeftTopWidthNHeightBandTyperbColumnHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left@TopWidthHeight	AlignmenttaCenterAlignToBand	FontStyle WordWrap	CaptionNota  TSZRSysData
ZRSysData2LeftTopWidthHeight	AlignmenttaCenterAlignToBand	FontStyle WordWrap	DatazrsDateText   Data Emissão:   	TSZRLabelZRLabel3LeftTopWidthHeightAlignToBand	FontStyle BeforePrintZRLabel3BeforePrintWordWrap	CaptionMafalda Magazine  TSZRFrameLineZRFrameLine1Left Top WidthHeight
FrameStyle
fsVertical  TSZRFrameLineZRFrameLine2LeftTop WidthHeight
FrameStyle
fsVertical  TSZRFrameLineZRFrameLine3LeftMTop WidthHeight
FrameStyle
fsVertical  TSZRFrameLineZRFrameLine5Left:Top WidthHeight
FrameStyle
fsVertical  TSZRFrameLineZRFrameLine6Left<Top WidthHeight
FrameStyle
fsVertical  TSZRFrameLineZRFrameLine7LeftTop WidthHeight
FrameStyle
fsVertical  TSZRFrameLineZRFrameLine8Left Top WidthNHeight
FrameStylefsHorizontal  TSZRFrameLineZRFrameLine9Left TopWidthNHeight
FrameStylefsHorizontal  	TSZRLabel	ZRLabel15Left@TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionPromissoria  	TSZRLabel	ZRLabel14Left>TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionPedido:  
TSZRDBText
ZRDBText10LeftFTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
PDV_CODIGO  
TSZRDBText	ZRDBText2LeftTopWidth#HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetDM.CentroCusto1	DataFieldCNC_RZ_SOCIAL   TSZRBandZRBand2LeftTopWidthNHeightBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText	ZRDBText9LeftTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
CLI_CODIGO  TSZRFrameLineZRFrameLine4Left Top WidthHeight
FrameStyle
fsVertical  	TSZRLabel	ZRLabel13LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCliente:  TSZRFrameLineZRFrameLine13LeftMTop WidthHeight
FrameStyle
fsVertical  	TSZRLabel	ZRLabel16LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionFatura:  	TSZRLabel	ZRLabel17LeftTopWidth
HeightAlignToBand	FontStyle WordWrap	Caption   Sequência:  
TSZRDBText
ZRDBText12Left
TopWidth	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
TRC_NUMERO  
TSZRDBText
ZRDBText13Left TopWidth	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldTRC_SEQUENCIA  
TSZRDBText
ZRDBText14LeftATopWidth
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldTRC_VENCIMENTO  TSZRExpressionZRExpression1Left=TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CurrencyResetAfterPrint
Expression	TRC_VALORMask0.00  
TSZRDBText	ZRDBText1LeftTopWidth<HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldCLI_RZ_SOCIAL  	TSZRLabelZRLabel1LeftTopWidth;HeightAlignToBand	FontStyle WordWrap	Caption=   Pagável por esta Nota Promissória o valor em Reais (R$) de   	TSZRLabelZRLabel5LeftTopWidth/HeightAlignToBand	FontStyle WordWrap	Caption.Referenciando o seguinte Documento a ser pago:  	TSZRLabelZRLabel6Left,TopWidthHeightAlignToBand	FontStyle WordWrap	Captioncom o vencimento em:  	TSZRLabel	ZRLabel21LeftTopWidthKHeightAlignToBand	FontStyle BeforePrintZRLabel21BeforePrintWordWrap	  	TSZRLabelZRLabel4LeftTop	WidthHeightAlignToBand	FontStyle WordWrap	CaptionAceite  	TSZRLabel	ZRLabel23LeftTopWidthHeightAlignToBand	FontStyle WordWrap	Caption___/___/___  	TSZRLabel	ZRLabel22LeftTopWidth:HeightAlignToBand	FontStyle WordWrap	Caption]_____________________________________________________________________________________________  
TSZRDBText	ZRDBText3LeftTop	Width:Height	AlignmenttaCenterAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldCLI_RZ_SOCIAL  TSZRFrameLineZRFrameLine10Left TopWidthNHeight
FrameStylefsHorizontal  	TSZRLabel	SZRLabel1LeftTopWidth:HeightAlignToBand	FontStyle WordWrap	Caption]_____________________________________________________________________________________________  	TSZRLabel	SZRLabel2LeftTopWidth:Height	AlignmenttaCenterAlignToBand	FontStyle WordWrap	CaptionAvalista    TTitulo_receberTitulo_receber1DatabaseNameDBguerraFiltered	SQL.Strings*SELECT t1.*,t2.CLI_CODIGO,T2.CLI_RZ_SOCIALFROM$     Titulo_a_receber T1, Cliente T2WHERE$     (T1.CNC_CODIGO=:CNC_CODIGO) AND(     (T1.CLI_CODIGO = T2.CLI_CODIGO) AND'     (T2.CNC_CODIGO=T1.CNC_CLIENTE) AND      (T1.PDV_CODIGO=:PEDCOD) AND     (T1.TRC_SITUACAO=0)ORDER BY T1.TRC_SEQUENCIA  CConfiguracaoDM.Configuracao1CentroDeCusto	CodigoCNC Mafalda�Maquina
ClienteCNC 	CodigoAGF 	CodigoBOL 	CodigoCCX CodigoCCXRecebimento 	CodigoCLI 	CodigoCPC 	CodigoPDV 	CodigoTRC 	CodigoUSU GerouMovimentoProcesso Situacao Tipo TipoPag 	TituloANT 	TituloORI VisitadoLeft�Top� 	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerNamePEDCOD	ParamType	ptUnknown    TValorPorExtensoExtenso1MoedaNoSingularREALMoedaNoPluralREAISTipoDoTextottMaiusculaLeft� Top�    