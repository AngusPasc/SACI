�
 TRPT_NOTAFISCALCOMPLETA 0]  TPF0Trpt_NotaFiscalCompletarpt_NotaFiscalCompletaLeft� Top|Width�Height�CaptionNotas FiscaisColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeft TopWidth� HeightAColumnsColumnSpace DataSetItem_Nota_Fiscal1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthAOptions.PageWidth� Options.PaperTypezptSheet TSZRBandZRBand1LeftTopWidth� HeightBeforePrintZRBand1BeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth%HeightAlignToBand	FontStyle WordWrap	CaptionSIAC - Relatorio de Vendas NF  TSZRSysData
ZRSysData2Left]TopWidth+Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width%HeightAlignToBand	FontStyleesUnderline BeforePrintZRLabel3BeforePrintWordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel1Left]Top Width+Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabel	SZRLabel5Left TopWidth
HeightAlignToBand	FontStyle WordWrap	Caption	SZRLabel5  	TSZRLabel	SZRLabel6LeftTopWidthHeightAlignToBand	FontStyle WordWrap	Captiona  	TSZRLabel	SZRLabel7LeftTopWidth
HeightAlignToBand	FontStyle WordWrap	Caption	SZRLabel7  	TSZRLabel	SZRLabel4Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================  	TSZRLabel
zrlFiltrosLeftTopWidthpHeightAlignToBand	FontStyle WordWrap	   TSZRBandzrb_detalheLeftTopWidth� HeightBeforePrintzrb_detalheBeforePrintBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText	ZRDBText6LeftTop WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Nota_Fiscal1	DataField
PRD_CODIGO  	TSZRLabel
zrlProdutoLeft
Top WidthKHeightAlignToBand	FontStyle WordWrap	  
TSZRDBText
SZRDBText1LeftWTop WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Nota_Fiscal1	DataFieldINF_QUANTIDADE  
TSZRDBText
SZRDBText2Left^Top Width	HeightHint	IPV_PRECO	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Nota_Fiscal1	DataField	INF_PRECO  	TSZRLabel
SZRLabel17Left	Top WidthHeightAlignToBand	FontStyle WordWrap	Caption-  TDBEditDBEdit1LefthTopWidth� Height	DataFieldINF_ALIQUOTA
DataSourceDataSource1TabOrder  
TSZRDBText
SZRDBText3LefthTop Width	HeightHint	IPV_PRECOHelpType	htKeyword	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Nota_Fiscal1	DataFieldINF_DESCONTO  	TSZRLabelzrlTotalItemLeftrTop Width	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlTotalICMSLeftTop Width	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  
TSZRDBText
SZRDBText8Left|Top WidthHeightHint	IPV_PRECOHelpType	htKeyword	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Nota_Fiscal1	DataFieldINF_ALIQUOTA   TSZRBandZRBand4LeftTopWidth� HeightBeforePrintZRBand4BeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData3Left}TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberTextPag.:  	TSZRLabel	ZRLabel15Left Top Width� HeightAlignToBand	FontStyle WordWrap	Caption�----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabel	ZRLabel16Left TopWidth"HeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora  	TSZRLabel
zrlUsuarioLeft#TopWidth,HeightAlignToBand	FontStyleesItalic WordWrap	   	TSZRGroupzrbGrupoCNCLeftTopWidth� HeightBeforePrintzrbGrupoCNCBeforePrint
Expression
CNC_CODIGO
FooterBandzrlbRodapeGrupoCentroMasterreportForceNewColumnForceNewPage	 	TSZRLabelSZRLabel171Left Top WidthHeightAlignToBand	FontStyle WordWrap	Caption*** Centro de Custo:  	TSZRLabelSZRLabel172LeftTop Width HeightAlignToBand	FontStyle WordWrap	CaptionSZRLabel172   	TSZRGroupzrbGrupoNTFLeftTopWidth� HeightBeforePrintzrbGrupoNTFBeforePrint
ExpressionCNC_CODIGO+NTF_CODIGO
FooterBandzrbRodapeGrupoNTFMasterreportForceNewColumnForceNewPage 	TSZRLabel
SZRLabel11Left Top WidthHeightAlignToBand	FontStyle WordWrap	CaptionPed:  	TSZRLabel
SZRLabel57Left� Top WidthHeightAlignToBand	FontStyle WordWrap	CaptionCNC:  
TSZRDBText
SZRDBText5Left� Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Nota_Fiscal1	DataField
CNC_CODIGO  
TSZRDBText
SZRDBText6LeftTop Width	HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Nota_Fiscal1	DataField
NTF_PEDIDO  	TSZRLabel	SZRLabel2LeftTop WidthHeightAlignToBand	FontStyle WordWrap	CaptionNum:  
TSZRDBText
SZRDBText7LeftTop Width	HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Nota_Fiscal1	DataFieldNTF_NOTA_FISCAL  	TSZRLabel
SZRLabel24Left*Top WidthHeightAlignToBand	FontStyle WordWrap	CaptionCli/For:  	TSZRLabel	SZRLabel1Left\Top WidthHeightAlignToBand	FontStyle WordWrap	CaptionData:  
TSZRDBText
SZRDBText9LeftbTop Width
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Nota_Fiscal1	DataFieldNTF_DT_EMISSAO  	TSZRLabel	SZRLabel9Left3Top Width(HeightAlignToBand	FontStyle WordWrap	  	TSZRLabel
SZRLabel18LeftmTop WidthHeightAlignToBand	FontStyle WordWrap	CaptionVend:  	TSZRLabel
SZRLabel19LeftsTop WidthHeightAlignToBand	FontStyle WordWrap	  
TSZRDBText
SZRDBText4Left$Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Nota_Fiscal1	DataFieldNTF_CFOP  	TSZRLabel
SZRLabel10LeftTop WidthHeightAlignToBand	FontStyle WordWrap	CaptionCFOP:  	TSZRLabelzrlEntradaSaidaLeft(Top WidthHeightAlignToBand	FontStyle WordWrap	   TSZRBandzrbRodapeGrupoNTFLeftTop	Width� HeightBeforePrintzrbRodapeGrupoNTFBeforePrintBandTyperbGroupFooterForceNewColumnForceNewPage 	TSZRLabel
SZRLabel12Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabel	SZRLabel8LeftrTop Width	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlSubTotalBonificacaoLeft2Top WidthHeight	AlignmenttaRightJustifyAlignToBandEnabled	FontStyle WordWrap	  	TSZRLabel
SZRLabel14LeftTop WidthHeightAlignToBandEnabled	FontStyle WordWrap	CaptionBonificacao:  	TSZRLabelzrlSubQtdBonificacaoLeft)Top WidthHeightAlignToBandEnabled	FontStyle WordWrap	  	TSZRLabelzrlSubTotalAmostraLeftMTop WidthHeight	AlignmenttaRightJustifyAlignToBandEnabled	FontStyle WordWrap	  	TSZRLabel
SZRLabel20Left;Top WidthHeightAlignToBandEnabled	FontStyle WordWrap	CaptionAmostra:  	TSZRLabelzrlSubQtdAmostraLeftDTop WidthHeightAlignToBandEnabled	FontStyle WordWrap	  	TSZRLabel
SZRLabel13Left0Top WidthHeightAlignToBandEnabled	FontStyle WordWrap	CaptionR$  	TSZRLabel
SZRLabel22LeftKTop WidthHeightAlignToBandEnabled	FontStyle WordWrap	CaptionR$  	TSZRLabel	zrlSubQtdLeftXTop WidthHeight	AlignmenttaRightJustifyAlignToBandEnabled	FontStyle WordWrap	  	TSZRLabel
SZRLabel28LeftTop Width	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	   TSZRBandzrlbRodapeGrupoCentroLeftTopWidth� HeightBeforePrint zrlbRodapeGrupoCentroBeforePrintBandTyperbGroupFooterForceNewColumnForceNewPage 	TSZRLabelSZRLabel173LeftTop WidthHeightAlignToBandEnabled	FontStyle WordWrap	CaptionTotal Centro:  	TSZRLabelSZRLabel174LeftrTop Width	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlTotalQtdCentroLeftXTop WidthHeight	AlignmenttaRightJustifyAlignToBandEnabled	FontStyle WordWrap	  	TSZRLabelzrlCentroTotalBonificacaoLeft2Top WidthHeight	AlignmenttaRightJustifyAlignToBandEnabled	FontStyle WordWrap	  	TSZRLabelzrlCentroQtdBonificacaoLeft)Top WidthHeightAlignToBandEnabled	FontStyle WordWrap	  	TSZRLabelzrlCentroTotalAmostraLeftMTop WidthHeight	AlignmenttaRightJustifyAlignToBandEnabled	FontStyle WordWrap	  	TSZRLabelzrlCentroQtdAmostraLeftDTop WidthHeightAlignToBandEnabled	FontStyle WordWrap	  	TSZRLabel
SZRLabel16Left0Top WidthHeightAlignToBandEnabled	FontStyle WordWrap	CaptionR$  	TSZRLabel
SZRLabel23LeftKTop WidthHeightAlignToBandEnabled	FontStyle WordWrap	CaptionR$   TSZRBand
zrbSumarioLeftTopWidth� HeightBeforePrintzrbSumarioBeforePrintBandType	rbSummaryForceNewColumnForceNewPage 	TSZRLabel	SZRLabel3LeftTopWidthHeightAlignToBandEnabled	FontStyle WordWrap	CaptionTotal Geral:  	TSZRLabelzrlTotalGeralLeftrTopWidth	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlTotalQtdGeralLeftXTopWidthHeight	AlignmenttaRightJustifyAlignToBandEnabled	FontStyle WordWrap	  	TSZRLabel
SZRLabel15LeftTop WidthmHeightAlignToBand	FontStyle WordWrap	Captionm-------------------------------------------------------------------------------------------------------------  	TSZRLabelzrlTotalBonificacaoLeft2TopWidthHeight	AlignmenttaRightJustifyAlignToBandEnabled	FontStyle WordWrap	  	TSZRLabelzrlTotalQtdBonificacaoLeft)TopWidthHeightAlignToBandEnabled	FontStyle WordWrap	  	TSZRLabelzrlTotalAmostraLeftMTopWidthHeight	AlignmenttaRightJustifyAlignToBandEnabled	FontStyle WordWrap	  	TSZRLabelzrlTotalQtdAmostraLeftDTopWidthHeightAlignToBandEnabled	FontStyle WordWrap	  	TSZRLabel
SZRLabel21Left0TopWidthHeightAlignToBandEnabled	FontStyle WordWrap	CaptionR$  	TSZRLabel
SZRLabel25LeftKTopWidthHeightAlignToBandEnabled	FontStyle WordWrap	CaptionR$    TFuncionarioFuncionario1DatabaseNameDBguerraSQL.StringsSELECT FUN_CODIGO,FUN_APELIDO FROM FUNCIONARIO7WHERE CNC_CODIGO=:CNC_CODIGO AND FUN_CODIGO=:FUN_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaFUNCIONARIOApareceServicosApareceVendasCFuncao CLogradouro 	CodigoFUN Funcao 
Logradouro Parceiro Secao Situacao Superior TodosCentrosUsuarioVinculado Left0Top� 	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
FUN_CODIGO	ParamType	ptUnknown    TProdutoProduto1DatabaseNameDBguerraSQL.Strings!SELECT PRD_DESCRICAO FROM PRODUTOWHERE PRD_CODIGO=:PRD_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaPRODUTOCatalogoClassificacao 	CodigoCLF 	CodigoCTP 	CodigoFOR 	CodigoGRP 	CodigoORF 	CodigoPRD 	CodigoSGP EstoqueDetalhadoForaDeLinhaForaPrevisao
ForaTabelaInsumoNivel Previsao ServicoSituacao 
TempoMedio LeftnTop� 	ParamDataDataType	ftIntegerName
PRD_CODIGO	ParamType	ptUnknown    TCentroCustoCentroCusto1DatabaseNameDBguerraSQL.StringsSELECT CNC_RZ_SOCIALFROM CENTRO_DE_CUSTOWHERE CNC_CODIGO=:CNC_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaCENTRO_DE_CUSTO
Logradouro RecebeDadosLeftOTop� 	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown    TItem_Nota_FiscalItem_Nota_Fiscal1DatabaseNameDBguerraSQL.Strings4SELECT * FROM NOTA_FISCAL T1, ITEM_DE_NOTA_FISCAL T25WHERE T1.NTF_CODIGO>0 AND T1.NTF_CODIGO=T2.NTF_CODIGOAND T1.CNC_CODIGO=T2.CNC_CODIGOORDER BY INF_CODIGO ASC 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaITEM_DE_NOTA_FISCAL	CodigoINF 	CodigoLOT 	CodigoNTF 	CodigoPRD TipoAliquota Left� Top�  TIntegerFieldItem_Nota_Fiscal1NTF_CODIGO	FieldName
NTF_CODIGOOriginDBGUERRA.NOTA_FISCAL.NTF_CODIGO  TIntegerFieldItem_Nota_Fiscal1CNC_CODIGO	FieldName
CNC_CODIGOOriginDBGUERRA.NOTA_FISCAL.CNC_CODIGO  TIntegerFieldItem_Nota_Fiscal1USU_CODIGO	FieldName
USU_CODIGOOriginDBGUERRA.NOTA_FISCAL.USU_CODIGO  TIntegerFieldItem_Nota_Fiscal1CNC_CLIENTE	FieldNameCNC_CLIENTEOrigin DBGUERRA.NOTA_FISCAL.CNC_CLIENTE  TIntegerFieldItem_Nota_Fiscal1CLI_CODIGO	FieldName
CLI_CODIGOOriginDBGUERRA.NOTA_FISCAL.CLI_CODIGO  TIntegerFieldItem_Nota_Fiscal1FOR_CODIGO	FieldName
FOR_CODIGOOriginDBGUERRA.NOTA_FISCAL.FOR_CODIGO  TIntegerFieldItem_Nota_Fiscal1FUN_CODIGO	FieldName
FUN_CODIGOOriginDBGUERRA.NOTA_FISCAL.FUN_CODIGO  TIntegerFieldItem_Nota_Fiscal1TRN_CODIGO	FieldName
TRN_CODIGOOriginDBGUERRA.NOTA_FISCAL.TRN_CODIGO  TIntegerFieldItem_Nota_Fiscal1CAG_CODIGO	FieldName
CAG_CODIGOOriginDBGUERRA.NOTA_FISCAL.CAG_CODIGO  TIntegerFieldItem_Nota_Fiscal1NTF_PEDIDO	FieldName
NTF_PEDIDOOriginDBGUERRA.NOTA_FISCAL.NTF_PEDIDO  TDateTimeField Item_Nota_Fiscal1NTF_DT_CADASTRO	FieldNameNTF_DT_CADASTROOrigin$DBGUERRA.NOTA_FISCAL.NTF_DT_CADASTRO  TDateTimeField Item_Nota_Fiscal1NTF_DT_ALTERADO	FieldNameNTF_DT_ALTERADOOrigin$DBGUERRA.NOTA_FISCAL.NTF_DT_ALTERADO  TDateTimeFieldItem_Nota_Fiscal1NTF_DT_EMISSAO	FieldNameNTF_DT_EMISSAOOrigin#DBGUERRA.NOTA_FISCAL.NTF_DT_EMISSAO  TDateTimeField%Item_Nota_Fiscal1NTF_DT_ENTRADA_SAIDA	FieldNameNTF_DT_ENTRADA_SAIDAOrigin)DBGUERRA.NOTA_FISCAL.NTF_DT_ENTRADA_SAIDA  TIntegerField"Item_Nota_Fiscal1NTF_ENTRADA_SAIDA	FieldNameNTF_ENTRADA_SAIDAOrigin&DBGUERRA.NOTA_FISCAL.NTF_ENTRADA_SAIDA  TIntegerFieldItem_Nota_Fiscal1NTF_TIPO_NOTA	FieldNameNTF_TIPO_NOTAOrigin"DBGUERRA.NOTA_FISCAL.NTF_TIPO_NOTA  TIntegerField Item_Nota_Fiscal1NTF_NOTA_FISCAL	FieldNameNTF_NOTA_FISCALOrigin$DBGUERRA.NOTA_FISCAL.NTF_NOTA_FISCAL  TStringFieldItem_Nota_Fiscal1NTF_SERIE	FieldName	NTF_SERIEOriginDBGUERRA.NOTA_FISCAL.NTF_SERIE	FixedChar	  TStringFieldItem_Nota_Fiscal1NTF_SUBSERIE	FieldNameNTF_SUBSERIEOrigin!DBGUERRA.NOTA_FISCAL.NTF_SUBSERIE	FixedChar	  TIntegerFieldItem_Nota_Fiscal1NTF_SELO	FieldNameNTF_SELOOriginDBGUERRA.NOTA_FISCAL.NTF_SELO  TIntegerFieldItem_Nota_Fiscal1NTF_AIDF	FieldNameNTF_AIDFOriginDBGUERRA.NOTA_FISCAL.NTF_AIDF  TIntegerFieldItem_Nota_Fiscal1NTF_CFOP	FieldNameNTF_CFOPOriginDBGUERRA.NOTA_FISCAL.NTF_CFOP  TFloatFieldItem_Nota_Fiscal1NTF_BASE_ICMS	FieldNameNTF_BASE_ICMSOrigin"DBGUERRA.NOTA_FISCAL.NTF_BASE_ICMS  TFloatFieldItem_Nota_Fiscal1NTF_ICMS	FieldNameNTF_ICMSOriginDBGUERRA.NOTA_FISCAL.NTF_ICMS  TFloatField"Item_Nota_Fiscal1NTF_BASE_ICMS_SUB	FieldNameNTF_BASE_ICMS_SUBOrigin&DBGUERRA.NOTA_FISCAL.NTF_BASE_ICMS_SUB  TFloatFieldItem_Nota_Fiscal1NTF_ICMS_SUB	FieldNameNTF_ICMS_SUBOrigin!DBGUERRA.NOTA_FISCAL.NTF_ICMS_SUB  TFloatField"Item_Nota_Fiscal1NTF_TOTAL_PRODUTO	FieldNameNTF_TOTAL_PRODUTOOrigin&DBGUERRA.NOTA_FISCAL.NTF_TOTAL_PRODUTO  TFloatFieldItem_Nota_Fiscal1NTF_TOTAL_NOTA	FieldNameNTF_TOTAL_NOTAOrigin#DBGUERRA.NOTA_FISCAL.NTF_TOTAL_NOTA  TFloatFieldItem_Nota_Fiscal1NTF_FRETE	FieldName	NTF_FRETEOriginDBGUERRA.NOTA_FISCAL.NTF_FRETE  TFloatFieldItem_Nota_Fiscal1NTF_SEGURO	FieldName
NTF_SEGUROOriginDBGUERRA.NOTA_FISCAL.NTF_SEGURO  TFloatFieldItem_Nota_Fiscal1NTF_OUTRAS	FieldName
NTF_OUTRASOriginDBGUERRA.NOTA_FISCAL.NTF_OUTRAS  TFloatFieldItem_Nota_Fiscal1NTF_IPI	FieldNameNTF_IPIOriginDBGUERRA.NOTA_FISCAL.NTF_IPI  TIntegerField$Item_Nota_Fiscal1NTF_TIPO_TRANSPORTE	FieldNameNTF_TIPO_TRANSPORTEOrigin(DBGUERRA.NOTA_FISCAL.NTF_TIPO_TRANSPORTE  TIntegerFieldItem_Nota_Fiscal1NTF_TIPO_FRETE	FieldNameNTF_TIPO_FRETEOrigin#DBGUERRA.NOTA_FISCAL.NTF_TIPO_FRETE  TStringFieldItem_Nota_Fiscal1NTF_PLACA	FieldName	NTF_PLACAOriginDBGUERRA.NOTA_FISCAL.NTF_PLACA	FixedChar	  TStringFieldItem_Nota_Fiscal1NTF_PLACA_UF	FieldNameNTF_PLACA_UFOrigin!DBGUERRA.NOTA_FISCAL.NTF_PLACA_UF	FixedChar	Size  TFloatFieldItem_Nota_Fiscal1NTF_QUANTIDADE	FieldNameNTF_QUANTIDADEOrigin#DBGUERRA.NOTA_FISCAL.NTF_QUANTIDADE  TStringFieldItem_Nota_Fiscal1NTF_ESPECIE	FieldNameNTF_ESPECIEOrigin DBGUERRA.NOTA_FISCAL.NTF_ESPECIE	FixedChar	Size  TStringFieldItem_Nota_Fiscal1NTF_MARCA	FieldName	NTF_MARCAOriginDBGUERRA.NOTA_FISCAL.NTF_MARCA	FixedChar	Size  TStringFieldItem_Nota_Fiscal1NTF_NUMERO	FieldName
NTF_NUMEROOriginDBGUERRA.NOTA_FISCAL.NTF_NUMERO	FixedChar	  TFloatFieldItem_Nota_Fiscal1NTF_PESO_BRUTO	FieldNameNTF_PESO_BRUTOOrigin#DBGUERRA.NOTA_FISCAL.NTF_PESO_BRUTO  TFloatField!Item_Nota_Fiscal1NTF_PESO_LIQUIDO	FieldNameNTF_PESO_LIQUIDOOrigin%DBGUERRA.NOTA_FISCAL.NTF_PESO_LIQUIDO  TIntegerFieldItem_Nota_Fiscal1NTF_SITUACAO	FieldNameNTF_SITUACAOOrigin!DBGUERRA.NOTA_FISCAL.NTF_SITUACAO  TStringFieldItem_Nota_Fiscal1NTF_OBSERVACAO	FieldNameNTF_OBSERVACAOOrigin#DBGUERRA.NOTA_FISCAL.NTF_OBSERVACAO	FixedChar	Size�   TFloatFieldItem_Nota_Fiscal1NTF_ICMS_FRETE	FieldNameNTF_ICMS_FRETEOrigin#DBGUERRA.NOTA_FISCAL.NTF_ICMS_FRETE  TIntegerField!Item_Nota_Fiscal1NTF_CONHECIMENTO	FieldNameNTF_CONHECIMENTOOrigin%DBGUERRA.NOTA_FISCAL.NTF_CONHECIMENTO  TIntegerFieldItem_Nota_Fiscal1INF_CODIGO	FieldName
INF_CODIGOOrigin%DBGUERRA.NOTA_FISCAL.NTF_CONHECIMENTO  TIntegerFieldItem_Nota_Fiscal1CNC_CODIGO_1	FieldNameCNC_CODIGO_1Origin%DBGUERRA.NOTA_FISCAL.NTF_CONHECIMENTO  TIntegerFieldItem_Nota_Fiscal1NTF_CODIGO_1	FieldNameNTF_CODIGO_1Origin%DBGUERRA.NOTA_FISCAL.NTF_CONHECIMENTO  TIntegerFieldItem_Nota_Fiscal1PRD_CODIGO	FieldName
PRD_CODIGOOrigin%DBGUERRA.NOTA_FISCAL.NTF_CONHECIMENTO  TStringFieldItem_Nota_Fiscal1INF_SERVICO	FieldNameINF_SERVICOOrigin%DBGUERRA.NOTA_FISCAL.NTF_CONHECIMENTO	FixedChar	Sized  TFloatFieldItem_Nota_Fiscal1INF_QUANTIDADE	FieldNameINF_QUANTIDADEOrigin%DBGUERRA.NOTA_FISCAL.NTF_CONHECIMENTODisplayFormat0.00  TFloatFieldItem_Nota_Fiscal1INF_PRECO	FieldName	INF_PRECOOrigin%DBGUERRA.NOTA_FISCAL.NTF_CONHECIMENTODisplayFormat0.0000  TFloatFieldItem_Nota_Fiscal1INF_DESCONTO	FieldNameINF_DESCONTOOrigin%DBGUERRA.NOTA_FISCAL.NTF_CONHECIMENTODisplayFormat0.00  TIntegerField"Item_Nota_Fiscal1INF_TIPO_ALIQUOTA	FieldNameINF_TIPO_ALIQUOTAOrigin%DBGUERRA.NOTA_FISCAL.NTF_CONHECIMENTO  TFloatFieldItem_Nota_Fiscal1INF_ALIQUOTA	FieldNameINF_ALIQUOTAOrigin%DBGUERRA.NOTA_FISCAL.NTF_CONHECIMENTODisplayFormat0.00  TFloatFieldItem_Nota_Fiscal1NTF_ISS	FieldNameNTF_ISSOriginDBGUERRA.NOTA_FISCAL.NTF_ISS  TFloatFieldItem_Nota_Fiscal1NTF_BASE_ISS	FieldNameNTF_BASE_ISSOrigin!DBGUERRA.NOTA_FISCAL.NTF_BASE_ISS  TIntegerFieldItem_Nota_Fiscal1CNC_PEDIDO	FieldName
CNC_PEDIDOOriginDBGUERRA.NOTA_FISCAL.CNC_PEDIDO  TStringFieldItem_Nota_Fiscal1NTF_ENDERECO	FieldNameNTF_ENDERECOOrigin!DBGUERRA.NOTA_FISCAL.NTF_ENDERECO	FixedChar	Sized  TStringFieldItem_Nota_Fiscal1NTF_BAIRRO	FieldName
NTF_BAIRROOriginDBGUERRA.NOTA_FISCAL.NTF_BAIRRO	FixedChar	Sized  TStringFieldItem_Nota_Fiscal1NTF_MUNICIPIO	FieldNameNTF_MUNICIPIOOrigin"DBGUERRA.NOTA_FISCAL.NTF_MUNICIPIO	FixedChar	Sized  TStringFieldItem_Nota_Fiscal1NTF_UF	FieldNameNTF_UFOriginDBGUERRA.NOTA_FISCAL.NTF_UF	FixedChar	Size  TStringFieldItem_Nota_Fiscal1NTF_CEP	FieldNameNTF_CEPOriginDBGUERRA.NOTA_FISCAL.NTF_CEP	FixedChar	  TIntegerFieldItem_Nota_Fiscal1NTF_NOTA_CUPOM	FieldNameNTF_NOTA_CUPOMOrigin#DBGUERRA.NOTA_FISCAL.NTF_NOTA_CUPOM  TIntegerFieldItem_Nota_Fiscal1NTF_AVULSA	FieldName
NTF_AVULSAOriginDBGUERRA.NOTA_FISCAL.NTF_AVULSA  TIntegerField"Item_Nota_Fiscal1NTF_COD_PAGAMENTO	FieldNameNTF_COD_PAGAMENTOOrigin&DBGUERRA.NOTA_FISCAL.NTF_COD_PAGAMENTO  TFloatField"Item_Nota_Fiscal1NTF_TOTAL_SERVICO	FieldNameNTF_TOTAL_SERVICOOrigin&DBGUERRA.NOTA_FISCAL.NTF_TOTAL_SERVICO  TIntegerFieldItem_Nota_Fiscal1FUN_ARQUITETO	FieldNameFUN_ARQUITETOOrigin"DBGUERRA.NOTA_FISCAL.FUN_ARQUITETO  TIntegerFieldItem_Nota_Fiscal1CNC_ORIGEM	FieldName
CNC_ORIGEMOriginDBGUERRA.NOTA_FISCAL.CNC_ORIGEM  TFloatField!Item_Nota_Fiscal1INF_ALIQUOTA_IPI	FieldNameINF_ALIQUOTA_IPIOriginDBGUERRA.NOTA_FISCAL.CNC_ORIGEM  TIntegerFieldItem_Nota_Fiscal1CNC_ORIGEM_1	FieldNameCNC_ORIGEM_1OriginDBGUERRA.NOTA_FISCAL.CNC_ORIGEM  TIntegerField$Item_Nota_Fiscal1NTF_COD_PAGAMENTO_2	FieldNameNTF_COD_PAGAMENTO_2Origin(DBGUERRA.NOTA_FISCAL.NTF_COD_PAGAMENTO_2  TFloatField Item_Nota_Fiscal1INF_BONIFICACAO	FieldNameINF_BONIFICACAOOriginDBGUERRA.NOTA_FISCAL.NTF_CODIGO  TIntegerFieldItem_Nota_Fiscal1NTF_MAQUINA	FieldNameNTF_MAQUINAOrigin DBGUERRA.NOTA_FISCAL.NTF_MAQUINA  TIntegerFieldItem_Nota_Fiscal1TRO_CODIGO	FieldName
TRO_CODIGOOriginDBGUERRA.NOTA_FISCAL.TRO_CODIGO  TFloatField!Item_Nota_Fiscal1INF_ALIQUOTA_ISS	FieldNameINF_ALIQUOTA_ISSOriginDBGUERRA.NOTA_FISCAL.TRO_CODIGO  TDateTimeField Item_Nota_Fiscal1INF_DT_CADASTRO	FieldNameINF_DT_CADASTROOriginDBGUERRA.NOTA_FISCAL.TRO_CODIGO  TDateTimeField Item_Nota_Fiscal1INF_DT_ALTERADO	FieldNameINF_DT_ALTERADOOriginDBGUERRA.NOTA_FISCAL.TRO_CODIGO  TFloatFieldItem_Nota_Fiscal1INF_AMOSTRA	FieldNameINF_AMOSTRAOriginDBGUERRA.NOTA_FISCAL.TRO_CODIGO   TDataSourceDataSource1DataSetItem_Nota_Fiscal1Left� Top�   TClienteCliente1DatabaseNameDBguerraSQL.Strings SELECT CLI_CODIGO, CLI_RZ_SOCIALFROM CLIENTEWHERE CNC_CODIGO=:CNC_CODIGO AND CLI_CODIGO=:CLI_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaCLIENTECLogradouro CRota Classificacao 	CodigoCLI Convenio ConvenioCNC 
Logradouro MensalNotaOrgao PessoaFisica	QuinzenalSPC Situacao Tipo Left� Top� 	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
CLI_CODIGO	ParamType	ptUnknown    TFornecedorFornecedor1DatabaseNameDBguerraSQL.StringsSELECT * FROM FORNECEDORWHERE FOR_CODIGO=:FOR_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabela
FORNECEDORBanco 	CodigoCCX 	CodigoFOR 
Logradouro MaxItensNota Situacao LeftTop� 	ParamDataDataType	ftIntegerName
FOR_CODIGO	ParamType	ptUnknown    TTransportadoraTransportadora1DatabaseNameDBguerraSQL.StringsSELECT * FROM TRANSPORTADORAWHERE TRN_CODIGO=:TRN_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaTRANSPORTADORACFornecedor 	CodigoCCX 	CodigoTRN 
Logradouro Situacao Left� Top� 	ParamDataDataType	ftIntegerName
TRN_CODIGO	ParamType	ptUnknown     