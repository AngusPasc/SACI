�
 TRPT_SCOBRAN 05  TPF0Trpt_SCobranrpt_SCobranLeft� Top� WidthKHeight
Caption+   Analise de Credito - Registros de CobrançaColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormClosePixelsPerInch`
TextHeight 	TSZReportreport_cobraLeft Top�WidthPHeightColumnsColumnSpace DataSetCliente1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthOptions.PageWidthPOptions.PaperTypezptSheet TSZRBandZRBand1LeftTopWidthNHeightBandTyperbTitleForceNewColumnForceNewPage 	TSZRLabelZRLabel5Left Top WidthNHeightAlignToBand	FontStyle WordWrap	CaptionN==============================================================================  	TSZRLabelZRLabel6Left TopWidthNHeightAlignToBand	FontStyle WordWrap	CaptionN------------------------------------------------------------------------------  	TSZRLabelZRLabel8LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCodigo  	TSZRLabelZRLabel9LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionTitulo  	TSZRLabel	ZRLabel10Left!TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionObs  	TSZRLabel	ZRLabel11LeftTopWidthHeightAlignToBand	FontStyle WordWrap	Caption	Sequencia  	TSZRLabel	ZRLabel12Left9TopWidth
HeightAlignToBand	FontStyle WordWrap	Caption
Dt.Inicial  	TSZRLabel	ZRLabel13LeftDTopWidth
HeightAlignToBand	FontStyle WordWrap	CaptionSituacao  	TSZRLabelZRLabel2LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionRegistros de Cobranca   TSZRBandZRBand2LeftTopWidthNHeightBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText	ZRDBText3LeftTop WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetCliente1	DataField
RGB_CODIGO  
TSZRDBText	ZRDBText4Left!Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetCliente1	DataFieldRGB_OBSERVACAO  
TSZRDBText
ZRDBText11Left9Top Width
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetCliente1	DataFieldRGB_DT_INICIO  
TSZRDBText	ZRDBText1LeftTop Width
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetCliente1	DataField
TRC_NUMERO  
TSZRDBText	ZRDBText2LeftTop WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetCliente1	DataFieldTRC_SEQUENCIA  
TSZRDBText	ZRDBText5LeftDTop Width
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetCliente1	DataFieldRGB_SITUACAO   TSZRBandZRBand3LeftTopWidthNHeightBeforePrintZRBand3BeforePrintBandType	rbSummaryForceNewColumnForceNewPage 	TSZRLabelZRLabel1Left TopWidthNHeightAlignToBand	FontStyle WordWrap	CaptionN==============================================================================  	TSZRLabel	ZRLabel16Left TopWidth#HeightAlignToBand	FontStyle WordWrap	CaptionEmpresaDesenvolvedora  TSZRSysData
ZRSysData3LeftCTopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberTextPag.:    TClienteCliente1
BeforeOpenCliente1BeforeOpenDatabaseNameDBguerraSQL.StringsSELECT	T1.CLI_CODIGO,	T1.CNC_CODIGO,	T2.TRC_NUMERO,	T2.TRC_OBSERVACAO,	T2.TRC_SEQUENCIA,	T2.TRC_SITUACAOFROM	Cliente T1,	Titulo_a_receber T2WHERE;	(Registro_de_Cobranca.CLI_CODIGO = Cliente.CLI_CODIGO) ANDD	(Registro_de_Cobranca.TRC_CODIGO = Titulo_a_receber.TRC_CODIGO) ANDK        (Registro_de_Cobranca.CNC_TITULO = Titulo_a_receber.CNC_CODIGO) AND#	(Cliente.CLI_CODIGO =:CLIENTE) AND-                (Cliente.CNC_CODIGO =:CODIGO)   	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaCLIENTECLogradouro CRota Classificacao 	CodigoCLI Convenio ConvenioCNC 
Logradouro MensalNotaOrgao PessoaFisica	QuinzenalSPC Situacao Tipo LeftTop� 	ParamDataDataType	ftIntegerNameCLIENTE	ParamType	ptUnknown DataType	ftIntegerNameCODIGO	ParamType	ptUnknown     