ÿ
 TRPT_PRODUTOSINVENT 0d6  TPF0Trpt_ProdutosInventrpt_ProdutosInventLeftÐ Top² WidthæHeighteCaption   RelatÃ³rio dos ProdutosColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightõ	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeft Top Width HeightAColumnsColumnSpace DataSetItem_de_Inventario1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightõ	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthAOptions.PageWidth Options.PaperTypezptSheet TSZRBandZRBand1LeftTopWidth HeightBeforePrintZRBand1BeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth/HeightAlignToBand	FontStyle WordWrap	Caption*SIAC - Relatorio de Produtos Inventariados  TSZRSysData
ZRSysData2LeftdTopWidth$Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width/HeightAlignToBand	FontStyle BeforePrintZRLabel3BeforePrintWordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel5Left TopWidth HeightAlignToBand	FontStyle WordWrap	Caption========================================================================================================================================  	TSZRLabelZRLabel1LeftdTop Width$Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabel
zrlFiltrosLeft TopWidth HeightAlignToBand	FontStyle WordWrap	   TSZRBand
zrbDetalheLeftTopWidth HeightBeforePrintzrbDetalheBeforePrintBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText	ZRDBText1LeftTop WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_de_Inventario1	DataField
PRD_CODIGO  
TSZRDBText	ZRDBText4Left=Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_de_Inventario1	DataFieldPRD_REFERENCIA  
TSZRDBText	ZRDBText5LefthTop WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_de_Inventario1	DataFieldPRD_UNIDADE  
TSZRDBText	ZRDBText9LeftLTop WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_de_Inventario1	DataField	PRD_MARCA  
TSZRDBText
SZRDBText2Left\Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_de_Inventario1	DataFieldPRD_DETALHE  	TSZRLabelzrlAtualLeftmTop WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlAnteriorLeftwTop WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlInformadoLeft Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  
TSZRDBText
SZRDBText1LeftHTopWidth@HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_de_Inventario1	DataFieldIIV_OBSERVACAO  	TSZRLabel
zrlProdutoLeft	Top Width3HeightAlignToBand	FontStyle WordWrap	  	TSZRLabel
SZRLabel25LeftTopWidth	HeightAlignToBand	FontStyle WordWrap	Caption
SZRLabel25  	TSZRLabel
SZRLabel26LeftTopWidthHeightAlignToBand	FontStyle WordWrap	Caption
SZRLabel26  	TSZRLabel
SZRLabel27Left$TopWidthHeightAlignToBand	FontStyle WordWrap	Caption
SZRLabel27  	TSZRLabel
SZRLabel28Left6TopWidthHeightAlignToBand	FontStyle WordWrap	Caption
SZRLabel28   TSZRBandZRBand3LeftTopWidth HeightBeforePrintZRBand3BeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData1Left}TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberText   PÃ¡g.:  	TSZRLabelZRLabel8Left Top Width HeightAlignToBand	FontStyle WordWrap	Caption----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left TopWidth0HeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora  	TSZRLabel
zrlUsuarioLeft1TopWidth,HeightAlignToBand	FontStyleesItalic WordWrap	   	TSZRGroup	SZRGroup1LeftTopWidth HeightBeforePrintSZRGroup1BeforePrint
ExpressionCNC_CODIGO+INV_CODIGOMasterreportForceNewColumnForceNewPage 	TSZRLabel	SZRLabel3Left Top WidthHeightAlignToBand	FontStyle WordWrap	CaptionInventario:  
TSZRDBText
SZRDBText5LeftTop WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_de_Inventario1	DataField
INV_CODIGO  	TSZRLabel	SZRLabel4LeftTop Width	HeightAlignToBand	FontStyle WordWrap	Caption	Cadastro:  
TSZRDBText
SZRDBText6LeftTop Width
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_de_Inventario1	DataFieldINV_DATA  	TSZRLabel	SZRLabel5Left*Top Width	HeightAlignToBand	FontStyle WordWrap	Caption	Alterado:  
TSZRDBText
SZRDBText7Left4Top Width
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_de_Inventario1	DataFieldINV_DT_ALTERADO  	TSZRLabel	SZRLabel6Left?Top Width	HeightAlignToBand	FontStyle WordWrap	Caption	Situacao:  	TSZRLabel	SZRLabel7LeftVTop WidthHeightAlignToBand	FontStyle WordWrap	CaptionTipo:  	TSZRLabelzrlSituacaoLeftITop WidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlTipoLeft\Top WidthHeightAlignToBand	FontStyle WordWrap	  
TSZRDBText
SZRDBText8Left TopWidthlHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_de_Inventario1	DataFieldINV_OBSERVACAO1  	TSZRLabel	SZRLabel8Left TopWidth HeightAlignToBand	FontStyle WordWrap	Caption----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabelZRLabel6Left TopWidth HeightAlignToBand	FontStyle WordWrap	Caption========================================================================================================================================  	TSZRLabelZRLabel7Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCodigo  	TSZRLabelZRLabel9LeftTopWidth5HeightAlignToBand	FontStyle WordWrap	CaptionProduto  	TSZRLabel	ZRLabel10Left=TopWidthHeightAlignToBand	FontStyle WordWrap	Caption
Referencia  	TSZRLabel	ZRLabel11LefthTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionUnd.  	TSZRLabelzrlDescAtualLeftmTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionAtual  	TSZRLabel	ZRLabel13LeftLTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionMarca  	TSZRLabel	ZRLabel12Left TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	CaptionQtd.Inf.  	TSZRLabelzrlDescAnteriorLeftwTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionAnterior  	TSZRLabel	SZRLabel2Left\TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionDetalhe  	TSZRLabel	SZRLabel9LeftlTop WidthHeightAlignToBand	FontStyle WordWrap	CaptionUsuario:  	TSZRLabelzrlUltimoUsuarioLeftuTop WidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabel
SZRLabel10LeftmTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption--Estoque Fisico--  	TSZRLabel
SZRLabel21LeftTopWidth	HeightAlignToBandAutoSize		FontStyle WordWrap	Caption	Cod. Lote  	TSZRLabel
SZRLabel22LeftTopWidthHeightAlignToBandAutoSize		FontStyle WordWrap	CaptionDescricao Lote  	TSZRLabel
SZRLabel20Left$TopWidth
HeightAlignToBandAutoSize		FontStyle WordWrap	Caption
Referencia  	TSZRLabel
SZRLabel23Left6TopWidthHeightAlignToBandAutoSize		FontStyle WordWrap	CaptionData Validade  	TSZRLabel
SZRLabel24LeftHTopWidth
HeightAlignToBandAutoSize		FontStyle WordWrap	Caption
Observacao   	TSZRGroupzrbGrupoGRPLeftTopWidth HeightBeforePrintzrbGrupoGRPBeforePrint
Expression
GRP_CODIGO
FooterBandzrbRodapeGRPMasterreportForceNewColumnForceNewPage 	TSZRLabel
SZRLabel11Left Top WidthHeightAlignToBand	FontStyle WordWrap	CaptionGrupo:  	TSZRLabelzrlGrupoLeftTop Width2HeightAlignToBand	FontStyle WordWrap	   TSZRBandzrbRodapeGRPLeftTopWidth HeightBeforePrintzrbRodapeGRPBeforePrintBandTyperbGroupFooterForceNewColumnForceNewPage 	TSZRLabelzrlAtualGRPLeftmTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlAnteriorGRPLeftwTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlInformadoGRPLeft TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabel
SZRLabel14LeftbTop Width&HeightAlignToBand	FontStyle WordWrap	Caption---------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabel
SZRLabel15LeftbTopWidth	HeightAlignToBand	FontStyle WordWrap	CaptionGrupo:   	TSZRGroupzrbGrupoSGPLeftTopWidth HeightBeforePrintzrbGrupoSGPBeforePrint
Expression
SGP_CODIGO
FooterBandzrbRodapeSGPMasterreportForceNewColumnForceNewPage 	TSZRLabel
SZRLabel12Left TopWidth	Height AlignToBand	FontStyle WordWrap	Caption	SubGrupo:  	TSZRLabel
SZRLabel13Left
TopWidth2Height AlignToBand	FontStyle WordWrap	  	TSZRLabel	SZRLabel1LeftTop Width	HeightAlignToBand	FontStyle WordWrap	Caption	SubGrupo:  	TSZRLabelzrlSubGrupoLeftTop Width2HeightAlignToBand	FontStyle WordWrap	   TSZRBandzrbRodapeSGPLeftTopWidth HeightBeforePrintzrbRodapeSGPBeforePrintBandTyperbGroupFooterForceNewColumnForceNewPage 	TSZRLabel
SZRLabel16LeftbTop Width&HeightAlignToBand	FontStyle WordWrap	Caption---------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabelzrlAtualSGPLeftmTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlAnteriorSGPLeftwTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlInformadoSGPLeft TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabel
SZRLabel17LeftbTopWidth	HeightAlignToBand	FontStyle WordWrap	Caption	SubGrupo:   TSZRBand
zrbSumarioLeftTopWidth HeightBeforePrintzrbSumarioBeforePrintBandType	rbSummaryForceNewColumnForceNewPage 	TSZRLabelzrlAtualTotalLeftmTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlAnteriorTotalLeftwTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlInformadoTotalLeft TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabel
SZRLabel18LeftbTop Width&HeightAlignToBand	FontStyle WordWrap	Caption---------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabel
SZRLabel19LeftbTopWidth	HeightAlignToBand	FontStyle WordWrap	CaptionTotal:    TItem_de_InventarioItem_de_Inventario1DatabaseNameDBguerraFiltered	SQL.StringsSELECT I1.USU_CODIGO as USU,:I1.*,T1.*,T2.PRD_DESCRICAO,T2.PRD_REFERENCIA,T2.PRD_MARCA,:T2.PRD_UNIDADE, T2.PRD_DETALHE,T2.GRP_CODIGO,T2.SGP_CODIGO5FROM INVENTARIO I1, ITEM_DE_INVENTARIO T1, PRODUTO T2WHERE T1.INV_CODIGO=:INV_CODIGOAND T1.CNC_CODIGO=:CNC_CODIGOAND T1.PRD_CODIGO=T2.PRD_CODIGOAND I1.CNC_CODIGO=T1.CNC_CODIGOAND I1.INV_CODIGO=T1.INV_CODIGOQORDER BY I1.CNC_CODIGO,I1.INV_CODIGO,T2.GRP_CODIGO,T2.SGP_CODIGO,T2.PRD_DESCRICAO CConfiguracaoDM.Configuracao1	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaITEM_DE_INVENTARIO	CodigoIIV 	CodigoINV 	CodigoLOT 	CodigoPRD Left$TopZ	ParamDataDataType	ftIntegerName
INV_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown    TItem_de_EstoqueItem_de_Estoque1
BeforeOpenItem_de_Estoque1BeforeOpenDatabaseNameDBguerraFiltered	SQL.StringsSELECT * FROM ITEM_DE_ESTOQUE WHERE CNC_CODIGO=:CNC_CODIGO AND PRD_CODIGO=:PRD_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaITEM_DE_ESTOQUE	CodigoFUN 	CodigoPRD 
MaquinaIES LeftBTopZ	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftUnknownName
PRD_CODIGO	ParamType	ptUnknown    TQueryItem_de_Estoque_Detalhe1DatabaseNameDBguerraSQL.Strings3SELECT IED.LOT_CODIGO,LOT_DESCRICAO,LOT_REFERENCIA,-LOT_DT_VALIDADE,IED_QTD_FISICO,IED_QTD_FISCAL FROM ITEM_DE_ESTOQUE_DETALHE IEDINNER JOIN LOTE LOT ON LOT.LOT_CODIGO=IED.LOT_CODIGO!WHERE     CNC_CODIGO=:CNC_CODIGO AND IED.PRD_CODIGO=:PRD_CODIGO LeftaTopZ	ParamDataDataType	ftUnknownName
CNC_CODIGO	ParamType	ptUnknown DataType	ftUnknownName
PRD_CODIGO	ParamType	ptUnknown     