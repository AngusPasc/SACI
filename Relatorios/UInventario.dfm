�
 TRPT_INVENTARIO 0  TPF0Trpt_Inventariorpt_InventarioLeft� Top� Width�HeightCaption   InventárioColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeftTop Width� HeightAColumnsColumnSpace DataSetItem_de_Inventario1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthAOptions.PageWidth� Options.PaperTypezptSheet TSZRBandzrbCabecalhoPaginaLeftTopWidth� HeightBeforePrintzrbCabecalhoPaginaBeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth/HeightAlignToBand	FontStyle WordWrap	CaptionSIAC - Inventario  TSZRSysData
ZRSysData2LeftjTopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width/HeightAlignToBand	FontStyleesUnderline WordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel1LeftjTop WidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabelZRLabel7Left TopWidthHeightAlignToBand	FontStyle WordWrap	Caption   Código  	TSZRLabelZRLabel9LeftTopWidth
HeightAlignToBand	FontStyle WordWrap	CaptionData  	TSZRLabel
zrlFiltrosLeft TopWidth� HeightAlignToBand	FontStyle WordWrap	  	TSZRLabel
zrlDataINILeft TopWidth
HeightAlignToBand	FontStyle WordWrap	Caption
zrlDataINI  	TSZRLabel
SZRLabel11LeftTopWidthHeightAlignToBand	FontStyle WordWrap	Captiona  	TSZRLabel
zrlDataFIMLeftTopWidth
HeightAlignToBand	FontStyle WordWrap	Caption
zrlDataFIM  	TSZRLabel	SZRLabel1LeftTopWidth(HeightAlignToBand	FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabel	SZRLabel2Left<TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionSituacao  	TSZRLabelZRLabel5Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================   TSZRBandzrbRodapePaginaLeftTopWidth� HeightBeforePrintzrbRodapePaginaBeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData1Left}TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberTextPag.:  	TSZRLabelZRLabel8Left Top Width� HeightAlignToBand	FontStyle WordWrap	Caption�----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left TopWidthHeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora  	TSZRLabel
zrlUsuarioLeftTopWidth(HeightAlignToBand	FontStyleesItalic WordWrap	   	TSZRGroupZRGroup1LeftTopWidth� HeightBeforePrintZRGroup1BeforePrint
ExpressionCNC_CODIGO+INV_CODIGOMasterreportForceNewColumnForceNewPage 
TSZRDBText	ZRDBText6Left TopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_de_Inventario1	DataField
INV_CODIGO  	TSZRLabel	ZRLabel21Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�----------------------------------------------------------------------------------------------------------------------------------------  
TSZRDBText
SZRDBText2LeftTopWidth
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_de_Inventario1	DataFieldINV_DATA  	TSZRLabelzrlSituacaoLeft<TopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlCentroDeCustoLeftTopWidth(HeightAlignToBand	FontStyle WordWrap	  	TSZRLabel	SZRLabel3Left Top Width� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================   TSZRBand
zrbDetalheLeftTopWidth� HeightBeforePrintzrbDetalheBeforePrintBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText	ZRDBText1LeftTop WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_de_Inventario1	DataField
PRD_CODIGO  	TSZRLabel	ZRLabel25Left
Top WidthHeightAlignToBand	FontStyle WordWrap	Caption-  	TSZRLabelzrlQuantidadeLeft~Top Width
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabel
zrlProdutoLeftTop WidthrHeightAlignToBand	FontStyle WordWrap	    TProdutoProduto1DatabaseNameDBguerraSQL.Stringsselect * from produto where prd_codigo=:prd_codigo 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaPRODUTOCatalogoClassificacao 	CodigoCLF 	CodigoCTP 	CodigoFOR 	CodigoGRP 	CodigoORF 	CodigoPRD 	CodigoSGP EstoqueDetalhadoForaDeLinhaForaPrevisao
ForaTabelaInsumoNivel Previsao ServicoSituacao 
TempoMedio Left:Top� 	ParamDataDataType	ftIntegerName
prd_codigo	ParamType	ptUnknown    TCentroCustoCentroCusto1DatabaseNameDBguerraSQL.StringsSELECT * FROM CENTRO_DE_CUSTOWHERE CNC_CODIGO=:CNC_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaCENTRO_DE_CUSTO
Logradouro RecebeDadosLeftZTop� 	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown    TItem_de_InventarioItem_de_Inventario1DatabaseNameDBguerraSQL.Strings2SELECT * FROM INVENTARIO T1, ITEM_DE_INVENTARIO T2!WHERE T1.INV_CODIGO=T2.INV_CODIGOAND T1.CNC_CODIGO=T2.CNC_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaITEM_DE_INVENTARIO	CodigoIIV 	CodigoINV 	CodigoLOT 	CodigoPRD LeftTop�    