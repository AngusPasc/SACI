�
 TRPT_CARNET2 0�  TPF0Trpt_carnet2rpt_carnet2Left
TopuBorderIconsbiSystemMenu BorderStylebsSingleCaptionrpt_carnet2ClientHeight�ClientWidthFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style WindowStatewsMaximizedOnClose	FormClosePixelsPerInch`
TextHeight 	TSZReportreportLeftTop WidthPHeightColumnsColumnSpace DataSetTitulo_receber1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.Bottom Options.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthOptions.PageWidthPOptions.PaperTypezptSheet TSZRBandZRBand2LeftTopWidthNHeightBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText	ZRDBText1Left&TopWidth#HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldCLI_RZ_SOCIAL  
TSZRDBText
ZRDBText12Left9TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
TRC_NUMERO  
TSZRDBText
ZRDBText13Left&Top	WidthHeight	AlignmenttaCenterAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldTRC_SEQUENCIA  
TSZRDBText
ZRDBText14Left1Top	Width
Height	AlignmenttaCenterAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldTRC_VENCIMENTO  TSZRExpressionZRExpression1Left<Top	WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CurrencyResetAfterPrint
Expression	TRC_VALORMask0.00  
TSZRDBText
SZRDBText1Left&TopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldCLI_ENDERECO  
TSZRDBText
SZRDBText2Left<TopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
CLI_BAIRRO  	TSZRLabel	SZRLabel1Left@TopWidthHeightAlignToBand	FontStyle WordWrap	Caption-  
TSZRDBText
SZRDBText3Left&TopWidthHeight	AlignmenttaCenterAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
CLI_CODIGO  
TSZRDBText
SZRDBText4LeftATopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
PDV_CODIGO  
TSZRDBText
SZRDBText5Left TopWidth"HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldCLI_RZ_SOCIAL  
TSZRDBText
SZRDBText6LeftTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
TRC_NUMERO  
TSZRDBText
SZRDBText7Left Top	WidthHeight	AlignmenttaCenterAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldTRC_SEQUENCIA  
TSZRDBText
SZRDBText8Left	Top	Width
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldTRC_VENCIMENTO  TSZRExpressionSZRExpression1LeftTop	WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CurrencyResetAfterPrint
Expression	TRC_VALORMask0.00  
TSZRDBText
SZRDBText9Left TopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldCLI_ENDERECO  
TSZRDBTextSZRDBText10LeftTopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
CLI_BAIRRO  
TSZRDBTextSZRDBText11Left TopWidthHeight	AlignmenttaCenterAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
CLI_CODIGO    TTitulo_receberTitulo_receber1Filtered	DatabaseNameDBguerraSQL.Strings6SELECT T1.TRC_NUMERO, T1.TRC_SEQUENCIA, T1.TRC_VALOR, A     T1.TRC_VENCIMENTO,T1.PDV_CODIGO,T1.TRC_CODIGO,T1.CNC_CODIGO,M     T3.CLI_CODIGO,T3.CLI_RZ_SOCIAL,T3.CLI_CIDADE,T3.CLI_BAIRRO,T3.CNC_CODIGOFROM     TITULO_A_RECEBER T1,     CLIENTE T3WHERE     (T1.PDV_CODIGO=:PDV) AND     (T1.CNC_CODIGO=:CNC) AND&     (T3.CNC_CODIGO=T1.CNC_CODIGO) AND"     (T3.CLI_CODIGO=T1.CLI_CODIGO)ORDER BY     T1.TRC_SEQUENCIA Params.Data
      PDV        CNC        CConfiguracaoDM.Configuracao1CentroDeCusto 	CodigoCNC 
ClienteCNC 	CodigoAGF 	CodigoCCX 	CodigoCLI 	CodigoPDV 	CodigoTRC 	Pagamento      ��	<Situacao Tipo TipoPag 	TituloANT 
Vencimento �	��	<Left*Top�    