�
 TRPT_ENVIARCOB 0�  TPF0Trpt_EnviarCobrpt_EnviarCobLeft� Top� Width�HeightwCaptionrpt_EnviarCobFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style PixelsPerInch`
TextHeight 	TSZReport	SZReport1Left Top WidthQHeightColumnsColumnSpace Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthOptions.PageWidthQOptions.PaperTypezptSheet TSZRBandZRBand1LeftTopWidthNHeightBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth/HeightAlignToBand	FontStyle WordWrap	Caption%SACI - Relatorio de T�tulos em Atrazo  TSZRSysData
ZRSysData2Left0TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width/HeightAlignToBand	FontStyleesUnderline WordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel5Left TopWidthNHeightAlignToBand	FontStyle WordWrap	CaptionN==============================================================================  	TSZRLabelZRLabel1Left0Top WidthHeightAlignToBand	FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabelZRLabel6Left TopWidthNHeightAlignToBand	FontStyle WordWrap	Caption�==================================================================================================================================  	TSZRLabelZRLabel7Left TopWidthHeightAlignToBand	FontStyle WordWrap	Caption
Vencimento  	TSZRLabelZRLabel9LeftTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionValor  	TSZRLabel	ZRLabel10LeftTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionValor C/ Juros  	TSZRLabel	ZRLabel11Left7TopWidth
HeightAlignToBand	FontStyle WordWrap	Caption	Sequencia  	TSZRLabel	ZRLabel13Left(TopWidth
HeightAlignToBand	FontStyle WordWrap	CaptionNumero   TSZRBandSZRBand1LeftTopWidthNHeightBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText	ZRDBText2Left Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
CLI_CODIGO  	TSZRLabel	ZRLabel12LeftTop WidthHeightAlignToBand	FontStyle WordWrap	Caption-  
TSZRDBText	ZRDBText3LeftTop Width(HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldCLI_RZ_SOCIAL  
TSZRDBText	ZRDBText6Left TopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
CLI_BAIRRO  
TSZRDBText	ZRDBText1Left TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldTRC_VENCIMENTO  	TSZRLabel	ZRLabel14LeftTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption	ZRLabel14  
TSZRDBText	ZRDBText5LeftTopWidth<HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldCLI_ENDERECO  	TSZRLabel	ZRLabel15LeftTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption	ZRLabel15  
TSZRDBText	ZRDBText4Left(TopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
TRC_NUMERO  
TSZRDBText	ZRDBText9Left7TopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldTRC_SEQUENCIA  
TSZRDBText
SZRDBText1Left1Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldCLI_NOME_FAN  	TSZRLabel	SZRLabel1Left0Top WidthHeightAlignToBand	FontStyle WordWrap	Caption-   TSZRSubDetailBandSZRSubDetailBand1LeftTop	WidthNHeightDataSetItem_Pedido_Venda1Master	SZReport1ForceNewColumnForceNewPagePrintBeforePrintIfEmpty 
TSZRDBText
SZRDBText2LeftTop WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Pedido_Venda1	DataField
PDV_CODIGO  	TSZRLabel	SZRLabel3LeftTop WidthHeightAlignToBand	FontStyle WordWrap	Caption-  
TSZRDBText
SZRDBText4LeftTop WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Pedido_Venda1	DataFieldIPV_QUANTIDADE  
TSZRDBText
SZRDBText3LeftTop WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Pedido_Venda1	DataFieldPRD_DESCRICAO  
TSZRDBText
SZRDBText5Left1Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Pedido_Venda1	DataField	IPV_PRECO  
TSZRDBText
SZRDBText6Left:Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Pedido_Venda1	DataFieldIPV_PRECO_DESC    TTitulo_receberTitulo_receber1Filtered	DatabaseNameDBguerraSQL.StringsSELECT G   T1.*, T2.CLI_RZ_SOCIAL,T2.CLI_NOME_FAN,T2.CLI_ENDERECO,T2.CLI_BAIRROFROM"   TITULO_A_RECEBER T1, CLIENTE T2WHERE   T1.CLI_CODIGO=T2.CLI_CODIGO#   AND T1.CNC_CLIENTE=T2.CNC_CODIGO    AND T1.CNC_CODIGO=:CNC_CODIGO   AND T1.TRC_CODIGO IN0   (SELECT TRC_CODIGO FROM REGISTRO_DE_COBRANCA    WHERE CPC_CODIGO=:CPC_CODIGO   AND CNC_CODIGO=:CNC_CODIGO) 	ORDER BY 7   CLI_BAIRRO,CLI_ENDERECO,T1.CLI_CODIGO,TRC_VENCIMENTO Params.Data
C     
CNC_CODIGO        
CPC_CODIGO        
CNC_CODIGO        CentroDeCusto	CodigoCNC 
ClienteCNC 	CodigoAGF 	CodigoCCX 	CodigoCLI 	CodigoPDV 	CodigoTRC 	Pagamento      ��	<Situacao Tipo TipoPag 	TituloANT 
Vencimento �	��	<Left�Top�   TItem_Pedido_VendaItem_Pedido_Venda1Filtered	DatabaseNameDBguerra
DataSourceDSTitulo_receber1SQL.StringsSELECT  T1.*,T2.PRD_DESCRICAO *FROM ITEM_DE_PEDIDO_DE_VENDA T1,PRODUTO T2>WHERE T1.PDV_CODIGO=:PDV_CODIGO AND T1.CNC_CODIGO=:CNC_CODIGO .               AND T2.PRD_CODIGO=T1.PRD_CODIGOORDER BY T2.PRD_DESCRICAO Params.Data
.     
PDV_CODIGO        
CNC_CODIGO        CentroDeCusto	CodigoCNC AVista	CodigoFUN 	CodigoIEB 	CodigoIPV 	CodigoPDV 	CodigoPRD 	CodigoSEC 	CodigoTBP EntregaLocEst Situacao LeftTop�  TIntegerFieldItem_Pedido_Venda1CNC_CODIGO	FieldName
CNC_CODIGOOrigin"ITEM_DE_PEDIDO_DE_VENDA.CNC_CODIGO  TIntegerFieldItem_Pedido_Venda1PDV_CODIGO	FieldName
PDV_CODIGOOrigin"ITEM_DE_PEDIDO_DE_VENDA.PDV_CODIGO  TIntegerFieldItem_Pedido_Venda1PRD_CODIGO	FieldName
PRD_CODIGOOrigin"ITEM_DE_PEDIDO_DE_VENDA.PRD_CODIGO  TFloatField Item_Pedido_Venda1IPV_QUANTIDADE	FieldNameIPV_QUANTIDADEOrigin&ITEM_DE_PEDIDO_DE_VENDA.IPV_QUANTIDADE  TFloatFieldItem_Pedido_Venda1IPV_PRECO	FieldName	IPV_PRECOOrigin!ITEM_DE_PEDIDO_DE_VENDA.IPV_PRECO  TFloatField Item_Pedido_Venda1IPV_PRECO_DESC	FieldNameIPV_PRECO_DESCOrigin&ITEM_DE_PEDIDO_DE_VENDA.IPV_PRECO_DESC  TStringFieldItem_Pedido_Venda1PRD_DESCRICAO	FieldNamePRD_DESCRICAOOriginPRODUTO.PRD_DESCRICAOSize<   TDataSourceDSTitulo_receber1DataSetTitulo_receber1Left�Top   