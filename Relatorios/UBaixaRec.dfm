�
 TRPT_BAIXAREC 0�I  TPF0Trpt_BaixaRecrpt_BaixaRecLeftwTopzWidthHeightCaptionrpt_BaixaRecColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeftTop Width� HeightABeforePrintreportBeforePrintColumnsColumnSpace DataSetTitulo_receber1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthAOptions.PageWidth� Options.PaperTypezptSheet TSZRBandzrbCabecalhoPaginaLeftTopWidth� HeightBeforePrintzrbCabecalhoPaginaBeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelzrlTituloRelatorioLeft TopWidth=HeightAlignToBand	FontStyle WordWrap	Caption%SIAC - Relatorio de Titulos Recebidos  TSZRSysData
ZRSysData2Left\TopWidth,Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width=HeightAlignToBand	FontStyle BeforePrintZRLabel3BeforePrintWordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel5Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================  	TSZRLabelZRLabel1Left\Top Width,Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabelzrlDescVencimentoLeftWTopWidth
HeightAlignToBand	FontStyle WordWrap	Caption
Vencimento  	TSZRLabelzrlDescCodigoLeft TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCodigo  	TSZRLabel
zrlDescSeqLeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionSeq.  	TSZRLabelzrlDescPedidoLeft	TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionPedido  	TSZRLabelzrlDescClienteLeft!TopWidth)HeightAlignToBand	FontStyle WordWrap	CaptionCliente  	TSZRLabelzrlDescValorDocLeftbTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption
Valor Doc.  	TSZRLabel	ZRLabel17LeftWTopWidth
HeightAlignToBand	FontStyle WordWrap	Caption	Pagamento  	TSZRLabelzrlDescValorPagLeft~TopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionValorPg  	TSZRLabelzrlDescTipoPagLeftKTopWidthHeightAlignToBand	FontStyle WordWrap	Caption	Tipo Pag.  	TSZRLabel	SZRLabel4Left	TopWidth"HeightAlignToBand	FontStyle WordWrap	Caption
Observacao  	TSZRLabelzrlDescCobrancaLeft,TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCobranca  	TSZRLabelzrlDescDescontoLeftuTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionDesconto  	TSZRLabel
SZRLabel15LeftHTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionConta Recebida  	TSZRLabel
zrlFiltrosLeft TopWidth� HeightAlignToBand	FontStyle WordWrap	  	TSZRLabel
SZRLabel17Left5TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionMov  	TSZRLabel
SZRLabel20Left9TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionConta Agendada  	TSZRLabelzrlDescNumeroLeftTopWidth	HeightAlignToBand	FontStyle WordWrap	CaptionNumero  	TSZRLabelzrlLinhaCabecalhoLeft TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================  	TSZRLabelzrlDescJurosLeftmTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionJuros  	TSZRLabel	SZRLabel1LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionFUN   TSZRBand
zrbDetalheLeftTopWidth� HeightBeforePrintzrbDetalheBeforePrintBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText	ZRDBText5LeftWTop Width
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldTRC_VENCIMENTO  
TSZRDBText	ZRDBText6Left Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
TRC_CODIGO  
TSZRDBText	ZRDBText4LeftTop WidthHeight	AlignmenttaCenterAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldTRC_SEQUENCIA  
TSZRDBText	ZRDBText8Left	Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
PDV_CODIGO  TSZRExpressionzrlValorDocLeftbTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CurrencyResetAfterPrint
Expression	TRC_VALORMask0.00  	TSZRLabelZRLabel7Left'Top WidthHeightAlignToBand	FontStyle WordWrap	Caption-  
TSZRDBText
SZRDBText2Left(Top Width"HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldCLI_RZ_SOCIAL  
TSZRDBText
SZRDBText3Left,TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
CPC_CODIGO  	TSZRLabelzrlTipoPagamentoLeftKTop WidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlContaRecebidaLeftHTopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlGerouMovimentoLeft5TopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlDataPagamentoLeftWTopWidth
HeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlContaAgendadaLeft9TopWidthHeightAlignToBand	FontStyle WordWrap	  
TSZRDBText
SZRDBText4LeftTop Width	HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
TRC_NUMERO  	TSZRLabelzrlObservacaoLeft	TopWidth"HeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlDescontoLeftuTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlJurosLeftmTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  
TSZRDBText	ZRDBText1Left!Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
CLI_CODIGO  	TSZRLabelzrlValorPagoLeft~TopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlCodigoFUNLeftTopWidthHeightAlignToBand	FontStyle WordWrap	   TSZRBandZRBand3LeftTopWidth� HeightBeforePrintZRBand3BeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData1Left}TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberTextPag.:  	TSZRLabelZRLabel8Left Top Width� HeightAlignToBand	FontStyle WordWrap	Caption�----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left TopWidth$HeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora   TSZRBandZRBand4LeftTopWidth� HeightBeforePrintZRBand4BeforePrintBandType	rbSummaryForceNewColumnForceNewPage 	TSZRLabel	ZRLabel21Left[TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionTotal:  	TSZRLabelzrlTotalValorLeftbTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionzrlTotalValor  	TSZRLabelzrlTotalPagoLeft~TopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabel
SZRLabel16Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionTotal de Registros:  	TSZRLabelzrlTotalRegistrosLeftTopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlTotalDescontoLeftuTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlTotalJurosLeftmTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabel	SZRLabel9Left:TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCredito:  	TSZRLabelzrlTotalCreditoLeftCTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	   	TSZRGroupzrbGrupoLeftTop	Width� HeightBeforePrintzrbGrupoBeforePrint
ExpressionAno+Mes
FooterBandzrbRodapeGrupoMasterreportForceNewColumnForceNewPage 	TSZRLabel	SZRLabel7Left Top WidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabel	SZRLabel5LeftTop WidthHeightAlignToBand	FontStyle WordWrap	   TSZRBandzrbRodapeGrupoLeftTopWidth� HeightBeforePrintzrbRodapeGrupoBeforePrintBandTyperbGroupFooterForceNewColumnForceNewPage 	TSZRLabel	SZRLabel8LeftXTopWidth	HeightAlignToBand	FontStyle WordWrap	Caption	SubTotal:  	TSZRLabelzrlSubTotalValorLeftbTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlTotalValorPagoLeft~TopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlLinhaSubTotalLeftXTop Width0HeightAlignToBand	FontStyle WordWrap	CaptionM-----------------------------------------------------------------------------  	TSZRLabel
SZRLabel12Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabelzrlSubTotalDescontoLeftuTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlSubTotalJurosLeftmTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabel	SZRLabel6Left:TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCredito:  	TSZRLabelzrlSubTotalCreditoLeftCTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	   	TSZRGroupzrbGrupoCaixaLeftTop
Width� HeightBeforePrintzrbGrupoCaixaBeforePrint
Expressiont5.ccx_grupoMasterreportForceNewColumnForceNewPage 	TSZRLabel
SZRLabel10Left Top WidthHeightAlignToBandAutoSize		FontStyle WordWrap	CaptionGrupo Conta Caixa:  	TSZRLabelzrlGrupoCaixaLeftTop Width)HeightAlignToBand	FontStyle WordWrap	  	TSZRLabel
SZRLabel18Left TopWidth<HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================    TTitulo_receberTitulo_receber1DatabaseNameDBguerraFiltered	SQL.StringsSELECT DISTINCT	T1.*, T2.CLI_RZ_SOCIAL, 6                DATEPART(dd, T1.TRC_PAGAMENTO) AS Dia,6                DATEPART(mm, T1.TRC_PAGAMENTO) AS Mes,7                DATEPART(yyyy, T1.TRC_PAGAMENTO) AS AnoFROM'        Titulo_a_receber T1, Cliente T2WHERE)        (T1.CNC_CODIGO=:CNC_CODIGO)   AND)        (T1.TRC_SITUACAO IN (2,3))    AND)        (T1.TRC_PAGAMENTO>=:DATA_INI) AND)        (T1.TRC_PAGAMENTO<:DATA_FIM)  AND*        (T1.TRC_VENCIMENTO>=:DATA_INI) AND*        (T1.TRC_VENCIMENTO<:DATA_FIM)  AND)        (T2.CNC_CODIGO=T1.CNC_CODIGO) AND%        (T2.CLI_CODIGO=T1.CLI_CODIGO)ORDER BY-        T2.CLI_RZ_SOCIAL,T1.TRC_SEQUENCIA ASC        CConfiguracaoDM.Configuracao1	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina	ChequeCNC ChequeDevolvido
ClienteCNC 	CodigoAGF 	CodigoBOL 	CodigoCCX CodigoCCXRecebimento 	CodigoCHQ 	CodigoCLI 	CodigoCPC 	CodigoFPE 	CodigoFUN 	CodigoMCC 	CodigoPDV 	CodigoTRC 	CodigoTRF FaturamentoCNC GerouMovimentoMovimentoContaCorrenteCNC PagamentoParcialProcesso 
Reabertura Situacao Tipo TipoPag 
TipoPedido 	TituloANT 	TituloORI 
Verificado VisitadoLeftTopc	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataTypeftDateNameDATA_INI	ParamType	ptUnknown DataTypeftDateNameDATA_FIM	ParamType	ptUnknown DataTypeftDateNameDATA_INI	ParamType	ptUnknown DataTypeftDateNameDATA_FIM	ParamType	ptUnknown   TIntegerFieldTitulo_receber1CCX_CODIGO	FieldName
CCX_CODIGOOriginTITULO_A_RECEBER.CCX_CODIGO  TIntegerFieldTitulo_receber1CLI_CODIGO	FieldName
CLI_CODIGOOriginTITULO_A_RECEBER.CLI_CODIGO  TIntegerFieldTitulo_receber1CNC_CODIGO	FieldName
CNC_CODIGOOriginTITULO_A_RECEBER.CNC_CODIGO  TIntegerFieldTitulo_receber1PDV_CODIGO	FieldName
PDV_CODIGOOriginTITULO_A_RECEBER.PDV_CODIGO  TIntegerFieldTitulo_receber1TRC_CODIGO	FieldName
TRC_CODIGOOriginTITULO_A_RECEBER.TRC_CODIGO  TFloatFieldTitulo_receber1TRC_CRED_CLI	FieldNameTRC_CRED_CLIOriginTITULO_A_RECEBER.TRC_CRED_CLI  TStringFieldTitulo_receber1TRC_CUSTODIA	FieldNameTRC_CUSTODIAOriginTITULO_A_RECEBER.TRC_CUSTODIA  TDateTimeFieldTitulo_receber1TRC_PAGAMENTO	FieldNameTRC_PAGAMENTOOriginTITULO_A_RECEBER.TRC_PAGAMENTO  TStringFieldTitulo_receber1TRC_SEQUENCIA	FieldNameTRC_SEQUENCIAOriginTITULO_A_RECEBER.TRC_SEQUENCIA  TIntegerFieldTitulo_receber1TRC_SITUACAO	FieldNameTRC_SITUACAOOriginTITULO_A_RECEBER.TRC_SITUACAO  TIntegerFieldTitulo_receber1TRC_TIPO_DOC	FieldNameTRC_TIPO_DOCOriginTITULO_A_RECEBER.TRC_TIPO_DOC  TIntegerFieldTitulo_receber1TRC_TIPO_PAG	FieldNameTRC_TIPO_PAGOriginTITULO_A_RECEBER.TRC_TIPO_PAG  TFloatFieldTitulo_receber1TRC_VALOR	FieldName	TRC_VALOROriginTITULO_A_RECEBER.TRC_VALOR  TFloatFieldTitulo_receber1TRC_VALOR_PAGO	FieldNameTRC_VALOR_PAGOOriginTITULO_A_RECEBER.TRC_VALOR_PAGO  TDateTimeFieldTitulo_receber1TRC_VENCIMENTO	FieldNameTRC_VENCIMENTOOriginTITULO_A_RECEBER.TRC_VENCIMENTO  TIntegerFieldTitulo_receber1AGF_CODIGO	FieldName
AGF_CODIGOOriginTITULO_A_RECEBER.TRC_CODIGO  TIntegerFieldTitulo_receber1CNC_CLIENTE	FieldNameCNC_CLIENTEOriginTITULO_A_RECEBER.PDV_CODIGO  TIntegerFieldTitulo_receber1TRC_TITULOANT	FieldNameTRC_TITULOANTOriginTITULO_A_RECEBER.AGF_CODIGO  TIntegerFieldTitulo_receber1CPC_CODIGO	FieldName
CPC_CODIGO  TStringFieldTitulo_receber1CLI_RZ_SOCIAL	FieldNameCLI_RZ_SOCIALSize(  TIntegerFieldTitulo_receber1BOL_CODIGO	FieldName
BOL_CODIGO  TIntegerFieldTitulo_receber1TRC_TRCORIGINAL	FieldNameTRC_TRCORIGINAL  TDateTimeFieldTitulo_receber1TRC_DTORIGINAL	FieldNameTRC_DTORIGINAL  TIntegerFieldTitulo_receber1USU_CODIGO	FieldName
USU_CODIGO  TDateTimeFieldTitulo_receber1TRC_DT_ALTERADO	FieldNameTRC_DT_ALTERADO  TDateTimeField Titulo_receber1TRC_RGB_DT_INICIO	FieldNameTRC_RGB_DT_INICIO  TDateTimeField"Titulo_receber1TRC_RGB_DT_SITUACAO	FieldNameTRC_RGB_DT_SITUACAO  TIntegerFieldTitulo_receber1TRC_RGB_SITUACAO	FieldNameTRC_RGB_SITUACAO  TSmallintFieldTitulo_receber1TRC_RGB_VISITADO	FieldNameTRC_RGB_VISITADO  TDateTimeField"Titulo_receber1TRC_RGB_DT_PROMESSA	FieldNameTRC_RGB_DT_PROMESSA  TIntegerFieldTitulo_receber1TRC_PROCESSO	FieldNameTRC_PROCESSO  TDateTimeField"Titulo_receber1TRC_RGB_DT_VISITADO	FieldNameTRC_RGB_DT_VISITADO  TStringFieldTitulo_receber1TRC_OBSERVACAO	FieldNameTRC_OBSERVACAO	FixedChar	Size�   TIntegerFieldTitulo_receber1Mes	FieldNameMes  TIntegerFieldTitulo_receber1Ano	FieldNameAno  TStringFieldTitulo_receber1TRC_NUMERO	FieldName
TRC_NUMERO	FixedChar	  TIntegerFieldTitulo_receber1CCX_CODIGO_REC	FieldNameCCX_CODIGO_REC  TSmallintField"Titulo_receber1TRC_GEROU_MOVIMENTO	FieldNameTRC_GEROU_MOVIMENTO  TIntegerFieldTitulo_receber1TRC_NOTA_SERVICO	FieldNameTRC_NOTA_SERVICO  TDateTimeFieldTitulo_receber1TRC_DT_CADASTRO	FieldNameTRC_DT_CADASTRO  TIntegerFieldTitulo_receber1Dia	FieldNameDia  TIntegerFieldTitulo_receber1ccx_grupo	FieldName	ccx_grupo  TFloatFieldTitulo_receber1TRC_DESCONTO	FieldNameTRC_DESCONTO  TFloatFieldTitulo_receber1TRC_JUROS	FieldName	TRC_JUROS  TIntegerFieldTitulo_receber1CNC_ORIGEM	FieldName
CNC_ORIGEM  TIntegerField!Titulo_receber1TRC_PEDIDO_SERVICO	FieldNameTRC_PEDIDO_SERVICO  TIntegerFieldTitulo_receber1TRC_TIPO_PEDIDO	FieldNameTRC_TIPO_PEDIDO  TDateTimeField$Titulo_receber1TRC_DT_EMISSAO_BOLETO	FieldNameTRC_DT_EMISSAO_BOLETO  TDateTimeField(Titulo_receber1TRC_DT_RECEBIMENTO_BOLETO	FieldNameTRC_DT_RECEBIMENTO_BOLETO  TIntegerFieldTitulo_receber1FPE_CODIGO	FieldName
FPE_CODIGO  TIntegerField'Titulo_receber1CNC_FATURAMENTO_PENDENTE	FieldNameCNC_FATURAMENTO_PENDENTE  TDateTimeField!Titulo_receber1TRC_DT_COMPETENCIA	FieldNameTRC_DT_COMPETENCIA  TIntegerFieldTitulo_receber1TRC_EQUIFAX	FieldNameTRC_EQUIFAX  TDateTimeFieldTitulo_receber1TRC_DT_EQUIFAX	FieldNameTRC_DT_EQUIFAX  TStringField!Titulo_receber1TRC_AGENCIA_NUMERO	FieldNameTRC_AGENCIA_NUMERO	FixedChar	Size2  TDateTimeFieldTitulo_receber1TRC_DT_CHEQUE	FieldNameTRC_DT_CHEQUE  TIntegerFieldTitulo_receber1TRC_SIT_CHEQUE	FieldNameTRC_SIT_CHEQUE  TIntegerFieldTitulo_receber1TRC_REABERTURA	FieldNameTRC_REABERTURA  TIntegerFieldTitulo_receber1TRC_VERIFICADO	FieldNameTRC_VERIFICADO  TDateTimeField Titulo_receber1TRC_DT_VERIFICADO	FieldNameTRC_DT_VERIFICADO  TIntegerFieldTitulo_receber1CHQ_CODIGO	FieldName
CHQ_CODIGO  TIntegerFieldTitulo_receber1CNC_CHEQUE	FieldName
CNC_CHEQUE  TIntegerField#Titulo_receber1TRC_CHEQUE_DEVOLVIDO	FieldNameTRC_CHEQUE_DEVOLVIDO  TIntegerField$Titulo_receber1TRC_PAGAMENTO_PARCIAL	FieldNameTRC_PAGAMENTO_PARCIAL  TIntegerField+Titulo_receber1CNC_MOVIMENTO_CONTA_CORRENTE	FieldNameCNC_MOVIMENTO_CONTA_CORRENTE  TIntegerFieldTitulo_receber1MCC_CODIGO	FieldName
MCC_CODIGO  TStringFieldTitulo_receber1TRC_CV	FieldNameTRC_CV	FixedChar	  TStringFieldTitulo_receber1TRC_LOCAL	FieldName	TRC_LOCAL	FixedChar	Sized  TIntegerFieldTitulo_receber1TRF_CODIGO	FieldName
TRF_CODIGO  TIntegerFieldTitulo_receber1FUN_CODIGO	FieldName
FUN_CODIGO   TConta_de_CaixaConta_de_Caixa1DatabaseNameDBguerraSQL.StringsSELECT * FROM CONTA_DE_CAIXAWHERE CCX_CODIGO=:CCX_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaCONTA_DE_CAIXAAvulso	CodigoCCX Grupo Situacao VisualizarCaixaVisualizarFinanceiroLeft0Topc	ParamDataDataType	ftUnknownName
CCX_CODIGO	ParamType	ptUnknown     