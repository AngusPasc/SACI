�
 TRPT_EMPRESTIMOCOMPLETO 0=)  TPF0Trpt_EmprestimoCompletorpt_EmprestimoCompletoLeft�TopwWidth�HeightCaption   Relatório de EmpréstimosColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeft TopWidth� HeightAColumnsColumnSpace DataSetEmprestimo1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthAOptions.PageWidth� Options.PaperTypezptSheet TSZRBandzrbCabecalhoLeftTopWidth� HeightBeforePrintzrbCabecalhoBeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabel	zrlTituloLeft TopWidth/HeightAlignToBand	FontStyle WordWrap	CaptionSIAC - Demonstracao/Emprestimo  TSZRSysData
ZRSysData2LeftdTopWidth$Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width/HeightAlignToBand	FontStyle BeforePrintZRLabel3BeforePrintWordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel1LeftdTop Width$Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabelZRLabel5Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================   TSZRBand
zrbDetalheLeftTopWidth� HeightBeforePrintzrbDetalheBeforePrintBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText	ZRDBText4LeftTop WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetEmprestimo1	DataField
PRD_CODIGO  
TSZRDBText
SZRDBText1LeftjTop Width
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetEmprestimo1	DataFieldEMP_DT_CADASTRO  	TSZRLabel
SZRLabel20Left	Top WidthHeightAlignToBand	FontStyle WordWrap	Caption-  
TSZRDBTextSZRDBText10Left Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetEmprestimo1	DataField
CNC_CODIGO  	TSZRLabel
zrlProdutoLeft
Top WidthJHeightAlignToBand	FontStyle WordWrap	CaptionProduto  	TSZRLabel
zrlDetalheLeftUTop WidthHeightAlignToBand	FontStyle WordWrap	CaptionDetalhe  	TSZRLabelzrlQuantidadeLeft� Top WidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	  	TSZRLabelzrlSituacaoLeftuTop WidthHeightAlignToBand	FontStyle WordWrap	   TSZRBandZRBand3LeftTopWidth� HeightBeforePrintZRBand3BeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData1Left}TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberTextPag.:  	TSZRLabelZRLabel8Left Top Width� HeightAlignToBand	FontStyle WordWrap	Caption�-----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left TopWidth%HeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora  	TSZRLabel
zrlUsuarioLeft'TopWidth,HeightAlignToBand	FontStyleesItalic WordWrap	   	TSZRGroupzrbGrupoCLILeftTopWidth� HeightBeforePrintzrbGrupoCLIBeforePrint
Expression
CLI_CODIGO
FooterBandzrbRodapeGrupoMasterreportForceNewColumnForceNewPage 	TSZRLabelzrlDescProdutoLeft TopWidthTHeightAlignToBand	FontStyle WordWrap	CaptionProduto  	TSZRLabel
SZRLabel17LeftjTopWidth
HeightAlignToBand	FontStyle WordWrap	CaptionCadastro  	TSZRLabel	SZRLabel1LeftUTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionDetalhe  	TSZRLabel
SZRLabel23Left� TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	CaptionQuant.  	TSZRLabel	SZRLabel8LeftTop WidthHeightAlignToBand	FontStyle WordWrap	CaptionData:  	TSZRLabel	SZRLabel9Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabel
zrlClienteLeft
TopWidth2HeightAlignToBand	FontStyle WordWrap	  	TSZRLabel
zrlApelidoLeftFTopWidth!HeightAlignToBand	FontStyle WordWrap	  	TSZRLabel
SZRLabel15Left=TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionApelido:  	TSZRLabel
SZRLabel16Left TopWidth	HeightAlignToBand	FontStyle WordWrap	Caption	Endereco:  	TSZRLabelzrlEnderecoLeft
TopWidth2HeightAlignToBand	FontStyle WordWrap	  	TSZRLabel	zrlBairroLeftFTopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabel	zrlCidadeLeftcTopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabel	SZRLabel5Left=TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionBairro :  	TSZRLabel	SZRLabel6Left[TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCidade:  	TSZRLabel
SZRLabel26Left TopWidth	HeightAlignToBand	FontStyle WordWrap	Caption	Contato :  	TSZRLabel
zrlContatoLeft
TopWidth~HeightAlignToBand	FontStyle WordWrap	  	TSZRLabel
SZRLabel32Left TopWidth	HeightAlignToBand	FontStyle WordWrap	Caption	RG/CGF  :  	TSZRLabelzrlRGCGFLeft
TopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabel
SZRLabel34LeftTopWidth	HeightAlignToBand	FontStyle WordWrap	Caption	CPF/CNPJ:  	TSZRLabel
zrlCPFCNPJLeft(TopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabel
SZRLabel36LefthTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionFone   :  	TSZRLabelzrlFoneLeftqTopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabel
SZRLabel38Left=TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionDT.Nasc:  	TSZRLabelzrlDataNascimentoLeftFTopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabel	SZRLabel7Left TopWidth	HeightAlignToBand	FontStyle WordWrap	Caption	Cliente :  	TSZRLabel
SZRLabel11Left Top Width	HeightAlignToBand	FontStyle WordWrap	Caption	Codigo  :  
TSZRDBText
SZRDBText3Left
Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetEmprestimo1	DataField
EMP_CODIGO  	TSZRLabelzrlCEPLeft� TopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabel
SZRLabel12Left{TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCEP:  	TSZRLabel
SZRLabel27Left[TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionFax   :  	TSZRLabelzrlFaxLeftcTopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabel
SZRLabel46LeftsTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCel :  	TSZRLabel
zrlCelularLeftyTopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabel
SZRLabel13Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabel	SZRLabel2LeftuTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionSituacao  
TSZRDBText
SZRDBText2LeftTop WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetEmprestimo1	DataFieldEMP_DT_CADASTRO   TSZRBandzrbRodapeGrupoLeftTopWidth� HeightBandTyperbGroupFooterForceNewColumnForceNewPage 	TSZRLabel	SZRLabel4Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================  	TSZRLabel
SZRLabel19LeftXTopWidth0HeightAlignToBand	FontStyle WordWrap	Caption0________________________________________________  	TSZRLabel
SZRLabel24LeftXTopWidth0Height	AlignmenttaCenterAlignToBand	FontStyle WordWrap	Caption
Assinatura    TCentroCustoCentroCusto1DatabaseNameDBguerraSQL.StringsSELECT * FROM CENTRO_DE_CUSTOWHERE CNC_CODIGO=:CNC_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaCENTRO_DE_CUSTO
Logradouro RecebeDadosLeft� Top� 	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown    TEmprestimoEmprestimo1DatabaseNameDBguerraFiltered	SQL.StringsSELECT * FROM EMPRESTIMOWHERE CNC_CODIGO=:CNC_CODIGOORDER BY CNC_CODIGO,CLI_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabela
EMPRESTIMO
CNCCliente 	CodigoCLI 	CodigoEMP 	CodigoLOT 	CodigoPRD DemonstracaoNotaFiscalEnt NotaFiscalSai Situacao Left� Top� 	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown    TClienteCliente1DatabaseNameDBguerraSQL.StringsSELECT *FROM CLIENTE7WHERE CNC_CODIGO=:CNC_CODIGO AND CLI_CODIGO=:CLI_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaCLIENTECLogradouro CRota Classificacao 	CodigoCLI Convenio ConvenioCNC 
Logradouro MensalNotaOrgao PessoaFisica	QuinzenalSPC Situacao Tipo Left� Top� 	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
CLI_CODIGO	ParamType	ptUnknown    TProdutoProduto1DatabaseNameDBguerraSQL.Strings:SELECT PRD_CODIGO,PRD_DESCRICAO,PRD_REFERENCIA,PRD_DETALHEFROM PRODUTOWHERE PRD_CODIGO=:PRD_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaPRODUTOCatalogoClassificacao 	CodigoCLF 	CodigoCTP 	CodigoFOR 	CodigoGRP 	CodigoORF 	CodigoPRD 	CodigoSGP EstoqueDetalhadoForaDeLinhaForaPrevisao
ForaTabelaInsumoNivel Previsao ServicoSituacao 
TempoMedio LeftTop� 	ParamDataDataType	ftIntegerName
PRD_CODIGO	ParamType	ptUnknown     