�
 TRPT_ESTOQUEDETALHADO 0  TPF0Trpt_estoqueDetalhadorpt_estoqueDetalhadoLeftToppWidthHeightCaptionRelatorio dos EstoqueColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeft Top Width� HeightAColumnsColumnSpace DataSetItem_de_Estoque1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthAOptions.PageWidth� Options.PaperTypezptSheet TSZRBandZRBand1LeftTopWidth� HeightBeforePrintZRBand1BeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth5HeightAlignToBand	FontStyle WordWrap	Caption0SIAC - Relatorio de Posicao de Estoque Detalhado  TSZRSysData
ZRSysData2LeftXTop Width0Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width5HeightAlignToBand	FontStyle WordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel5Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�===========================================================================================================================================================  	TSZRLabelZRLabel6Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�===========================================================================================================================================================  	TSZRLabelZRLabel7Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCodigo  	TSZRLabelZRLabel9Left	TopWidthaHeightAlignToBand	FontStyle WordWrap	Caption	Descricao  	TSZRLabel
zrlFiltrosLeft TopWidth� HeightAlignToBand	FontStyle WordWrap	   TSZRBand
zrlDetalheLeftTop
Width� HeightBeforePrintzrlDetalheBeforePrintBandTyperbDetailForceNewColumnForceNewPage  TSZRBandZRBand3LeftTopWidth� HeightBeforePrintZRBand3BeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData1Left}TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberTextPag.:  	TSZRLabelZRLabel8Left Top Width� HeightAlignToBand	FontStyle WordWrap	Caption�-------------------------------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left TopWidth+HeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora  	TSZRLabel
zrlUsuarioLeft,TopWidth,HeightAlignToBand	FontStyleesItalic WordWrap	   	TSZRGroupzrbGrupoLeftTopWidth� HeightBeforePrintzrbGrupoBeforePrint
Expression
PRD_CODIGO
FooterBandzrbRodapeGrupoMasterreportForceNewColumnForceNewPage 
TSZRDBText	ZRDBText1Left Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_de_Estoque1	DataField
PRD_CODIGO  	TSZRLabel
zrlProdutoLeft	Top WidthaHeightAlignToBand	FontStyle WordWrap	   TSZRBandzrbRodapeGrupoLeftTopWidth� HeightBeforePrintzrbRodapeGrupoBeforePrintBandTyperbGroupFooterForceNewColumnForceNewPage 	TSZRLabelzrlDescEstoqueLeft	Top WidthHeightAlignToBand	FontStyle WordWrap	   	TSZRGroupzrgTipoDetalheLeftTop	Width� HeightBeforePrintzrgTipoDetalheBeforePrint
ExpressionIED_TIPO_ESTOQUEMasterreportForceNewColumnForceNewPage   TItem_de_EstoqueItem_de_Estoque1DatabaseNameDBguerraFiltered	SQL.Strings&SELECT * FROM ITEM_DE_ESTOQUE_DEPOSITOWHERE PRD_CODIGO=:PRD_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaITEM_DE_ESTOQUE	CodigoFUN 	CodigoPRD 
MaquinaIES LeftDTop� 	ParamDataDataType	ftIntegerName
PRD_CODIGO	ParamType	ptUnknown    TFornecedorFornecedor1DatabaseNameDBguerraSQL.Strings$SELECT FOR_RZ_SOCIAL FROM FORNECEDORWHERE FOR_CODIGO=:FOR_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabela
FORNECEDORBanco 	CodigoCCX 	CodigoFOR 
Logradouro MaxItensNota Situacao Left&Top� 	ParamDataDataType	ftIntegerName
FOR_CODIGO	ParamType	ptUnknown     