�
 TRPT_QTDNORMALVENDA 0  TPF0Trpt_QtdNormalVendarpt_QtdNormalVendaLeftTopiWidth(Height`Captionrpt_QtdNormalVendaColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeftTopWidth� HeightAColumnsColumnSpace DataSetQuantidadeNormalVenda1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthAOptions.PageWidth� Options.PaperTypezptSheet TSZRBandZRBand1LeftTopWidth� HeightBeforePrintZRBand1BeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth/HeightAlignToBand	FontStyle WordWrap	Caption.SIAC - Relatorio de Quantidade Normal de Venda  TSZRSysData
ZRSysData2Left`TopWidth(Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width/HeightAlignToBand	FontStyle BeforePrintZRLabel3BeforePrintWordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel5Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================  	TSZRLabelZRLabel1Left`Top Width(Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabelZRLabel6Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================  	TSZRLabelZRLabel7Left>TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionSubgrupo  	TSZRLabelZRLabel9Left1TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionGrupo  	TSZRLabel	ZRLabel10Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCodigo  	TSZRLabel	SZRLabel1Left~TopWidth
Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	Caption
Qtd.Normal  	TSZRLabel	SZRLabel5LeftTopWidth)HeightAlignToBand	FontStyle WordWrap	Caption
Fornecedor  	TSZRLabel	SZRLabel2LeftJTopWidth3HeightAlignToBand	FontStyle WordWrap	CaptionProduto   TSZRBandZRBand2LeftTopWidth� HeightBeforePrintZRBand2BeforePrintBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText	ZRDBText3Left Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetQuantidadeNormalVenda1	DataField
QNV_CODIGO  
TSZRDBText
SZRDBText1Left~Top Width
Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	BlankIfZeroDataSetQuantidadeNormalVenda1	DataFieldQNV_QUANTIDADE  	TSZRLabelzrlFornecedorLeftTop Width)HeightAlignToBand	FontStyle WordWrap	  	TSZRLabel
zrlProdutoLeftJTop Width3HeightAlignToBand	FontStyle WordWrap	  
TSZRDBText
SZRDBText2Left1Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetQuantidadeNormalVenda1	DataField
GRP_CODIGO  
TSZRDBText
SZRDBText3Left>Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetQuantidadeNormalVenda1	DataField
SGP_CODIGO   TSZRBandZRBand3LeftTopWidth� HeightBeforePrintZRBand3BeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData1Left}TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberTextPag.:  	TSZRLabelZRLabel8Left Top Width� HeightAlignToBand	FontStyle WordWrap	Caption�-----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left TopWidth'HeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora  	TSZRLabel
zrlUsuarioLeft(TopWidth,HeightAlignToBand	FontStyleesItalic WordWrap	    TQuantidadeNormalVendaQuantidadeNormalVenda1DatabaseNameDBguerraSQL.Strings%SELECT * FROM QUANTIDADE_NORMAL_VENDA7ORDER BY FOR_CODIGO,  GRP_CODIGO,SGP_CODIGO, PRD_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina	CodigoFOR 	CodigoGRP 	CodigoPRD 	CodigoQNV 	CodigoSGP Situacao LeftTop�  TIntegerField QuantidadeNormalVenda1CNC_CODIGO	FieldName
CNC_CODIGOOrigin+DBGUERRA.QUANTIDADE_NORMAL_VENDA.CNC_CODIGO  TIntegerField QuantidadeNormalVenda1QNV_CODIGO	FieldName
QNV_CODIGOOrigin+DBGUERRA.QUANTIDADE_NORMAL_VENDA.QNV_CODIGO  TIntegerField QuantidadeNormalVenda1USU_CODIGO	FieldName
USU_CODIGOOrigin+DBGUERRA.QUANTIDADE_NORMAL_VENDA.USU_CODIGO  TIntegerField QuantidadeNormalVenda1FOR_CODIGO	FieldName
FOR_CODIGOOrigin+DBGUERRA.QUANTIDADE_NORMAL_VENDA.FOR_CODIGO  TIntegerField QuantidadeNormalVenda1GRP_CODIGO	FieldName
GRP_CODIGOOrigin+DBGUERRA.QUANTIDADE_NORMAL_VENDA.GRP_CODIGO  TIntegerField QuantidadeNormalVenda1SGP_CODIGO	FieldName
SGP_CODIGOOrigin+DBGUERRA.QUANTIDADE_NORMAL_VENDA.SGP_CODIGO  TIntegerField QuantidadeNormalVenda1PRD_CODIGO	FieldName
PRD_CODIGOOrigin+DBGUERRA.QUANTIDADE_NORMAL_VENDA.PRD_CODIGO  TDateTimeField%QuantidadeNormalVenda1QNV_DT_CADASTRO	FieldNameQNV_DT_CADASTROOrigin0DBGUERRA.QUANTIDADE_NORMAL_VENDA.QNV_DT_CADASTRO  TDateTimeField%QuantidadeNormalVenda1QNV_DT_ALTERADO	FieldNameQNV_DT_ALTERADOOrigin0DBGUERRA.QUANTIDADE_NORMAL_VENDA.QNV_DT_ALTERADO  TFloatField$QuantidadeNormalVenda1QNV_QUANTIDADE	FieldNameQNV_QUANTIDADEOrigin/DBGUERRA.QUANTIDADE_NORMAL_VENDA.QNV_QUANTIDADE  TIntegerField"QuantidadeNormalVenda1QNV_SITUACAO	FieldNameQNV_SITUACAOOrigin-DBGUERRA.QUANTIDADE_NORMAL_VENDA.QNV_SITUACAO  TStringField$QuantidadeNormalVenda1QNV_OBSERVACAO	FieldNameQNV_OBSERVACAOOrigin/DBGUERRA.QUANTIDADE_NORMAL_VENDA.QNV_OBSERVACAO	FixedChar	Size�    TProdutoProduto1DatabaseNameDBguerraSQL.Strings:SELECT PRD_CODIGO, PRD_DESCRICAO, PRD_MARCA, PRD_UNIDADE, PRD_REFERENCIA, PRD_DETALHEFROM PRODUTOWHERE PRD_CODIGO=:PRD_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaPRODUTOCatalogoClassificacao 	CodigoCLF 	CodigoCTP 	CodigoFOR 	CodigoGRP 	CodigoORF 	CodigoPRD 	CodigoSGP EstoqueDetalhadoForaDeLinhaForaPrevisao
ForaTabelaInsumoNivel Previsao ServicoSituacao 
TempoMedio LeftPTop� 	ParamDataDataType	ftIntegerName
PRD_CODIGO	ParamType	ptUnknown    TFornecedorFornecedor1DatabaseNameDBguerraSQL.Strings SELECT FOR_CODIGO,FOR_RZ_SOCIAL FROM FORNECEDORWHERE FOR_CODIGO=:FOR_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabela
FORNECEDORBanco 	CodigoCCX 	CodigoFOR 
Logradouro MaxItensNota Situacao Left3Top� 	ParamDataDataType	ftIntegerName
FOR_CODIGO	ParamType	ptUnknown     