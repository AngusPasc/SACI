�
 TRPT_PACOTECREDITO 05  TPF0Trpt_PacoteCreditorpt_PacoteCreditoLeft"Top� Width Height�Caption   Relatório de EmpréstimosColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeft TopWidth� HeightAColumnsColumnSpace DataSetPacote_de_Credito1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthAOptions.PageWidth� Options.PaperTypezptSheet TSZRBandZRBand1LeftTopWidth� HeightBeforePrintZRBand1BeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth/HeightAlignToBand	FontStyle WordWrap	Caption'SIAC - Relatorio de Pacotes de Creditos  TSZRSysData
ZRSysData2LeftdTopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width/HeightAlignToBand	FontStyleesUnderline BeforePrintZRLabel3BeforePrintWordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel1LeftdTop WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabel	SZRLabel5Left TopWidth
HeightAlignToBand	FontStyle WordWrap	Caption	SZRLabel5  	TSZRLabel	SZRLabel6LeftTopWidthHeightAlignToBand	FontStyle WordWrap	Captiona  	TSZRLabel	SZRLabel7LeftTopWidth
HeightAlignToBand	FontStyle WordWrap	Caption	SZRLabel7  	TSZRLabelZRLabel5Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�==================================================================================================================================  	TSZRLabelZRLabel7Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCodigo  	TSZRLabel	ZRLabel13Left;TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCPF\CNPJ  	TSZRLabel
SZRLabel18LeftTopWidth2HeightAlignToBand	FontStyle WordWrap	CaptionRazao Social  	TSZRLabel
SZRLabel19LeftTopWidthHeightAlignToBand	FontStyle WordWrap	Caption-  	TSZRLabel
SZRLabel17LeftTTopWidth
HeightAlignToBand	FontStyle WordWrap	CaptionCadastro  	TSZRLabel
SZRLabel24LeftTopWidthzHeightAlignToBand	FontStyle WordWrap	Caption	Obseracao  	TSZRLabel
SZRLabel22Left_TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionSituacao  	TSZRLabel
SZRLabel23LeftyTopWidth	Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	CaptionValor  	TSZRLabel
zrlFiltrosLeft TopWidth� HeightAlignToBand	FontStyle WordWrap	   TSZRBandZRBand2LeftTop
Width� HeightBeforePrintZRBand2BeforePrintBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText
SZRDBText1LeftSTopWidth
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetPacote_de_Credito1	DataFieldPCR_DT_CADASTRO  
TSZRDBText
SZRDBText4LeftyTopWidth	Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	BlankIfZeroDataSetPacote_de_Credito1	DataField	PCR_VALOR  
TSZRDBText
SZRDBText7Left TopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetPacote_de_Credito1	DataField
PCR_CODIGO  	TSZRLabel
SZRLabel26LeftTopWidthHeightAlignToBand	FontStyle WordWrap	Caption-  
TSZRDBText
SZRDBText9LeftTopWidth{HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetPacote_de_Credito1	DataFieldPCR_OBSERVACAO  	TSZRLabel
zrlCNPJCPJLeft;TopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlSituacaoLeft_TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionSituacao  	TSZRLabelzrlRazaoSocialLeftTopWidth2HeightAlignToBand	FontStyle WordWrap	   TSZRBandZRBand3LeftTopWidth� HeightBeforePrintZRBand3BeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData1LeftwTopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberTextPag.:  	TSZRLabelZRLabel8Left Top Width� HeightAlignToBand	FontStyle WordWrap	Caption�----------------------------------------------------------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left TopWidth%HeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora  	TSZRLabel
zrlUsuarioLeft'TopWidth,HeightAlignToBand	FontStyleesItalic WordWrap	    TCentroCustoCentroCusto1DatabaseNameDBguerraSQL.StringsSELECT * FROM CENTRO_DE_CUSTOWHERE CNC_CODIGO=:CNC_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaCENTRO_DE_CUSTO
Logradouro RecebeDadosLeftnTop� 	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown    TClienteCliente1DatabaseNameDBguerraSQL.Strings6SELECT CNC_CODIGO,CLI_CODIGO,CLI_RZ_SOCIAL,CLI_CGC_CPFFROM CLIENTE7WHERE CNC_CODIGO=:CNC_CODIGO AND CLI_CODIGO=:CLI_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaCLIENTECLogradouro CRota Classificacao 	CodigoCLI Convenio ConvenioCNC 
Logradouro MensalNotaOrgao PessoaFisica	QuinzenalSPC Situacao Tipo Left� Top� 	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
CLI_CODIGO	ParamType	ptUnknown    TPacote_de_CreditoPacote_de_Credito1DatabaseNameDBguerraSQL.StringsSELECT * FROM PACOTE_DE_CREDITOWHERE PCR_CODIGO=-10 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaPACOTE_DE_CREDITO
ClienteCNC 	CodigoAGF 	CodigoCLI 	CodigoFPG 	CodigoFUN 	CodigoPCR Situacao TipoPag Left� Top�  TIntegerFieldPacote_de_Credito1PCR_CODIGO	FieldName
PCR_CODIGOOrigin%DBGUERRA.PACOTE_DE_CREDITO.PCR_CODIGO  TIntegerFieldPacote_de_Credito1CNC_CODIGO	FieldName
CNC_CODIGOOrigin%DBGUERRA.PACOTE_DE_CREDITO.CNC_CODIGO  TIntegerFieldPacote_de_Credito1CNC_CLIENTE	FieldNameCNC_CLIENTEOrigin&DBGUERRA.PACOTE_DE_CREDITO.CNC_CLIENTE  TIntegerFieldPacote_de_Credito1CLI_CODIGO	FieldName
CLI_CODIGOOrigin%DBGUERRA.PACOTE_DE_CREDITO.CLI_CODIGO  TIntegerFieldPacote_de_Credito1USU_CODIGO	FieldName
USU_CODIGOOrigin%DBGUERRA.PACOTE_DE_CREDITO.USU_CODIGO  TIntegerFieldPacote_de_Credito1FUN_CODIGO	FieldName
FUN_CODIGOOrigin%DBGUERRA.PACOTE_DE_CREDITO.FUN_CODIGO  TDateTimeField!Pacote_de_Credito1PCR_DT_CADASTRO	FieldNamePCR_DT_CADASTROOrigin*DBGUERRA.PACOTE_DE_CREDITO.PCR_DT_CADASTRO  TDateTimeField!Pacote_de_Credito1PCR_DT_ALTERADO	FieldNamePCR_DT_ALTERADOOrigin*DBGUERRA.PACOTE_DE_CREDITO.PCR_DT_ALTERADO  TFloatFieldPacote_de_Credito1PCR_VALOR	FieldName	PCR_VALOROrigin$DBGUERRA.PACOTE_DE_CREDITO.PCR_VALORDisplayFormat0.00  TIntegerFieldPacote_de_Credito1PCR_SITUACAO	FieldNamePCR_SITUACAOOrigin'DBGUERRA.PACOTE_DE_CREDITO.PCR_SITUACAO  TStringField Pacote_de_Credito1PCR_OBSERVACAO	FieldNamePCR_OBSERVACAOOrigin)DBGUERRA.PACOTE_DE_CREDITO.PCR_OBSERVACAO	FixedChar	Size�     