�
 TRPT_IMPRIMIRCHEQUEBB 0d  TPF0Trpt_ImprimirChequeBBrpt_ImprimirChequeBBLeft� Top� Width0Height_BorderIconsbiSystemMenu
biMaximize Caption	Cheque BBColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeft Top WidthqHeightHColumnsColumnSpace DataSetCheque1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.Left Margins.Top Margins.Right Margins.Bottom Options.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOn0Options.Escapes.BoldOffFHOptions.Escapes.ItalicsOn2Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthHOptions.PageWidthqOptions.PaperTypezptSheet TSZRBand
zrbDetalheLeft TopWidthqHeight
AfterPrintzrbDetalheAfterPrintBeforePrintzrbDetalheBeforePrintBandTyperbDetailForceNewColumnForceNewPage 	TSZRLabelzrlValorExtensoLeftTopWidth]HeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlCidadeDiaLeft/TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlValorNumericoLeftWTop WidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabel
zrlNominalLeftTopWidthcHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlMesLeftUTopWidthHeight	AlignmenttaCenterAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlAnoLeftlTopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlDiaLeftLTopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlValorExtensoContLeftTopWidthjHeightAlignToBand	FontStyle WordWrap	   TSZRBandzrbCabecalhoPaginaLeft Top WidthqHeightBeforePrintzrbCabecalhoPaginaBeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage   TCentroCustoCentroCusto1DatabaseNameDBguerraSQL.StringsSELECT * FROM CENTRO_DE_CUSTOWHERE CNC_CODIGO=:CNC_CODIGO 	CNCOrigem CentroDeCusto�	CodigoCNC 	CodigoUSU Mafalda�Maquina�TabelaCENTRO_DE_CUSTO
Logradouro RecebeDadosLeft&Top	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown    TClienteCliente1DatabaseNameDBguerraSQL.Strings+SELECT CNC_CODIGO,CLI_CODIGO,CLI_RZ_SOCIAL FROM CLIENTE7WHERE CNC_CODIGO=:CNC_CODIGO AND CLI_CODIGO=:CLI_CODIGO 	CNCOrigem CentroDeCusto�	CodigoCNC 	CodigoUSU Mafalda�Maquina�TabelaCLIENTECLogradouro CRota Classificacao 	CodigoCLI Convenio ConvenioCNC 
Logradouro MensalNotaOrgao PessoaFisica	QuinzenalSPC Situacao Tipo LeftDTop	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
CLI_CODIGO	ParamType	ptUnknown    TValorPorExtensoExtenso1MoedaNoSingularREALMoedaNoPluralREAISTipoDoTextottMaiusculaLeftTop  TChequeCheque1DatabaseNameDBguerraSQL.StringsSELECT * FROM CHEQUEWHERE CNC_CODIGO=:CNC_CODIGOAND CHQ_CODIGO=:CHQ_CODIGO 	CNCOrigem CentroDeCusto�	CodigoCNC 	CodigoUSU Mafalda�Maquina�TabelaCHEQUEAgencia Banco C1 C2 C3 	CNCTitulo 	CODTitulo 
ClienteCNC 	CodigoCHQ 	CodigoCLI 	CodigoFCT Comp Conta EnviadoFactoringCNC Situacao Terceiro 	UtilizadoLeftbTop	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
CHQ_CODIGO	ParamType	ptUnknown     