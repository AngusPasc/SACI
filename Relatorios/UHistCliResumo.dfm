�
 TRPT_HISTCLIRESUMO 04  TPF0Trpt_HistCliResumorpt_HistCliResumoLeft%Top`Width(Height`Caption(   Histórico de Pedido de Venda do ClienteColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeft Top Width� HeightAColumnsColumnSpace DataSetPedido_de_Venda1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthAOptions.PageWidth� Options.PaperTypezptSheet TSZRBandZRBand1LeftTopWidth� HeightBeforePrintZRBand1BeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth/HeightAlignToBand	FontStyle WordWrap	CaptionSIAC - Relatorio de Pedido  TSZRSysData
ZRSysData2Left_TopWidth)Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width/HeightAlignToBand	FontStyle BeforePrintZRLabel3BeforePrintWordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel5Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================  	TSZRLabelZRLabel1Left_Top Width)Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabelZRLabel6Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================  	TSZRLabelZRLabel7Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCliente:  	TSZRLabel	SZRLabel2Left	TopWidth3HeightAlignToBand	FontStyle WordWrap	  	TSZRLabel	ZRLabel20LeftTopWidth	HeightAlignToBand	FontStyle WordWrap	CaptionPedido  	TSZRLabel	ZRLabel14LeftTopWidth
HeightAlignToBand	FontStyle WordWrap	CaptionEmissao  	TSZRLabel	SZRLabel1LeftTopWidth_HeightAlignToBand	FontStyle WordWrap	CaptionForma de Pagamento  	TSZRLabel	SZRLabel5Left{TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionTotal   TSZRBandZRBand3LeftTopWidth� HeightBeforePrintZRBand3BeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData1Left}TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberText   Pág.:  	TSZRLabelZRLabel8Left Top Width� HeightAlignToBand	FontStyle WordWrap	Caption�----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left TopWidth"HeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora  	TSZRLabel
zrlUsuarioLeft#TopWidth,HeightAlignToBand	FontStyleesItalic WordWrap	   	TSZRGroupZRGroup1LeftTopWidth� HeightBeforePrintZRGroup1BeforePrint
Expression
PDV_CODIGOMasterreportForceNewColumnForceNewPage 
TSZRDBText	ZRDBText8LeftTop Width	HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetPedido_de_Venda1	DataField
PDV_CODIGO  	TSZRLabelzrlTipoPagamentoLeftTop Width_HeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlMaiorLeft Top WidthHeightAlignToBandEnabled	FontStyle WordWrap	Caption>>>>>  	TSZRLabelzrlTotalPedidoLeft{Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlDataEmissaoLeftTop Width
HeightAlignToBand	FontStyle WordWrap	   TSZRBandZRBand5LeftTop	Width� HeightBeforePrintZRBand5BeforePrintBandType	rbSummaryForceNewColumnForceNewPage 	TSZRLabelZRLabel9LeftjTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionTotal Geral:  	TSZRLabelzrlTotalGeralLeft{TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabel	SZRLabel4Left Top Width� HeightAlignToBand	FontStyleesBold WordWrap	Caption�----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabel	SZRLabel6Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionTotal Registros:  	TSZRLabelzrlTotalRegistrosLeftTopWidthHeightAlignToBand	FontStyle WordWrap	    TPedido_de_VendaPedido_de_Venda1DatabaseNameDBguerraFiltered	SQL.StringsSELECT T1.*FROM PEDIDO_DE_VENDA T1WHERE T1.PDV_CODIGO=:PDV_CODIGO   	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaPEDIDO_DE_VENDA	Arquiteto CUsuarioDM.Usuario1
ClienteCNC 	CodigoAGF 	CodigoCLI 	CodigoCNT 	CodigoFPE 	CodigoFPG 	CodigoPDV CodigoPDVOrigem CodigoPacote 
DiasReserv EmUsu EntregaDepositoFaturamentoCNC Garantia GrupoEspecialImpressoListado 
MaquinaPDV MediaPagamento 	NotaCupom 
NotaFiscal ServicoSituacao TipoDeVenda TipoPag TituloGeradoLeftTop� 	ParamDataDataType	ftIntegerName
PDV_CODIGO	ParamType	ptUnknown    TClienteCliente1DatabaseNameDBguerraSQL.StringsSELECT CLI_RZ_SOCIALFROM CLIENTE7WHERE CNC_CODIGO=:CNC_CODIGO AND CLI_CODIGO=:CLI_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaCLIENTECLogradouro CRota Classificacao 	CodigoCLI Convenio ConvenioCNC 
Logradouro MensalNotaOrgao PessoaFisica	QuinzenalSPC Situacao Tipo Left0Top� 	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
CLI_CODIGO	ParamType	ptUnknown    
TAgenteFin
AgenteFin1DatabaseNameDBguerraSQL.StringsSELECT * FROM AGENTE_FINANCEIROWHERE AGF_CODIGO=:AGF_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaAGENTE_FINANCEIROCentavosEntrada	CodigoAGF DiaPagamento EspecialJurosEntradaLiberarDescontoFPGRecebimentoAVistaSituacao TipoPagExclusivo LeftMTop� 	ParamDataDataType	ftIntegerName
AGF_CODIGO	ParamType	ptUnknown    TForma_de_PagamentoForma_de_Pagamento1DatabaseNameDBguerraSQL.Strings SELECT * FROM FORMA_DE_PAGAMENTOWHERE FPG_CODIGO=:FPG_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaFORMA_DE_PAGAMENTOCentavosEntrada	CodigoFPG 	CodigoTBP Compra
PrazoMedio Situacao TipoPagExclusivo LeftmTop� 	ParamDataDataType	ftIntegerName
FPG_CODIGO	ParamType	ptUnknown     