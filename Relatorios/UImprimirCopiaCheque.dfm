�
 TRPT_IMPRIMIRCOPIACHEQUE 0�  TPF0Trpt_ImprimirCopiaChequerpt_ImprimirCopiaChequeLeftBTop� BorderIconsbiSystemMenu
biMaximize BorderStylebsDialogCaption   Cópia de ChequeClientHeight�ClientWidth1Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeft Top WidthPHeight ColumnsColumnSpace Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.Bottom Options.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOn0Options.Escapes.BoldOffFHOptions.Escapes.ItalicsOn2Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLength Options.PageWidthPOptions.PaperTypezptSheet TSZRBandZRBand1LeftTopWidthNHeightBeforePrintZRBand1BeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelzrlValorExtensoLeftTopWidthKHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlCidadeDiaLeftTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlValorNumericoLeft
TopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabel
zrlNominalLeftTopWidth=HeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlMesLeft+TopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlAnoLeft8TopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlObservadoLeftTopWidthKHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlDiaLeft%TopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabel	SZRLabel1LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionValor:  	TSZRLabel	zrlNumeroLeftTopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabel	SZRLabel2LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCopia de Cheque:  	TSZRLabel	SZRLabel3LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionNominal     :  	TSZRLabelzrlProprietarioLeftTop
Width=HeightAlignToBand	FontStyle WordWrap	  	TSZRLabel	SZRLabel5LeftTop
WidthHeightAlignToBand	FontStyle WordWrap	CaptionProprietario:  	TSZRLabel	SZRLabel6LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionDeposito    :  	TSZRLabelzrlNomeBancoLeft/TopWidthHeightAlignToBand	FontStyle WordWrap	    TCentroCustoCentroCusto1DatabaseNameDBguerraSQL.StringsSELECT * FROM CENTRO_DE_CUSTOWHERE CNC_CODIGO=:CNC_CODIGO 	CNCOrigem CentroDeCusto�	CodigoCNC 	CodigoUSU Mafalda�Maquina�TabelaCENTRO_DE_CUSTO
Logradouro RecebeDadosLeftPTop� 	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown    TClienteCliente1DatabaseNameDBguerraSQL.Strings+SELECT CNC_CODIGO,CLI_CODIGO,CLI_RZ_SOCIAL FROM CLIENTE7WHERE CNC_CODIGO=:CNC_CODIGO AND CLI_CODIGO=:CLI_CODIGO 	CNCOrigem CentroDeCusto�	CodigoCNC 	CodigoUSU Mafalda�Maquina�TabelaCLIENTECLogradouro CRota Classificacao 	CodigoCLI Convenio ConvenioCNC 
Logradouro MensalNotaOrgao PessoaFisica	QuinzenalSPC Situacao Tipo LeftoTop� 	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
CLI_CODIGO	ParamType	ptUnknown    TValorPorExtensoExtenso1MoedaNoSingularREALMoedaNoPluralREAISTipoDoTextottMaiusculaLeftTop�   TChequeCheque1DatabaseNameDBguerraSQL.StringsSELECT * FROM CHEQUEWHERE CNC_CODIGO=:CNC_CODIGOAND CHQ_CODIGO=:CHQ_CODIGO 	CNCOrigem CentroDeCusto�	CodigoCNC 	CodigoUSU Mafalda�Maquina�TabelaCHEQUEAgencia Banco C1 C2 C3 	CNCTitulo 	CODTitulo 
ClienteCNC 	CodigoCHQ 	CodigoCLI 	CodigoFCT Comp Conta EnviadoFactoringCNC Situacao Terceiro 	UtilizadoLeft1Top� 	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
CHQ_CODIGO	ParamType	ptUnknown     