�
 TRPT_IMPRIMIRCHEQUEREAL 0�  TPF0Trpt_ImprimirChequeRealrpt_ImprimirChequeRealLeft� Top!BorderIconsbiSystemMenu
biMaximize BorderStylebsDialogCaptionCheque RealClientHeightoClientWidthColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeft Top WidthqHeightColumnsColumnSpace Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.Left Margins.Top Margins.Right Margins.Bottom Options.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOn0Options.Escapes.BoldOffFHOptions.Escapes.ItalicsOn2Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthOptions.PageWidthqOptions.PaperTypezptSheet TSZRBandZRBand1Left Top WidthqHeightBeforePrintZRBand1BeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelzrlValorExtensoLeftTopWidth_HeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlCidadeDiaLeft1Top	WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlValorNumericoLeftWTop WidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabel
zrlNominalLeftTopWidthcHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlMesLeftSTop	WidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlAnoLeftlTop	WidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlObservadoLeftTopWidthPHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlDiaLeftMTop	WidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabel
SZRLabel61LeftoTopWidthHeight	AlignmenttaCenterAlignToBand	FontStyleesItalic WordWrap	Caption.  	TSZRLabel	SZRLabel4Left Top WidthHeightAlignToBand	FontStyleesBold WordWrap	Caption.  	TSZRLabelzrlValorExtensoContLeftTopWidthjHeightAlignToBand	FontStyle WordWrap	    TCentroCustoCentroCusto1DatabaseNameDBguerraSQL.StringsSELECT * FROM CENTRO_DE_CUSTOWHERE CNC_CODIGO=:CNC_CODIGO 	CNCOrigem CentroDeCusto�	CodigoCNC 	CodigoUSU Mafalda�Maquina�TabelaCENTRO_DE_CUSTO
Logradouro RecebeDadosLeft=TopJ	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown    TClienteCliente1DatabaseNameDBguerraSQL.Strings+SELECT CNC_CODIGO,CLI_CODIGO,CLI_RZ_SOCIAL FROM CLIENTE7WHERE CNC_CODIGO=:CNC_CODIGO AND CLI_CODIGO=:CLI_CODIGO 	CNCOrigem CentroDeCusto�	CodigoCNC 	CodigoUSU Mafalda�Maquina�TabelaCLIENTECLogradouro CRota Classificacao 	CodigoCLI Convenio ConvenioCNC 
Logradouro MensalNotaOrgao PessoaFisica	QuinzenalSPC Situacao Tipo Left[TopJ	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
CLI_CODIGO	ParamType	ptUnknown    TValorPorExtensoExtenso1MoedaNoSingularREALMoedaNoPluralREAISTipoDoTextottMaiusculaLeft TopJ  TChequeCheque1DatabaseNameDBguerraSQL.StringsSELECT * FROM CHEQUEWHERE CNC_CODIGO=:CNC_CODIGOAND CHQ_CODIGO=:CHQ_CODIGO 	CNCOrigem CentroDeCusto�	CodigoCNC 	CodigoUSU Mafalda�Maquina�TabelaCHEQUEAgencia Banco C1 C2 C3 	CNCTitulo 	CODTitulo 
ClienteCNC 	CodigoCHQ 	CodigoCLI 	CodigoFCT Comp Conta EnviadoFactoringCNC Situacao Terceiro 	UtilizadoLeftTopJ	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
CHQ_CODIGO	ParamType	ptUnknown     