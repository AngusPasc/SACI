�
 TRPT_SHISTORICO 0�  TPF0Trpt_SHistoricorpt_SHistoricoLeft� Top� Width@Height� Caption)Analise de Credito - Historico de ComprasColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormClosePixelsPerInch`
TextHeight 	TSZReportreport_histLeft Top�WidthPHeightColumnsColumnSpace DataSetPedido_de_Venda2Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.Bottom Options.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthOptions.PageWidthPOptions.PaperTypezptSheet TSZRBandZRBand1LeftTopWidthNHeightBandTyperbTitleForceNewColumnForceNewPage 	TSZRLabelZRLabel2LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionHistorico de Compras  	TSZRLabelZRLabel5Left Top WidthNHeightAlignToBand	FontStyle WordWrap	CaptionN==============================================================================  	TSZRLabelZRLabel6Left TopWidthNHeightAlignToBand	FontStyle WordWrap	CaptionN------------------------------------------------------------------------------  	TSZRLabelZRLabel8LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionPedido  	TSZRLabelZRLabel9LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionData  	TSZRLabel	ZRLabel10Left!TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionObs  	TSZRLabel	ZRLabel11LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionValor Total  	TSZRLabel	ZRLabel12Left9TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionSituacao   TSZRBandZRBand2LeftTopWidthNHeightBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText	ZRDBText3LeftTop WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetPedido_de_Venda2	DataField
PDV_CODIGO  
TSZRDBText	ZRDBText4Left!Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetPedido_de_Venda2	DataFieldPDV_OBS  
TSZRDBText
ZRDBText11Left9Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetPedido_de_Venda2	DataFieldPDV_SITUACAO  
TSZRDBText	ZRDBText1LeftTop Width
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetPedido_de_Venda2	DataFieldPDV_DATA_HORA  TSZRExpressionZRExpression1LeftTop WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CurrencyResetAfterPrint
Expression	PDV_TOTALMask0.00  	TSZRLabelZRLabel1Left<Top WidthHeightAlignToBand	FontStyle BeforePrintZRLabel1BeforePrintWordWrap	CaptionZRLabel1    TPedido_de_VendaPedido_de_Venda2
BeforeOpenPedido_de_Venda2BeforeOpenDatabaseNameDBguerraFiltered	SQL.StringsSELECT 	Pedido_de_Venda.CLI_CODIGO,	Pedido_de_Venda.CNC_CODIGO,	Pedido_de_Venda.PDV_CODIGO,	Pedido_de_Venda.PDV_DATA_HORA,	Pedido_de_Venda.PDV_LISTADO,	Pedido_de_Venda.PDV_OBS,	Pedido_de_Venda.PDV_SITUACAO,	Pedido_de_Venda.PDV_TOTAL,	Pedido_de_Venda.USU_CODIGOFROM 	Pedido_de_Venda Pedido_de_VendaWHERE+	(Pedido_de_Venda.CLI_CODIGO =:CLIENTE) AND6                (Pedido_de_Venda.CNC_CODIGO =:CODIGO)  	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaPEDIDO_DE_VENDA	Arquiteto 
ClienteCNC 	CodigoAGF 	CodigoCLI 	CodigoCNT 	CodigoFPE 	CodigoFPG 	CodigoPDV CodigoPDVOrigem CodigoPacote 
DiasReserv EmUsu EntregaDepositoFaturamentoCNC Garantia GrupoEspecialImpressoListado 
MaquinaPDV MediaPagamento 	NotaCupom 
NotaFiscal ServicoSituacao TipoDeVenda TipoPag TituloGeradoLeft
Top^	ParamDataDataType	ftIntegerNameCLIENTE	ParamType	ptUnknown DataType	ftIntegerNameCODIGO	ParamType	ptUnknown     