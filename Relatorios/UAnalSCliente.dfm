�
 TRPT_DADOSCLI 0G  TPF0Trpt_DadosClirpt_DadosCliLeft� TopuWidthIHeight>HorzScrollBar.VisibleVertScrollBar.VisibleCaption'   Análise de Crédito - Dados do ClienteColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	ScaledOnClose	FormClosePixelsPerInch`
TextHeight 	TSZReportreport_dadosLeft Top WidthPHeightColumnsColumnSpace DataSetCliente1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.Bottom Options.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthOptions.PageWidthPOptions.PaperTypezptSheet TSZRBandZRBand1LeftTopWidthNHeightBandTyperbDetailForceNewColumnForceNewPage 	TSZRLabelZRLabel7LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionRazao Social  	TSZRLabelZRLabel9LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionLog.  	TSZRLabel	ZRLabel10LeftTopWidth	HeightAlignToBand	FontStyle WordWrap	CaptionEndereco  	TSZRLabel	ZRLabel11Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionBairro  	TSZRLabel	ZRLabel12LeftTop	WidthHeightAlignToBand	FontStyle WordWrap	CaptionIdentidade\CGF  	TSZRLabel	ZRLabel13LeftTop	WidthHeightAlignToBand	FontStyle WordWrap	CaptionCPF\CGC  	TSZRLabel	ZRLabel14Left-Top	Width	HeightAlignToBand	FontStyle WordWrap	CaptionSituacao  	TSZRLabel	ZRLabel15Left>Top	Width	HeightAlignToBand	FontStyle WordWrap	CaptionTelefone  
TSZRDBText	ZRDBText1LeftTopWidth<HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetCliente1	DataFieldCLI_RZ_SOCIAL  
TSZRDBText	ZRDBText5LeftTopWidthHeight	AlignmenttaCenterAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetCliente1	DataFieldPAR_DESCRICAO  
TSZRDBText	ZRDBText6LeftTopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetCliente1	DataFieldCLI_ENDERECO  
TSZRDBText	ZRDBText2Left TopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetCliente1	DataField
CLI_BAIRRO  
TSZRDBText	ZRDBText4LeftTop
WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetCliente1	DataField
CLI_CGF_RG  
TSZRDBText	ZRDBText3LeftTop
WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetCliente1	DataFieldCLI_CGC_CPF  
TSZRDBText	ZRDBText8Left>Top
WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetCliente1	DataFieldCLI_FONE  	TSZRLabel	ZRLabel17LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCod.  
TSZRDBText
ZRDBText11LeftTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetCliente1	DataField
CLI_CODIGO  	TSZRLabel	ZRLabel18LeftDTopWidth
HeightAlignToBand	FontStyle WordWrap	Caption
Dt.Nascim.  
TSZRDBText
ZRDBText12LeftDTopWidth
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetCliente1	DataFieldCLI_DATA_NASC  	TSZRLabel	ZRLabel19Left7TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCidade  
TSZRDBText
ZRDBText13Left7TopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetCliente1	DataField
CLI_CIDADE  	TSZRLabel	ZRLabel20LeftLTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionUF  
TSZRDBText
ZRDBText14LeftLTopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetCliente1	DataFieldCLI_UF  	TSZRLabel	ZRLabel21LeftTopWidthHeightAlignToBand	FontStyle WordWrap	Caption
Observacao  
TSZRDBText
ZRDBText15LeftTopWidth(HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetCliente1	DataFieldCLI_OBS  	TSZRLabel	ZRLabel22Left+TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionSPC  	TSZRLabel	ZRLabel23Left+TopWidth#HeightAlignToBand	FontStyle WordWrap	  TSZRExpressionZRExpression1Left-Top
WidthHeightAlignToBand	FontStyle WordWrap	CurrencyResetAfterPrint
Expression.IF(CLI_SITUACAO=0,'Adimplente','Inadimplente')  	TSZRLabelZRLabel5Left TopWidthNHeightAlignToBand	FontStyle WordWrap	CaptionN------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left Top WidthNHeightAlignToBand	FontStyle WordWrap	CaptionN==============================================================================  	TSZRLabelZRLabel6LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionDados do Cliente   TSZRBandZRBand2LeftTopWidthNHeightBeforePrintZRBand2BeforePrintBandTyperbTitleForceNewColumnForceNewPage 	TSZRLabelZRLabel3Left Top Width/HeightAlignToBand	FontStyle BeforePrintZRLabel3BeforePrintWordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel2Left TopWidth/HeightAlignToBand	FontStyle WordWrap	CaptionSIAC - Analise de Credito  TSZRSysData
ZRSysData2Left0TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel1Left0Top WidthHeightAlignToBand	FontStyle WordWrap	CaptionCentro de Custo    TClienteCliente1
BeforeOpenCliente1BeforeOpenDatabaseNameDBguerraSQL.StringsSELECT *FROM	Cliente Cliente,	Parametro ParametroWHERE2	(Cliente.CLI_LOGRADOURO=Parametro.PAR_CODIGO) AND	(Parametro.PAR_CODIGO=3) AND#	(Cliente.CLI_CODIGO =:CLIENTE) AND1                (Cliente.CNC_CODIGO =:CNC_CODIGO)      	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaCLIENTECLogradouro CRota Classificacao 	CodigoCLI Convenio ConvenioCNC 
Logradouro MensalNotaOrgao PessoaFisica	QuinzenalSPC Situacao Tipo LeftTop	ParamDataDataType	ftIntegerNameCLIENTE	ParamType	ptUnknown DataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown     