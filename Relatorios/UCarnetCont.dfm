�
 TRPT_CARNETCONT 0�  TPF0Trpt_CarnetContrpt_CarnetContLeft� TopWidth(Height`Caption   Carnet Papel da GráficaColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormClosePixelsPerInch`
TextHeight 	TSZReportreportLeft Top Width� HeightColumnsColumnSpace DataSetTitulo_receber1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.Top Margins.RightMargins.Bottom Options.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOn0Options.Escapes.BoldOffFHOptions.Escapes.ItalicsOn2Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthOptions.PageWidth� Options.PaperTypezptSheet TSZRBandZRBand2LeftTop Width� HeightBeforePrintZRBand2BeforePrintBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText
SZRDBText5LeftTopWidth=HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldCLI_RZ_SOCIAL  
TSZRDBText
SZRDBText7LeftTopWidth
Height	AlignmenttaCenterAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldTRC_SEQUENCIA  
TSZRDBText
SZRDBText8LeftTopWidth
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldTRC_VENCIMENTO  TSZRExpressionSZRExpression1Left(TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CurrencyResetAfterPrint
Expression	TRC_VALORMask0.00  
TSZRDBTextSZRDBText10Left,TopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
CLI_BAIRRO  
TSZRDBTextSZRDBText11LeftTop
WidthHeight	AlignmenttaCenterAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
CLI_CODIGO  	TSZRLabel	SZRLabel3Left+TopWidthHeightAlignToBand	FontStyle WordWrap	Caption-  
TSZRDBText
SZRDBText2LeftJTopWidth=HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldCLI_RZ_SOCIAL  
TSZRDBText
SZRDBText3LeftJTopWidth
Height	AlignmenttaCenterAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldTRC_SEQUENCIA  
TSZRDBText
SZRDBText4Left_TopWidth
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldTRC_VENCIMENTO  TSZRExpressionSZRExpression2LeftpTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CurrencyResetAfterPrint
Expression	TRC_VALORMask0.00  
TSZRDBTextSZRDBText14LefttTopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
CLI_BAIRRO  
TSZRDBTextSZRDBText15LeftJTop
WidthHeight	AlignmenttaCenterAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
CLI_CODIGO  
TSZRDBTextSZRDBText16LeftpTop
Width	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
TRC_NUMERO  	TSZRLabel	SZRLabel1LeftyTop
WidthHeightAlignToBand	FontStyle WordWrap	Caption-  
TSZRDBTextSZRDBText18LeftzTop
Width
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
PDV_CODIGO  	TSZRLabel	SZRLabel5LeftsTopWidthHeightAlignToBand	FontStyle WordWrap	Caption-  
TSZRDBText
SZRDBText1Left(Top
Width	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
TRC_NUMERO  	TSZRLabel	SZRLabel2Left1Top
WidthHeightAlignToBand	FontStyle WordWrap	Caption-  
TSZRDBText
SZRDBText6Left2Top
Width
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
PDV_CODIGO  	TSZRLabel	SZRLabel4LeftTopWidth)HeightAlignToBand	FontStyle WordWrap	  	TSZRLabel	SZRLabel7LeftJTopWidth)HeightAlignToBand	FontStyle WordWrap	  	TSZRLabel	SZRLabel6Left Top WidthHeightAlignToBand	FontStyleesBold WordWrap	Caption.  	TSZRLabel
SZRLabel61Left� TopWidthHeight	AlignmenttaCenterAlignToBand	FontStyleesItalic WordWrap	Caption.    TTitulo_receberTitulo_receber1DatabaseNameDBguerraFiltered	SQL.Strings6SELECT T1.TRC_NUMERO, T1.TRC_SEQUENCIA, T1.TRC_VALOR, A     T1.TRC_VENCIMENTO,T1.PDV_CODIGO,T1.TRC_CODIGO,T1.CNC_CODIGO,B     T3.CLI_CODIGO,T3.CLI_RZ_SOCIAL,T3.CLI_ENDERECO,T3.CLI_CIDADE,2     T3.CLI_BAIRRO,T3.CNC_CODIGO,T3.CLI_LOGRADOURO$FROM TITULO_A_RECEBER T1, CLIENTE T3WHERE T1.PDV_CODIGO=:PDVAND T1.CNC_CODIGO=:CNC AND T3.CNC_CODIGO=T1.CNC_CODIGOAND T3.CLI_CODIGO=T1.CLI_CODIGOAND T1.TRC_SITUACAO<>5ORDER BY T1.TRC_SEQUENCIA   CConfiguracaoDM.Configuracao1	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina	ChequeCNC ChequeDevolvido
ClienteCNC 	CodigoAGF 	CodigoBOL 	CodigoCCX CodigoCCXRecebimento 	CodigoCHQ 	CodigoCLI 	CodigoCPC 	CodigoFPE 	CodigoFUN 	CodigoMCC 	CodigoPDV 	CodigoTRC 	CodigoTRF FaturamentoCNC GerouMovimentoMovimentoContaCorrenteCNC PagamentoParcialProcesso 
Reabertura Situacao Tipo TipoPag 
TipoPedido 	TituloANT 	TituloORI 
Verificado VisitadoLeftbTop� 	ParamDataDataType	ftIntegerNamePDV	ParamType	ptUnknown DataType	ftIntegerNameCNC	ParamType	ptUnknown    
TParametro
Parametro1DatabaseNameDBguerraSQL.StringsSELECT * FROM PARAMETROWHERE PAR_CODIGO=:PAR_CODIGO  	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina	CodigoPAR 	CodigoTPR 
Informacao Situacao Left� Top� 	ParamDataDataType	ftIntegerName
PAR_CODIGO	ParamType	ptUnknown     