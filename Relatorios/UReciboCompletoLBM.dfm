�
 TRPT_RECIBOCOMPLETOLBM 0�6  TPF0Trpt_ReciboCompletoLBMrpt_ReciboCompletoLBMLeft�Top� BorderIconsbiSystemMenu
biMaximize BorderStylebsDialogCaption
Recibo LBMClientHeight�ClientWidth1Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormClosePixelsPerInch`
TextHeight 	TSZReportreportLeft Top WidthPHeight ColumnsColumnSpace DataSetTitulo_receber1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLength Options.PageWidthPOptions.PaperTypezptSheet TSZRBandZRBand1LeftTopWidthNHeightBeforePrintZRBand1BeforePrintBandTyperbDetailForceNewColumnForceNewPage	 	TSZRLabelZRLabel2Left TopWidth/HeightAlignToBand	FontStyle WordWrap	CaptionSIAC - Recibo  TSZRSysData
ZRSysData2Left0TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width/HeightAlignToBand	FontStyle BeforePrintZRLabel3BeforePrintWordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel5Left TopWidthNHeightAlignToBand	FontStyle WordWrap	CaptionN==============================================================================  	TSZRLabelZRLabel1Left0Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabelZRLabel6LeftTopWidthHeightAlignToBand	FontStyle WordWrap	Caption** R E C I B O **  
TSZRDBText	ZRDBText1LeftATopWidth	HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1  	TSZRLabelZRLabel7LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionRecebemos do(a) Sr(a)  	TSZRLabelZRLabel9LeftTopWidthHeightAlignToBand	FontStyle WordWrap	Captiona quantia discriminada de: R$  	TSZRLabel	ZRLabel10LeftTop
Width!HeightAlignToBand	FontStyle WordWrap	Caption!referente ao pagamento do pedido:  
TSZRDBText	ZRDBText2LeftTopWidth6HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldCliente  	TSZRLabel	ZRLabel21LeftTopWidthLHeightAlignToBand	FontStyleesBold WordWrap	  
TSZRDBText
ZRDBText10Left"Top
WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
PDV_CODIGO  	TSZRLabel	ZRLabel16Left*Top
WidthHeightAlignToBand	FontStyle WordWrap	Caption   Nº Título:  
TSZRDBText
ZRDBText12Left5Top
Width	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
TRC_CODIGO  
TSZRDBText
ZRDBText13Left5TopWidth	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldTRC_SEQUENCIA  	TSZRLabel	ZRLabel17Left*TopWidthHeightAlignToBand	FontStyle WordWrap	Caption   Sequência:  	TSZRLabel	ZRLabel22Left1TopWidthHeightAlignToBand	FontStyle WordWrap	Caption_____________________  	TSZRLabel	ZRLabel11Left8TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCaixa  	TSZRLabelzrlDataExtensoLeftTopWidth.Height	AlignmenttaCenterAlignToBand	FontStyle WordWrap	CaptionzrlDataExtenso  
TSZRDBText
SZRDBText1LeftTopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField	TRC_VALOR   TSZRBandZRBand3LeftTopWidthNHeightBeforePrintZRBand3BeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData1LeftCTopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberText   Pág.:  	TSZRLabelZRLabel8Left Top WidthNHeightAlignToBand	FontStyle WordWrap	CaptionN------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left TopWidth!HeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora    TTitulo_receberTitulo_receber1OnCalcFieldsTitulo_receber1CalcFieldsDatabaseNameDBguerraFiltered	SQL.StringsSELECT * FROM TITULO_A_RECEBERWHERE CNC_CODIGO=:CNC_CODIGO AND PDV_CODIGO=:PDV_CODIGOAND TRC_SITUACAO<>5 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina	ChequeCNC ChequeDevolvido
ClienteCNC 	CodigoAGF 	CodigoBOL 	CodigoCCX CodigoCCXRecebimento 	CodigoCHQ 	CodigoCLI 	CodigoCPC 	CodigoFPE 	CodigoFUN 	CodigoMCC 	CodigoPDV 	CodigoTRC 	CodigoTRF FaturamentoCNC GerouMovimentoMovimentoContaCorrenteCNC PagamentoParcialProcesso 
Reabertura Situacao Tipo TipoPag 
TipoPedido 	TituloANT 	TituloORI 
Verificado VisitadoLeft� Top&	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
PDV_CODIGO	ParamType	ptUnknown   TIntegerFieldTitulo_receber1TRC_CODIGO	FieldName
TRC_CODIGOOriginTITULO_A_RECEBER.TRC_CODIGO  TIntegerFieldTitulo_receber1CNC_CODIGO	FieldName
CNC_CODIGOOriginTITULO_A_RECEBER.CNC_CODIGO  TIntegerFieldTitulo_receber1PDV_CODIGO	FieldName
PDV_CODIGOOriginTITULO_A_RECEBER.PDV_CODIGO  TIntegerFieldTitulo_receber1AGF_CODIGO	FieldName
AGF_CODIGOOriginTITULO_A_RECEBER.AGF_CODIGO  TIntegerFieldTitulo_receber1CCX_CODIGO	FieldName
CCX_CODIGOOriginTITULO_A_RECEBER.CCX_CODIGO  TStringFieldTitulo_receber1TRC_NUMERO	FieldName
TRC_NUMEROOriginTITULO_A_RECEBER.TRC_NUMERO  TStringFieldTitulo_receber1TRC_SEQUENCIA	FieldNameTRC_SEQUENCIAOriginTITULO_A_RECEBER.TRC_SEQUENCIA  TIntegerFieldTitulo_receber1CLI_CODIGO	FieldName
CLI_CODIGOOriginTITULO_A_RECEBER.CLI_CODIGO  TDateTimeFieldTitulo_receber1TRC_VENCIMENTO	FieldNameTRC_VENCIMENTOOriginTITULO_A_RECEBER.TRC_VENCIMENTO  TFloatFieldTitulo_receber1TRC_VALOR	FieldName	TRC_VALOROriginTITULO_A_RECEBER.TRC_VALORDisplayFormat0.00  TDateTimeFieldTitulo_receber1TRC_PAGAMENTO	FieldNameTRC_PAGAMENTOOriginTITULO_A_RECEBER.TRC_PAGAMENTO  TFloatFieldTitulo_receber1TRC_VALOR_PAGO	FieldNameTRC_VALOR_PAGOOriginTITULO_A_RECEBER.TRC_VALOR_PAGO  TIntegerFieldTitulo_receber1TRC_SITUACAO	FieldNameTRC_SITUACAOOriginTITULO_A_RECEBER.TRC_SITUACAO  TStringFieldTitulo_receber1TRC_CUSTODIA	FieldNameTRC_CUSTODIAOriginTITULO_A_RECEBER.TRC_CUSTODIA  TIntegerFieldTitulo_receber1TRC_TIPO_DOC	FieldNameTRC_TIPO_DOCOriginTITULO_A_RECEBER.TRC_TIPO_DOC  TFloatFieldTitulo_receber1TRC_CRED_CLI	FieldNameTRC_CRED_CLIOriginTITULO_A_RECEBER.TRC_CRED_CLI  TIntegerFieldTitulo_receber1TRC_TIPO_PAG	FieldNameTRC_TIPO_PAGOriginTITULO_A_RECEBER.TRC_TIPO_PAG  TIntegerFieldTitulo_receber1CNC_CLIENTE	FieldNameCNC_CLIENTEOriginTITULO_A_RECEBER.CNC_CLIENTE  TIntegerFieldTitulo_receber1TRC_TITULOANT	FieldNameTRC_TITULOANTOriginTITULO_A_RECEBER.TRC_TITULOANT  TStringFieldTitulo_receber1Cliente	FieldKindfkCalculated	FieldNameClienteSize<
Calculated	  TStringFieldTitulo_receber1Cidade	FieldKindfkCalculated	FieldNameCidade
Calculated	  TIntegerFieldTitulo_receber1BOL_CODIGO	FieldName
BOL_CODIGOOrigin$DBGUERRA.TITULO_A_RECEBER.BOL_CODIGO  TIntegerFieldTitulo_receber1TRC_TRCORIGINAL	FieldNameTRC_TRCORIGINALOrigin)DBGUERRA.TITULO_A_RECEBER.TRC_TRCORIGINAL  TDateTimeFieldTitulo_receber1TRC_DTORIGINAL	FieldNameTRC_DTORIGINALOrigin(DBGUERRA.TITULO_A_RECEBER.TRC_DTORIGINAL  TIntegerFieldTitulo_receber1USU_CODIGO	FieldName
USU_CODIGOOrigin$DBGUERRA.TITULO_A_RECEBER.USU_CODIGO  TDateTimeFieldTitulo_receber1TRC_DT_ALTERADO	FieldNameTRC_DT_ALTERADOOrigin)DBGUERRA.TITULO_A_RECEBER.TRC_DT_ALTERADO  TDateTimeField Titulo_receber1TRC_RGB_DT_INICIO	FieldNameTRC_RGB_DT_INICIOOrigin+DBGUERRA.TITULO_A_RECEBER.TRC_RGB_DT_INICIO  TDateTimeField"Titulo_receber1TRC_RGB_DT_SITUACAO	FieldNameTRC_RGB_DT_SITUACAOOrigin-DBGUERRA.TITULO_A_RECEBER.TRC_RGB_DT_SITUACAO  TIntegerFieldTitulo_receber1CPC_CODIGO	FieldName
CPC_CODIGOOrigin$DBGUERRA.TITULO_A_RECEBER.CPC_CODIGO  TIntegerFieldTitulo_receber1TRC_RGB_SITUACAO	FieldNameTRC_RGB_SITUACAOOrigin*DBGUERRA.TITULO_A_RECEBER.TRC_RGB_SITUACAO  TSmallintFieldTitulo_receber1TRC_RGB_VISITADO	FieldNameTRC_RGB_VISITADOOrigin*DBGUERRA.TITULO_A_RECEBER.TRC_RGB_VISITADO  TDateTimeField"Titulo_receber1TRC_RGB_DT_PROMESSA	FieldNameTRC_RGB_DT_PROMESSAOrigin-DBGUERRA.TITULO_A_RECEBER.TRC_RGB_DT_PROMESSA  TIntegerFieldTitulo_receber1TRC_PROCESSO	FieldNameTRC_PROCESSOOrigin&DBGUERRA.TITULO_A_RECEBER.TRC_PROCESSO  TDateTimeField"Titulo_receber1TRC_RGB_DT_VISITADO	FieldNameTRC_RGB_DT_VISITADOOrigin-DBGUERRA.TITULO_A_RECEBER.TRC_RGB_DT_VISITADO  TStringFieldTitulo_receber1TRC_OBSERVACAO	FieldNameTRC_OBSERVACAOOrigin(DBGUERRA.TITULO_A_RECEBER.TRC_OBSERVACAO	FixedChar	Size�   TIntegerFieldTitulo_receber1CCX_CODIGO_REC	FieldNameCCX_CODIGO_RECOrigin(DBGUERRA.TITULO_A_RECEBER.CCX_CODIGO_REC  TSmallintField"Titulo_receber1TRC_GEROU_MOVIMENTO	FieldNameTRC_GEROU_MOVIMENTOOrigin-DBGUERRA.TITULO_A_RECEBER.TRC_GEROU_MOVIMENTO  TIntegerFieldTitulo_receber1TRC_NOTA_SERVICO	FieldNameTRC_NOTA_SERVICOOrigin*DBGUERRA.TITULO_A_RECEBER.TRC_NOTA_SERVICO  TDateTimeFieldTitulo_receber1TRC_DT_CADASTRO	FieldNameTRC_DT_CADASTROOrigin)DBGUERRA.TITULO_A_RECEBER.TRC_DT_CADASTRO  TFloatFieldTitulo_receber1TRC_DESCONTO	FieldNameTRC_DESCONTOOrigin&DBGUERRA.TITULO_A_RECEBER.TRC_DESCONTO  TFloatFieldTitulo_receber1TRC_JUROS	FieldName	TRC_JUROSOrigin#DBGUERRA.TITULO_A_RECEBER.TRC_JUROS  TIntegerFieldTitulo_receber1CNC_ORIGEM	FieldName
CNC_ORIGEMOrigin$DBGUERRA.TITULO_A_RECEBER.CNC_ORIGEM  TIntegerField!Titulo_receber1TRC_PEDIDO_SERVICO	FieldNameTRC_PEDIDO_SERVICOOrigin,DBGUERRA.TITULO_A_RECEBER.TRC_PEDIDO_SERVICO  TIntegerFieldTitulo_receber1TRC_TIPO_PEDIDO	FieldNameTRC_TIPO_PEDIDOOrigin)DBGUERRA.TITULO_A_RECEBER.TRC_TIPO_PEDIDO  TDateTimeField$Titulo_receber1TRC_DT_EMISSAO_BOLETO	FieldNameTRC_DT_EMISSAO_BOLETOOrigin/DBGUERRA.TITULO_A_RECEBER.TRC_DT_EMISSAO_BOLETO  TDateTimeField(Titulo_receber1TRC_DT_RECEBIMENTO_BOLETO	FieldNameTRC_DT_RECEBIMENTO_BOLETOOrigin3DBGUERRA.TITULO_A_RECEBER.TRC_DT_RECEBIMENTO_BOLETO  TIntegerFieldTitulo_receber1FPE_CODIGO	FieldName
FPE_CODIGOOrigin$DBGUERRA.TITULO_A_RECEBER.FPE_CODIGO  TIntegerField'Titulo_receber1CNC_FATURAMENTO_PENDENTE	FieldNameCNC_FATURAMENTO_PENDENTEOrigin2DBGUERRA.TITULO_A_RECEBER.CNC_FATURAMENTO_PENDENTE  TDateTimeField!Titulo_receber1TRC_DT_COMPETENCIA	FieldNameTRC_DT_COMPETENCIAOrigin,DBGUERRA.TITULO_A_RECEBER.TRC_DT_COMPETENCIA  TIntegerFieldTitulo_receber1TRC_EQUIFAX	FieldNameTRC_EQUIFAXOrigin%DBGUERRA.TITULO_A_RECEBER.TRC_EQUIFAX  TDateTimeFieldTitulo_receber1TRC_DT_EQUIFAX	FieldNameTRC_DT_EQUIFAXOrigin(DBGUERRA.TITULO_A_RECEBER.TRC_DT_EQUIFAX  TStringField!Titulo_receber1TRC_AGENCIA_NUMERO	FieldNameTRC_AGENCIA_NUMEROOrigin,DBGUERRA.TITULO_A_RECEBER.TRC_AGENCIA_NUMERO	FixedChar	Size2  TDateTimeFieldTitulo_receber1TRC_DT_CHEQUE	FieldNameTRC_DT_CHEQUEOrigin'DBGUERRA.TITULO_A_RECEBER.TRC_DT_CHEQUE  TIntegerFieldTitulo_receber1TRC_SIT_CHEQUE	FieldNameTRC_SIT_CHEQUEOrigin(DBGUERRA.TITULO_A_RECEBER.TRC_SIT_CHEQUE  TIntegerFieldTitulo_receber1TRC_REABERTURA	FieldNameTRC_REABERTURAOrigin(DBGUERRA.TITULO_A_RECEBER.TRC_REABERTURA  TIntegerFieldTitulo_receber1TRC_VERIFICADO	FieldNameTRC_VERIFICADOOrigin(DBGUERRA.TITULO_A_RECEBER.TRC_VERIFICADO  TDateTimeField Titulo_receber1TRC_DT_VERIFICADO	FieldNameTRC_DT_VERIFICADOOrigin+DBGUERRA.TITULO_A_RECEBER.TRC_DT_VERIFICADO  TIntegerFieldTitulo_receber1CHQ_CODIGO	FieldName
CHQ_CODIGOOrigin$DBGUERRA.TITULO_A_RECEBER.CHQ_CODIGO  TIntegerFieldTitulo_receber1CNC_CHEQUE	FieldName
CNC_CHEQUEOrigin$DBGUERRA.TITULO_A_RECEBER.CNC_CHEQUE  TIntegerField#Titulo_receber1TRC_CHEQUE_DEVOLVIDO	FieldNameTRC_CHEQUE_DEVOLVIDOOrigin.DBGUERRA.TITULO_A_RECEBER.TRC_CHEQUE_DEVOLVIDO  TIntegerField$Titulo_receber1TRC_PAGAMENTO_PARCIAL	FieldNameTRC_PAGAMENTO_PARCIALOrigin/DBGUERRA.TITULO_A_RECEBER.TRC_PAGAMENTO_PARCIAL  TIntegerField+Titulo_receber1CNC_MOVIMENTO_CONTA_CORRENTE	FieldNameCNC_MOVIMENTO_CONTA_CORRENTEOrigin6DBGUERRA.TITULO_A_RECEBER.CNC_MOVIMENTO_CONTA_CORRENTE  TIntegerFieldTitulo_receber1MCC_CODIGO	FieldName
MCC_CODIGOOrigin$DBGUERRA.TITULO_A_RECEBER.MCC_CODIGO  TStringFieldTitulo_receber1TRC_CV	FieldNameTRC_CVOrigin DBGUERRA.TITULO_A_RECEBER.TRC_CV	FixedChar	   TCentroCustoCentroCusto1DatabaseNameDBguerraSQL.StringsSELECT * FROM CENTRO_DE_CUSTOWHERE CNC_CODIGO=:CNC_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaCENTRO_DE_CUSTO
Logradouro RecebeDadosLeftZTop&	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown    TClienteCliente1DatabaseNameDBguerraSQL.Strings+SELECT CNC_CODIGO,CLI_CODIGO,CLI_RZ_SOCIAL FROM CLIENTE7WHERE CNC_CODIGO=:CNC_CODIGO AND CLI_CODIGO=:CLI_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaCLIENTECLogradouro CRota Classificacao 	CodigoCLI Convenio ConvenioCNC 
Logradouro MensalNotaOrgao PessoaFisica	QuinzenalSPC Situacao Tipo Left*Top^	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
CLI_CODIGO	ParamType	ptUnknown    TValorPorExtensoExtenso1MoedaNoSingularREALMoedaNoPluralREAISTipoDoTextottMaiusculaLeft`Top8   