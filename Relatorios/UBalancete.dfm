�
 TRPT_BALANCETE 0�  TPF0Trpt_Balanceterpt_BalanceteLeft� TopsWidth�Height�Captionrpt_BalanceteColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeft Top Width� Height-ColumnsColumnSpace DataSetTitulo_receber1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.Left Margins.TopMargins.Right Margins.Bottom Options.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLength-Options.PageWidth� Options.PaperTypezptSheet TSZRBandzrbCabecalhoLeft TopWidth� HeightBeforePrintzrbCabecalhoBeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth&HeightAlignToBand	FontStyle WordWrap	CaptionSIAC - Balancete  TSZRSysData
ZRSysData2LeftiTopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width&HeightAlignToBand	FontStyle WordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel1LeftiTop WidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabelzrlDescCreditoLeftmTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionCredito  	TSZRLabel
zrlFiltrosLeft TopWidth� HeightAlignToBand	FontStyle WordWrap	  	TSZRLabelZRLabel5Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�=======================================================================================================================================  	TSZRLabel	SZRLabel9Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�---------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabelzrlDescDescontoLeft{TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	CaptionSaldo  	TSZRLabelzrlDescDebitoLeft_TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionDebito  	TSZRLabel	SZRLabel1LeftTopWidth)HeightAlignToBand	FontStyle WordWrap	Caption	Descricao   TSZRBand
zrbDetalheLeft TopWidth� HeightBeforePrintzrbDetalheBeforePrintBandTyperbDetailForceNewColumnForceNewPage 	TSZRLabelzrlCreditoMovimentoLeftmTop WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlDebitoMovimentoLeft_Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlSaldoMovimentoLeft{Top WidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	  	TSZRLabelzrlDescContaCaixaLeftTop Width)HeightAlignToBand	FontStyle WordWrap	   TSZRBandzrbRodapePaginaLeft TopWidth� HeightBeforePrintzrbRodapePaginaBeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData1Left|TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberTextPag.:  	TSZRLabelZRLabel8Left Top Width� HeightAlignToBand	FontStyle WordWrap	Caption�---------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left TopWidth!HeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora  	TSZRLabel
zrlUsuarioLeft"TopWidth,HeightAlignToBand	FontStyleesItalic WordWrap	   TSZRBand
zrlSumarioLeft TopWidth� HeightBeforePrintzrlSumarioBeforePrintBandType	rbSummaryForceNewColumnForceNewPage 	TSZRLabel	SZRLabel3Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================  	TSZRLabelzrlDescReceitaLeftHTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionSaldo Geral  	TSZRLabelzrlSaldoGeralLeft{TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	  	TSZRLabelzrlCreditoGeralLeftmTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlDebitoGeralLeft_TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	   	TSZRGroupzrbGrupoTipoLeft TopWidth� HeightBeforePrintzrbGrupoTipoBeforePrint
Expression	CCX_GRUPO
FooterBandzrbRodapeTipoMasterreportForceNewColumnForceNewPage 	TSZRLabelzrlDescricaoGrupoConta2Left Top Width)HeightAlignToBand	FontStyle WordWrap	   TSZRBandzrbRodapeTipoLeft Top	Width� HeightBeforePrintzrbRodapeTipoBeforePrintBandTyperbGroupFooterForceNewColumnForceNewPage 	TSZRLabelzrlDescricaoGrupoContaLeft TopWidth)HeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlDebitoGrupoLeft_TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlCreditoGrupoLeftmTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlSaldoGrupoLeft{TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	  	TSZRLabel	zrlLinha3LeftZTop Width-HeightAlignToBand	FontStyle WordWrap	Caption.----------------------------------------------    TTitulo_receberTitulo_receber1DatabaseNameDBguerraFiltered	SQL.StringsSELECT DISTINCT+	T1.CCX_CODIGO,T1.CLI_CODIGO,T1.CNC_CODIGO,"                T1.TRC_DTORIGINAL,-	T1.PDV_CODIGO,T1.TRC_CODIGO,T1.TRC_CRED_CLI,0	T1.TRC_CUSTODIA,T1.TRC_NUMERO,T1.TRC_PAGAMENTO,2	T1.TRC_SEQUENCIA,T1.TRC_SITUACAO,T1.TRC_TIPO_DOC,0	T1.TRC_TIPO_PAG,T1.TRC_VALOR,T1.TRC_VALOR_PAGO,1	T1.TRC_VENCIMENTO,T1.AGF_CODIGO,T2.CLI_RZ_SOCIAL8                DATEPART(mm, T1.TRC_VENCIMENTO) AS Mes, ;                DATEPART(yyyy, T1.TRC_VENCIMENTO) AS Ano '+$FROM	Titulo_a_receber T1, Cliente T2WHERE*       (T1.CLI_CODIGO = T2.CLI_CODIGO) AND+       (T1.CNC_CLIENTE = T2.CNC_CODIGO) AND)       (T1.TRC_SITUACAO IN (0,1,8,9)) AND)       (T1.TRC_VENCIMENTO>=:DATA_INI) AND(       (T1.TRC_VENCIMENTO<:DATA_FIM) AND&       (T1.CNC_CODIGO=:CNC_CODIGO) AND$       (T2.CNC_CODIGO=T1.CNC_CODIGO)ORDER BY,       T2.CLI_RZ_SOCIAL,T1.TRC_SEQUENCIA ASC     CConfiguracaoDM.Configuracao1	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina	ChequeCNC ChequeDevolvido
ClienteCNC 	CodigoAGF 	CodigoBOL 	CodigoCCX CodigoCCXRecebimento 	CodigoCHQ 	CodigoCLI 	CodigoCPC 	CodigoFPE 	CodigoFUN 	CodigoMCC 	CodigoPDV 	CodigoTRC 	CodigoTRF FaturamentoCNC GerouMovimentoMovimentoContaCorrenteCNC PagamentoParcialProcesso 
Reabertura Situacao Tipo TipoPag 
TipoPedido 	TituloANT 	TituloORI 
Verificado VisitadoLeftVTop�  TTitulo_receberTitulo_receber2DatabaseNameDBguerraSQL.Strings#SELECT SUM(TRC_VALOR_PAGO) AS TOTALFROM TITULO_A_RECEBER WHERE TRC_TIPO_PAG=:TRC_TIPO_PAG 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina	ChequeCNC ChequeDevolvido
ClienteCNC 	CodigoAGF 	CodigoBOL 	CodigoCCX CodigoCCXRecebimento 	CodigoCHQ 	CodigoCLI 	CodigoCPC 	CodigoFPE 	CodigoFUN 	CodigoMCC 	CodigoPDV 	CodigoTRC 	CodigoTRF FaturamentoCNC GerouMovimentoMovimentoContaCorrenteCNC PagamentoParcialProcesso 
Reabertura Situacao Tipo TipoPag 
TipoPedido 	TituloANT 	TituloORI 
Verificado VisitadoLeft8Top�	ParamDataDataType	ftIntegerNameTRC_TIPO_PAG	ParamType	ptUnknown     