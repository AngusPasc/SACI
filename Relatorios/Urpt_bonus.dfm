�
 TRPT_BONUS 0R!  TPF0
Trpt_Bonus	rpt_BonusLeft� TopdWidth(Height`BorderIconsbiSystemMenu Caption	rpt_BonusColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterOnClose	FormClosePixelsPerInch`
TextHeight 	TSZReportreportLeft Top�Width� HeightABeforePrintreportBeforePrintColumnsColumnSpace DataSetBonus1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthAOptions.PageWidth� Options.PaperTypezptSheet TSZRBandZRBand1LeftTopWidth� HeightBeforePrintZRBand1BeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth/HeightAlignToBand	FontStyle WordWrap	Caption$   SIAC - Relatorio de Tabela de Bônus  TSZRSysData
ZRSysData2LeftjTopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width/HeightAlignToBand	FontStyle BeforePrintZRLabel3BeforePrintWordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel1LeftjTop WidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabel	SZRLabel1Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCentro de Custo:  	TSZRLabel	SZRLabel2LeftTopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelZRLabel6Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================  	TSZRLabel	SZRLabel5LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionProduto  	TSZRLabel	SZRLabel6LeftTopWidtheHeightAlignToBand	FontStyle WordWrap	Caption	Descricao  	TSZRLabelzrlDescBonus2Left~TopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption
Bonus2(R$)  	TSZRLabel
SZRLabel10LeftTopWidthHeightAlignToBand	FontStyle WordWrap	Caption-  	TSZRLabel	SZRLabel4Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabelzrlDescBonus1LeftsTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption	Bonus1(%)  	TSZRLabel
zrlFiltrosLeft TopWidth� HeightAlignToBand	FontStyle WordWrap	   TSZRSubDetailBandSZRSubDetailBand1LeftTop
Width� HeightDataSetItem_de_Bonus1MasterreportForceNewColumnForceNewPagePrintBeforePrintIfEmpty 
TSZRDBText
SZRDBText2LeftTop WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_de_Bonus1	DataField
PRD_CODIGO  
TSZRDBText	zrdBonus1LeftsTop Width	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_de_Bonus1	DataFieldIBN_BONUS_FOR  	TSZRLabelzrlDescPercentualLeft|Top WidthHeightAlignToBand	FontStyle WordWrap	Caption%  
TSZRDBText	zrdBonus2Left~Top Width
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_de_Bonus1	DataFieldIBN_BONUS_LOJA  
TSZRDBText
SZRDBText5LeftTop WidtheHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_de_Bonus1	DataFieldProduto  	TSZRLabel
SZRLabel12LeftTop WidthHeightAlignToBand	FontStyle WordWrap	Caption-   TSZRBandZRBand2LeftTop	Width� HeightBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText
SZRDBText1LeftTop WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetBonus1	DataFieldEpoca  	TSZRLabel	SZRLabel3LeftTop WidthHeightAlignToBand	FontStyle WordWrap	CaptionPeriodo:   TSZRBandzrbRodapePaginaLeftTopWidth� HeightBeforePrintzrbRodapePaginaBeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData1Left}TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberTextPag.:  	TSZRLabelZRLabel8Left Top Width� HeightAlignToBand	FontStyle WordWrap	Caption�----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left TopWidth*HeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora  	TSZRLabel
zrlUsuarioLeft+TopWidth,HeightAlignToBand	FontStyleesItalic WordWrap	    TBonusBonus1OnCalcFieldsBonus1CalcFieldsDatabaseNameDBguerraFiltered	SQL.StringsSELECT * FROM BONUS T1ORDER BY T1.BON_ANO,T1.BON_MES 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaBONUSAno 	CodigoBON Mes LeftTop�  TIntegerFieldBonus1BON_CODIGO	FieldName
BON_CODIGOOriginDBGUERRA.BONUS.BON_CODIGO  TIntegerFieldBonus1BON_MES	FieldNameBON_MESOriginDBGUERRA.BONUS.BON_MES  TIntegerFieldBonus1BON_ANO	FieldNameBON_ANOOriginDBGUERRA.BONUS.BON_ANO  TIntegerFieldBonus1USU_CODIGO	FieldName
USU_CODIGOOriginDBGUERRA.BONUS.USU_CODIGO  TDateTimeFieldBonus1BON_DT_ALTERADO	FieldNameBON_DT_ALTERADOOriginDBGUERRA.BONUS.BON_DT_ALTERADO  TDateTimeFieldBonus1BON_DT_CADASTRO	FieldNameBON_DT_CADASTROOriginDBGUERRA.BONUS.BON_DT_CADASTRO  TStringFieldBonus1Epoca	FieldKindfkCalculated	FieldNameEpoca
Calculated	   TItem_de_BonusItem_de_Bonus1OnCalcFieldsItem_de_Bonus1CalcFieldsDatabaseNameDBguerraFiltered	
DataSourceDSBonus1SQL.StringsSELECT * FROM ITEM_DE_BONUS T1WHERE T1.BON_CODIGO=:BON_CODIGOORDER BY T1.PRD_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaITEM_DE_BONUS	CodigoBON 	CodigoIBN 	CodigoPRD Left3Top� 	ParamDataDataType	ftIntegerName
BON_CODIGO	ParamType	ptUnknown   TIntegerFieldItem_de_Bonus1IBN_CODIGO	FieldName
IBN_CODIGOOrigin!DBGUERRA.ITEM_DE_BONUS.IBN_CODIGO  TIntegerFieldItem_de_Bonus1BON_CODIGO	FieldName
BON_CODIGOOrigin!DBGUERRA.ITEM_DE_BONUS.BON_CODIGO  TIntegerFieldItem_de_Bonus1PRD_CODIGO	FieldName
PRD_CODIGOOrigin!DBGUERRA.ITEM_DE_BONUS.PRD_CODIGO  TIntegerFieldItem_de_Bonus1USU_CODIGO	FieldName
USU_CODIGOOrigin!DBGUERRA.ITEM_DE_BONUS.USU_CODIGO  TDateTimeFieldItem_de_Bonus1IBN_DT_CADASTRO	FieldNameIBN_DT_CADASTROOrigin&DBGUERRA.ITEM_DE_BONUS.IBN_DT_CADASTRO  TDateTimeFieldItem_de_Bonus1IBN_DT_ALTERADO	FieldNameIBN_DT_ALTERADOOrigin&DBGUERRA.ITEM_DE_BONUS.IBN_DT_ALTERADO  TFloatFieldItem_de_Bonus1IBN_BONUS_FOR	FieldNameIBN_BONUS_FOROrigin$DBGUERRA.ITEM_DE_BONUS.IBN_BONUS_FORDisplayFormat0.00  TFloatFieldItem_de_Bonus1IBN_BONUS_LOJA	FieldNameIBN_BONUS_LOJAOrigin%DBGUERRA.ITEM_DE_BONUS.IBN_BONUS_LOJADisplayFormat0.00  TStringFieldItem_de_Bonus1Produto	FieldKindfkCalculated	FieldNameProdutoSized
Calculated	   TDataSourceDSBonus1DataSetBonus1LeftTop�   TProdutoProduto1DatabaseNameDBguerraSQL.Strings,SELECT PRD_CODIGO,PRD_DESCRICAO,PRD_DETALHE,PRD_REFERENCIA,PRD_MARCAFROM PRODUTOWHERE PRD_CODIGO=:PRD_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaPRODUTOCatalogoClassificacao 	CodigoCLF 	CodigoCTP 	CodigoFOR 	CodigoGRP 	CodigoORF 	CodigoPRD 	CodigoSGP EstoqueDetalhadoForaDeLinhaForaPrevisao
ForaTabelaInsumoNivel Previsao ServicoSituacao 
TempoMedio LeftTTop� 	ParamDataDataType	ftIntegerName
PRD_CODIGO	ParamType	ptUnknown    TCentroCustoCentroCusto1DatabaseNameDBguerraSQL.StringsSELECT * FROM CENTRO_DE_CUSTOWHERE CNC_CODIGO=:CNC_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaCENTRO_DE_CUSTO
Logradouro RecebeDadosLeft4Top� 	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown     