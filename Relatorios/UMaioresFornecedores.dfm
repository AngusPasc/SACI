�
 TRPT_MAIORESFORNECEDORES 0�  TPF0Trpt_MaioresFornecedoresrpt_MaioresFornecedoresLeft]Top� BorderStylebsSingleCaptionMaiores FornecedoresClientHeightMClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeft Top Width� HeightAColumnsColumnSpace DataSetItem_Pedido_Compra1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthAOptions.PageWidth� Options.PaperTypezptSheet TSZRBandzrbCabecalhoLeftTopWidth� HeightBeforePrintzrbCabecalhoBeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth/HeightAlignToBand	FontStyle WordWrap	Caption)   SIAC - Relatório de Maiores Fornecedores  TSZRSysData
ZRSysData2LeftfTopWidth"Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width/HeightAlignToBand	FontStyleesUnderline WordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel5Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================  	TSZRLabelZRLabel1LeftfTop Width"Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabelZRLabel6Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================  	TSZRLabelslrPrecoLeft}TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption
Total item  	TSZRLabelsrlQuantidadeLefteTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption
Quantidade  	TSZRLabel	SZRLabel2Left TopWidth7HeightAlignToBand	FontStyle WordWrap	Caption
Fornecedor  	TSZRLabel
zrlDataINILeft TopWidth
HeightAlignToBand	FontStyle WordWrap	Caption
zrlDataINI  	TSZRLabel
SZRLabel11LeftTopWidthHeightAlignToBand	FontStyle WordWrap	Captiona  	TSZRLabel
zrlDataFIMLeftTopWidth
HeightAlignToBand	FontStyle WordWrap	Caption
zrlDataFIM  	TSZRLabel
zrlFiltrosLeft TopWidth� HeightAlignToBand	FontStyle WordWrap	  	TSZRLabel	SZRLabel4LeftqTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionPreco   TSZRBand
zrbDetalheLeftTop
Width� HeightBeforePrintzrbDetalheBeforePrintBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText	ZRDBText1LeftTop WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Pedido_Compra1	DataField
PRD_CODIGO  	TSZRLabel
zrlProdutoLeftTop WidthWHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlTotalItemLeft}Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlQuantidadeLefteTop WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlPrecoCompraLeftqTop WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	   TSZRBandzrbRodapePaginaLeftTopWidth� HeightBeforePrintzrbRodapePaginaBeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData1Left}TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberText   Pág.:  	TSZRLabelZRLabel8Left Top Width� HeightAlignToBand	FontStyle WordWrap	Caption�----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left TopWidth"HeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora  	TSZRLabel
zrlUsuarioLeft#TopWidth,HeightAlignToBand	FontStyleesItalic WordWrap	   	TSZRGroupzrgCodigoFORLeftTop	Width� HeightBeforePrintzrgCodigoFORBeforePrint
Expression
FOR_CODIGO
FooterBandzrbRodapeGrupoMasterreportForceNewColumnForceNewPage 
TSZRDBText	ZRDBText8Left Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Pedido_Compra1	DataField
FOR_CODIGO  	TSZRLabelzrlFornecedorLeft	Top Width.HeightAlignToBand	FontStyle WordWrap	   TSZRBandzrbRodapeGrupoLeftTopWidth� HeightBeforePrintzrbRodapeGrupoBeforePrintBandTyperbGroupFooterForceNewColumnForceNewPage 	TSZRLabel	ZRLabel15Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabel	ZRLabel21LeftmTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionProdutos      :  	TSZRLabel	SZRLabel6LeftmTop WidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	Caption---------------------------  	TSZRLabelzrlTotalProdutoLeft}TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	   TSZRBand
zrbSumarioLeftTopWidth� HeightBeforePrintzrbSumarioBeforePrintBandType	rbSummaryForceNewColumnForceNewPage 	TSZRLabel	SZRLabel8LeftmTop WidthHeightAlignToBand	FontStyle WordWrap	CaptionTotal Produtos:  	TSZRLabelzrlTotalGeralLeft}Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	    TItem_Pedido_CompraItem_Pedido_Compra1DatabaseNameDBguerraFiltered	SQL.StringsSELECT T1.*,T2.*FROM3    Item_de_Pedido_de_Compra T1,Pedido_de_Compra T2WHERE#    (T1.PCP_CODIGO = T2.PCP_CODIGO)ORDER BY#    T1.PCP_CODIGO,T1.IPC_CODIGO ASC 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaITEM_DE_PEDIDO_DE_COMPRA	CodigoIPC 	CodigoLOT 	CodigoPCP 	CodigoPRD TipoICMS LeftFTop�   TCentroCustoCentroCusto1DatabaseNameDBguerraSQL.StringsSELECT * FROM CENTRO_DE_CUSTOWHERE CNC_CODIGO=:CNC_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaCENTRO_DE_CUSTO
Logradouro RecebeDadosLeft(Top� 	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown    TFornecedorFornecedor1DatabaseNameDBguerraSQL.StringsSELECT * FROM FORNECEDORWHERE FOR_CODIGO=:FOR_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabela
FORNECEDORBanco 	CodigoCCX 	CodigoFOR 
Logradouro MaxItensNota Situacao LeftTop� 	ParamDataDataType	ftIntegerName
FOR_CODIGO	ParamType	ptUnknown    TProdutoProduto1DatabaseNameDBguerraSQL.StringsSELECT * FROM PRODUTOWHERE PRD_CODIGO=:PRD_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaPRODUTOCatalogoClassificacao 	CodigoCLF 	CodigoCTP 	CodigoFOR 	CodigoGRP 	CodigoORF 	CodigoPRD 	CodigoSGP EstoqueDetalhadoForaDeLinhaForaPrevisao
ForaTabelaInsumoNivel Previsao ServicoSituacao 
TempoMedio LeftdTop� 	ParamDataDataType	ftIntegerName
PRD_CODIGO	ParamType	ptUnknown     