�
 TRPT_FLUXOCAIXADIALBM 0 Q  TPF0Trpt_FluxoCaixaDiaLBMrpt_FluxoCaixaDiaLBMLeft� TophWidth�Height`Captionrpt_FluxoCaixaDiaLBMColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeftTop Width� HeightABeforePrintreportBeforePrintColumnsColumnSpace DataSetMovimento_caixa1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOn0Options.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthAOptions.PageWidth� Options.PaperTypezptSheet TSZRBandzrbCabecalhoLeftTopWidth� HeightBeforePrintzrbCabecalhoBeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth/HeightAlignToBand	FontStyle WordWrap	CaptionSIAC - Fluxo de Caixa Diario  TSZRSysData
ZRSysData2LeftiTopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width/HeightAlignToBand	FontStyle BeforePrintZRLabel3BeforePrintWordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel5Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================  	TSZRLabelZRLabel1LeftiTop WidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabel	ZRLabel14LeftrTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionCredito  	TSZRLabel	ZRLabel21Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCod.  	TSZRLabel	ZRLabel22LeftTopWidth	HeightAlignToBand	FontStyle WordWrap	CaptionNumero  	TSZRLabelzrlDiaFluxoLeftTopWidth
HeightAlignToBand	FontStyle WordWrap	CaptionzrlDiaFluxo  	TSZRLabel	SZRLabel2Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionDia:  	TSZRLabel
SZRLabel14LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionConta Recebimento  	TSZRLabelZRLabel6Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================  	TSZRLabel
SZRLabel12Left%TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionPedido  	TSZRLabelzrlDescCodigoCLILeft3TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCliente  	TSZRLabel
SZRLabel18Left?TopWidth$HeightAlignToBand	FontStyle WordWrap	Caption	Descricao  	TSZRLabel
SZRLabel19LeftdTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionC/D  	TSZRLabel
SZRLabel20LefthTopWidth	HeightAlignToBand	FontStyle WordWrap	CaptionCodigo  	TSZRLabel
zrlFiltrosLeftTopWidthwHeightAlignToBand	FontStyle WordWrap	  	TSZRLabel	SZRLabel1Left}TopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionDebito  	TSZRLabel
SZRLabel13Left-TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionSeq.   TSZRBand
zrbDetalheLeftTopWidth� HeightBeforePrintzrbDetalheBeforePrintBandTyperbDetailForceNewColumnForceNewPage TSZRExpressionZRExpression1LeftrTop Width
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CurrencyResetAfterPrint
ExpressionIF(MVC_DC='C',MVC_VALOR,0)Mask0.00  TSZRExpressionZRExpression2Left}Top Width
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CurrencyResetAfterPrint
ExpressionIF(MVC_DC='D',MVC_VALOR,0)Mask0.00  
TSZRDBTextzrlCodigoPDVLeft%Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetMovimento_caixa1	DataFieldPDV  	TSZRLabelzrlContaAgendadaLeftTop WidthHeightAlignToBand	FontStyle WordWrap	  
TSZRDBText
SZRDBText1Left Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetMovimento_caixa1	DataFieldCCX_CODIGO_REC  
TSZRDBText	zrlNumeroLeftTop Width	HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetMovimento_caixa1	DataFieldMVC_TIT_NUMERO  
TSZRDBTextzrlCodigoMVCLefthTop Width	HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetMovimento_caixa1	DataField
MVC_CODIGO  	TSZRLabelzrlCDLeftdTop WidthHeightAlignToBand	FontStyle WordWrap	  
TSZRDBTextzdbCodigoCLILeft3Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetMovimento_caixa1	DataFieldCodigoCliente  	TSZRLabelzrlDescricaoLeft?Top Width$HeightAlignToBand	FontStyle WordWrap	  	TSZRLabel
zrlTotParcLeft-Top WidthHeightAlignToBand	FontStyle WordWrap	   TSZRBandzrbSubTotalLeftTop	Width� Height	
AfterPrintzrbSubTotalAfterPrintBeforePrintzrbSubTotalBeforePrintBandTyperbGroupFooterForceNewColumnForceNewPage 	TSZRLabel	ZRLabel18Left Top Width� HeightAlignToBand	FontStyle WordWrap	Caption�----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabel	ZRLabel20LeftdTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionSubtotal    :  	TSZRLabel	ZRLabel34LeftrTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption	ZRLabel34  	TSZRLabel	SZRLabel5LeftdTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionTotal Dia   :  	TSZRLabel	SZRLabel6LeftuTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption	SZRLabel6  	TSZRLabel	SZRLabel7Left}TopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption	SZRLabel7  	TSZRLabel	SZRLabel8LeftTopWidthHeightAlignToBand	FontStyle WordWrap	Caption______________________________  	TSZRLabel	SZRLabel9Left,TopWidthHeightAlignToBand	FontStyle WordWrap	Caption______________________________  	TSZRLabel
SZRLabel10LeftTopWidthHeight	AlignmenttaCenterAlignToBand	FontStyle WordWrap	CaptionCaixa  	TSZRLabel
SZRLabel11Left,TopWidthHeight	AlignmenttaCenterAlignToBand	FontStyle WordWrap	CaptionGerente  	TSZRLabelzrlDescDinheiroLeft
TopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionDinheiro  	TSZRLabelzrlDescChequeLeftTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionCheque  	TSZRLabelzrlDescOutrosLeft"TopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionOutros  	TSZRLabelzrlDescAtualLeft TopWidth	HeightAlignToBand	FontStyle WordWrap	CaptionAtual:  	TSZRLabelzrlGeralDinheiroLeft
TopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlGeralChequeLeftTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlGeralOutrosLeft"TopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlTotalGeralLeft-TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabel	zrlOutrosLeft?TopWidth
Height	AlignmenttaRightJustifyAlignToBandEnabled	FontStyle WordWrap	  	TSZRLabelzrlDinheiroLeftFTopWidth
Height	AlignmenttaRightJustifyAlignToBandEnabled	FontStyle WordWrap	  	TSZRLabel	zrlChequeLeftCTopWidth
Height	AlignmenttaRightJustifyAlignToBandEnabled	FontStyle WordWrap	  	TSZRLabelzrlDescAnteriorLeft TopWidth	HeightAlignToBand	FontStyle WordWrap	Caption	Anterior:  	TSZRLabelzrlGeralDinheiroAntLeft
TopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlGeralChequeAntLeftTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlGeralOutrosAntLeft"TopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlTotalGeralAntLeft-TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabel
SZRLabel21Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionTotal de Registros:  	TSZRLabelzrlTotalRegistrosLeftTopWidthHeightAlignToBand	FontStyle WordWrap	   TSZRBandzrbTotalLeftTopWidth� HeightBeforePrintzrbTotalBeforePrintBandType	rbSummaryForceNewColumnForceNewPage 	TSZRLabelZRLabel4Left Top Width� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================  	TSZRLabel	ZRLabel17LeftdTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionTotal       :  	TSZRLabel	ZRLabel30LeftrTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption	ZRLabel30  	TSZRLabel	ZRLabel31Left}TopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption	ZRLabel31  	TSZRLabel	SZRLabel3LeftdTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionGeral do Dia:  	TSZRLabel	SZRLabel4LeftwTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption	SZRLabel4  	TSZRLabel
SZRLabel15LeftGTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCreditoCLI:  	TSZRLabelzrlTotalCreditoLeftSTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption	ZRLabel30   	TSZRGroupzrbGrupoCAXLeftTopWidth� Height
Expression
CAX_CODIGO
FooterBandzrbSubTotalMasterreportForceNewColumnForceNewPage 	TSZRLabel	ZRLabel19Left Top WidthHeightAlignToBand	FontStyle WordWrap	CaptionCaixa.:  
TSZRDBText	ZRDBText7LeftTop WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetMovimento_caixa1	DataField
CAX_CODIGO  
TSZRDBText	ZRDBText8LeftTop Width)HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetMovimento_caixa1	DataFieldCAX_DESCRICAO   TSZRBandZRBand5LeftTopWidth� HeightBeforePrintZRBand5BeforePrintBandTyperbPageFooterForceNewColumnForceNewPage 	TSZRLabel	ZRLabel15Left Top Width� HeightAlignToBand	FontStyle WordWrap	Caption�----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabel	ZRLabel16Left TopWidth#HeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora  TSZRSysData
ZRSysData3Left|TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberTextPag.:  	TSZRLabel
zrlUsuarioLeft%TopWidth,HeightAlignToBand	FontStyleesItalic WordWrap	    TMovimento_caixaMovimento_caixa1OnCalcFieldsMovimento_caixa1CalcFieldsDatabaseNameDBguerraFiltered	SQL.Strings SELECT * FROM Movimento_de_caixaWHERE (MVC_DATA>=:DATA_INI) AND&              (MVC_DATA<:DATA_FIM) AND&              (CNC_CODIGO=:CNC_CODIGO)"ORDER BY CAX_CODIGO,MVC_CODIGO ASC 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaMOVIMENTO_DE_CAIXA	CNCTitulo Cc 	ChequeCNC 	CodigoCAX 	CodigoCCX CodigoCCXRecebimento 	CodigoCHQ 	CodigoMVC 	CodigoTIT 
MaquinaMVC NaoContabilOrigemExtorno Tipo TipoPGTO LeftTopK	ParamDataDataTypeftDateNameDATA_INI	ParamType	ptUnknown DataTypeftDateNameDATA_FIM	ParamType	ptUnknown DataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown   TIntegerFieldMovimento_caixa1MVC_CODIGO	FieldName
MVC_CODIGOOriginMOVIMENTO_DE_CAIXA.MVC_CODIGO  TIntegerFieldMovimento_caixa1CNC_CODIGO	FieldName
CNC_CODIGOOriginMOVIMENTO_DE_CAIXA.CNC_CODIGO  TIntegerFieldMovimento_caixa1CCX_CODIGO	FieldName
CCX_CODIGOOriginMOVIMENTO_DE_CAIXA.CCX_CODIGO  TIntegerFieldMovimento_caixa1CAX_CODIGO	FieldName
CAX_CODIGOOriginMOVIMENTO_DE_CAIXA.CAX_CODIGO  TStringFieldMovimento_caixa1MVC_DESCRICAO	FieldNameMVC_DESCRICAOOrigin MOVIMENTO_DE_CAIXA.MVC_DESCRICAOSize<  TDateTimeFieldMovimento_caixa1MVC_DATA	FieldNameMVC_DATAOriginMOVIMENTO_DE_CAIXA.MVC_DATA  TStringFieldMovimento_caixa1MVC_DC	FieldNameMVC_DCOriginMOVIMENTO_DE_CAIXA.MVC_DCSize  TFloatFieldMovimento_caixa1MVC_VALOR	FieldName	MVC_VALOROriginMOVIMENTO_DE_CAIXA.MVC_VALOR  TStringFieldMovimento_caixa1MVC_FLAG	FieldNameMVC_FLAGOriginMOVIMENTO_DE_CAIXA.MVC_FLAG  TIntegerFieldMovimento_caixa1MVC_TIT_TIPO	FieldNameMVC_TIT_TIPOOriginMOVIMENTO_DE_CAIXA.MVC_TIT_TIPO  TIntegerFieldMovimento_caixa1MVC_TIT_CC	FieldName
MVC_TIT_CCOriginMOVIMENTO_DE_CAIXA.MVC_TIT_CC  TStringFieldMovimento_caixa1MVC_TIT_NUMERO	FieldNameMVC_TIT_NUMEROOrigin!MOVIMENTO_DE_CAIXA.MVC_TIT_NUMERO  TIntegerFieldMovimento_caixa1MVC_TIPO_PGTO	FieldNameMVC_TIPO_PGTOOrigin MOVIMENTO_DE_CAIXA.MVC_TIPO_PGTO  TStringField!Movimento_caixa1MVC_TIT_SEQUENCIA	FieldNameMVC_TIT_SEQUENCIAOrigin$MOVIMENTO_DE_CAIXA.MVC_TIT_SEQUENCIA  TIntegerFieldMovimento_caixa1CNC_TITULO	FieldName
CNC_TITULOOriginMOVIMENTO_DE_CAIXA.CCX_CODIGO  TIntegerFieldMovimento_caixa1TIT_CODIGO	FieldName
TIT_CODIGOOrigin MOVIMENTO_DE_CAIXA.MVC_DESCRICAO  TStringFieldMovimento_caixa1MVC_PT	FieldNameMVC_PTOriginMOVIMENTO_DE_CAIXA.CAX_CODIGOSize  TStringFieldMovimento_caixa1MVC_OBSERVACAO1	FieldNameMVC_OBSERVACAO1Origin+DBGUERRA.MOVIMENTO_DE_CAIXA.MVC_OBSERVACAO1Size�   TDateTimeFieldMovimento_caixa1MVC_COMPETENCIA	FieldNameMVC_COMPETENCIAOrigin+DBGUERRA.MOVIMENTO_DE_CAIXA.MVC_COMPETENCIA  TIntegerFieldMovimento_caixa1USU_CODIGO	FieldName
USU_CODIGOOrigin&DBGUERRA.MOVIMENTO_DE_CAIXA.USU_CODIGO  TDateTimeFieldMovimento_caixa1MVC_DT_ALTERADO	FieldNameMVC_DT_ALTERADOOrigin+DBGUERRA.MOVIMENTO_DE_CAIXA.MVC_DT_ALTERADO  TIntegerFieldMovimento_caixa1CCX_CODIGO_REC	FieldNameCCX_CODIGO_RECOrigin*DBGUERRA.MOVIMENTO_DE_CAIXA.CCX_CODIGO_REC  TStringFieldMovimento_caixa1PDV	FieldKindfkCalculated	FieldNamePDV
Calculated	  TStringFieldMovimento_caixa1CodigoCliente	FieldKindfkCalculated	FieldNameCodigoCliente
Calculated	  TStringFieldMovimento_caixa1Nota	FieldKindfkCalculated	FieldNameNota
Calculated	  TIntegerField Movimento_caixa1MVC_NAO_CONTABIL	FieldNameMVC_NAO_CONTABILOrigin,DBGUERRA.MOVIMENTO_DE_CAIXA.MVC_NAO_CONTABIL  TIntegerField"Movimento_caixa1MVC_ORIGEM_EXTORNO	FieldNameMVC_ORIGEM_EXTORNOOrigin.DBGUERRA.MOVIMENTO_DE_CAIXA.MVC_ORIGEM_EXTORNO  TFloatFieldMovimento_caixa1MVC_JUROS	FieldName	MVC_JUROSOrigin%DBGUERRA.MOVIMENTO_DE_CAIXA.MVC_JUROS  TFloatFieldMovimento_caixa1MVC_DESCONTO	FieldNameMVC_DESCONTOOrigin(DBGUERRA.MOVIMENTO_DE_CAIXA.MVC_DESCONTO  TFloatFieldMovimento_caixa1MVC_CRED_CLI	FieldNameMVC_CRED_CLIOrigin(DBGUERRA.MOVIMENTO_DE_CAIXA.MVC_CRED_CLI  TFloatFieldMovimento_caixa1MVC_VALOR_DOC	FieldNameMVC_VALOR_DOCOrigin)DBGUERRA.MOVIMENTO_DE_CAIXA.MVC_VALOR_DOC  TIntegerFieldMovimento_caixa1MVC_MAQUINA	FieldNameMVC_MAQUINAOrigin'DBGUERRA.MOVIMENTO_DE_CAIXA.MVC_MAQUINA  TDateTimeFieldMovimento_caixa1MVC_DT_CHEQUE	FieldNameMVC_DT_CHEQUEOrigin)DBGUERRA.MOVIMENTO_DE_CAIXA.MVC_DT_CHEQUE  TStringFieldMovimento_caixa1ObsTitulo	FieldKindfkCalculated	FieldName	ObsTituloSized
Calculated	   TPedido_de_VendaPedido_de_Venda1DatabaseNameDBguerraFiltered	SQL.StringsSELECT * FROM PEDIDO_DE_VENDA WHERE CNC_CODIGO=:CNC_CODIGO ANDPDV_CODIGO=:PDV_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaPEDIDO_DE_VENDA	Arquiteto 
ClienteCNC 	CodigoAGF 	CodigoCLI 	CodigoCNT 	CodigoFPE 	CodigoFPG 	CodigoPDV CodigoPDVOrigem CodigoPacote 
DiasReserv EmUsu EntregaDepositoFaturamentoCNC Garantia GrupoEspecialImpressoListado 
MaquinaPDV MediaPagamento 	NotaCupom 
NotaFiscal ServicoSituacao TipoDeVenda TipoPag TituloGeradoLeftsTopK	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
PDV_CODIGO	ParamType	ptUnknown    TTitulo_receberTitulo_receber1DatabaseNameDBguerraFiltered	SQL.StringsSELECT T1.*,T2.CLI_RZ_SOCIAL$FROM TITULO_A_RECEBER T1, CLIENTE T2%WHERE T1.CLI_CODIGO=T2.CLI_CODIGO ANDT1.CNC_CODIGO=T2.CNC_CODIGO ANDT1.CNC_CODIGO=:CNC_CODIGO AND T1.TRC_CODIGO=:TRC_CODIGO ANDT1.TRC_NUMERO=:TRC_NUMERO ANDT1.TRC_SEQUENCIA=:TRC_SEQUENCIA  	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina	ChequeCNC ChequeDevolvido
ClienteCNC 	CodigoAGF 	CodigoBOL 	CodigoCCX CodigoCCXRecebimento 	CodigoCHQ 	CodigoCLI 	CodigoCPC 	CodigoFPE 	CodigoFUN 	CodigoMCC 	CodigoPDV 	CodigoTRC 	CodigoTRF FaturamentoCNC GerouMovimentoMovimentoContaCorrenteCNC PagamentoParcialProcesso 
Reabertura Situacao Tipo TipoPag 
TipoPedido 	TituloANT 	TituloORI 
Verificado VisitadoLeft6TopK	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
TRC_CODIGO	ParamType	ptUnknown DataTypeftStringName
TRC_NUMERO	ParamType	ptUnknown DataTypeftStringNameTRC_SEQUENCIA	ParamType	ptUnknown    TConta_de_CaixaConta_de_Caixa1DatabaseNameDBguerraSQL.StringsSELECT CCX_CODIGO,CCX_DESCRICAOFROM CONTA_DE_CAIXAWHERE CCX_CODIGO=:CCX_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaCONTA_DE_CAIXAAvulso	CodigoCCX Grupo Situacao VisualizarCaixaVisualizarFinanceiroLeftUTopk	ParamDataDataType	ftIntegerName
CCX_CODIGO	ParamType	ptUnknown    TTitulo_a_pagarTitulo_a_pagar1DatabaseNameDBguerra	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina	ChequeCNC 	CodigoBNF 	CodigoCCX CodigoCCXRecebimento 	CodigoCHQ0	CodigoFOR 	CodigoMCC 	CodigoPCP 	CodigoTPG 	CodigoTRN GerouMovimentoMovimentoContaCorrenteCNC Periodo Situacao TipoDoc TipoPag 	TituloAnt 	TituloOri LeftTTopK  TPedido_de_CompraPedido_de_Compra1DatabaseNameDBguerraSQL.StringsSELECT * FROM PEDIDO_DE_COMPRA WHERE CNC_CODIGO=:CNC_CODIGO ANDPCP_CODIGO=:PCP_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaPEDIDO_DE_COMPRAArquivoGerado 
CNCEntrega 	CodigoCNT 	CodigoFOR 	CodigoFPE 	CodigoFPG CodigoFPGTRN 	CodigoOPF 	CodigoPCP 	CodigoTPG 	CodigoTRN Conhecimento Fabricar	FreteNotaLJ4
NotaFiscal PrecoFinalDefinidoSNSelo Situacao 	TipoFrete LeftTopk	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
PCP_CODIGO	ParamType	ptUnknown    TPacote_de_CreditoPacote_de_Credito1DatabaseNameDBguerraSQL.StringsSELECT * FROM PACOTE_DE_CREDITOWHERE PCR_CODIGO=:PCR_CODIGOAND CNC_CODIGO=:CNC_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaPACOTE_DE_CREDITO
ClienteCNC 	CodigoAGF 	CodigoCLI 	CodigoFPG 	CodigoFUN 	CodigoPCR Situacao TipoPag LefttTopk	ParamDataDataType	ftIntegerName
PCR_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown    TTitulo_receberTitulo_receber2DatabaseNameDBguerraFiltered	SQL.Strings3SELECT TRC_SEQUENCIA AS TOTAL FROM TITULO_A_RECEBERWHERE PDV_CODIGO=:PDV_CODIGOAND CNC_CODIGO=:CNC_CODIGOORDER BY TRC_SEQUENCIA 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina	ChequeCNC ChequeDevolvido
ClienteCNC 	CodigoAGF 	CodigoBOL 	CodigoCCX CodigoCCXRecebimento 	CodigoCHQ 	CodigoCLI 	CodigoCPC 	CodigoFPE 	CodigoFUN 	CodigoMCC 	CodigoPDV 	CodigoTRC 	CodigoTRF FaturamentoCNC GerouMovimentoMovimentoContaCorrenteCNC PagamentoParcialProcesso 
Reabertura Situacao Tipo TipoPag 
TipoPedido 	TituloANT 	TituloORI 
Verificado VisitadoLeft6Topk	ParamDataDataType	ftUnknownName
PDV_CODIGO	ParamType	ptUnknown DataType	ftUnknownName
CNC_CODIGO	ParamType	ptUnknown     