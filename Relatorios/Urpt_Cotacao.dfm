�
 TRPT_COTACAO 0�  TPF0Trpt_Cotacaorpt_CotacaoLeft�Top� WidthPHeight�Captionrpt_CotacaoColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PixelsPerInch`
TextHeight 	TSZReportreportLeft TopWidthPHeight7ColumnsColumnSpace DataSetqry_iCotacaoFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLength7Options.PageWidthPOptions.PaperTypezptSheet TSZRBandZRBand1LeftTopWidthNHeightBeforePrintZRBand1BeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth.HeightAlignToBand	FontStyle WordWrap	CaptionSIAC - Pedido de Cotacao  TSZRSysData
ZRSysData2Left0TopWidthHeightAlignToBand	FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width.HeightAlignToBand	FontStyle WordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel5Left TopWidthNHeightAlignToBand	FontStyle WordWrap	Caption�===========================================================================================================================================================  	TSZRLabel	ZRLabel10LefthTopWidth
HeightAlignToBand	FontStyle WordWrap	Caption
Referencia  	TSZRLabel	ZRLabel11Left{TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionUnidade  	TSZRLabel	ZRLabel13LeftRTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionMarca  	TSZRLabel
SZRLabel12Left0Top WidthHeightAlignToBand	FontStyleesUnderline WordWrap	CaptionFone:  	TSZRLabel
SZRLabel16Left6Top WidthHeightAlignToBand	FontStyleesUnderline WordWrap	   TSZRBandZRBand4LeftTopWidthNHeightBeforePrintZRBand4BeforePrintBandTyperbPageFooterForceNewColumnForceNewPage 	TSZRLabelZRLabel4Left TopWidth$HeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora  	TSZRLabelZRLabel8Left Top WidthNHeightAlignToBand	FontStyle WordWrap	Caption�-------------------------------------------------------------------------------------------------------------------------------------------  TSZRSysData
ZRSysData1LeftCTopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberTextPag.:   TSZRBandSZRBand1LeftTopWidthNHeightBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText
SZRDBText4Left
Top Width:HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetqry_iCotacao	DataFieldICT_PRODUTO  
TSZRDBText
SZRDBText5LeftTopWidth	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetqry_iCotacao	DataField	ICT_PRECO  
TSZRDBText
SZRDBText8Left$TopWidth HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetqry_iCotacao	DataFieldICT_DESCONTOS  
TSZRDBText
SZRDBText7LeftTop WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetqry_iCotacao	DataField
PRD_CODIGO  	TSZRLabel
SZRLabel10Left	Top WidthHeightAlignToBand	FontStyle WordWrap	Caption-  
TSZRDBText
SZRDBText9LeftETopWidth	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetqry_iCotacao	DataField	ICT_PRECO  
TSZRDBTextSZRDBText10Left
TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetqry_iCotacao	DataFieldICT_QUANTIDADE   	TSZRGroup	SZRGroup1LeftTopWidthNHeight
Expression
MCT_CODIGOMasterreportForceNewColumnForceNewPage 	TSZRLabelZRLabel6Left TopWidthNHeightAlignToBand	FontStyle WordWrap	Caption�===========================================================================================================================================================  
TSZRDBText
SZRDBText1LeftTop WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetqry_cotacao	DataFieldMCT_DATA  
TSZRDBText
SZRDBText2LeftTop WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetqry_cotacao	DataField
MCT_CODIGO  
TSZRDBText
SZRDBText3LeftTopWidth-HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetqry_cotacao	DataFieldMCT_DESCRICAO  	TSZRLabel	SZRLabel1Left Top Width
HeightAlignToBand	FontStyle WordWrap	Caption
Codigo   :  	TSZRLabel	SZRLabel2LeftTop Width	HeightAlignToBand	FontStyle WordWrap	Caption	Cadastro:  	TSZRLabel	SZRLabel3Left TopWidth
HeightAlignToBand	FontStyle WordWrap	Caption
Descricao:  
TSZRDBTextSZRDBText16Left9Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetqry_cotacao	DataFieldMCT_DATA  	TSZRLabel
SZRLabel17Left/Top Width	HeightAlignToBand	FontStyle WordWrap	Caption	Alterado:  	TSZRLabel
SZRLabel14Left9TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionEntrega:  
TSZRDBTextSZRDBText15LeftCTopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetqry_iCotacao	DataFieldICT_ENTREGA  	TSZRLabel
SZRLabel15LeftITopWidthHeightAlignToBand	FontStyle WordWrap	Captiondias  	TSZRLabel
SZRLabel13Left TopWidth
HeightAlignToBand	FontStyle WordWrap	Caption
Pagamento:  
TSZRDBTextSZRDBText14LeftTopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetqry_iCotacao	DataFieldICT_PAGAMENTO  	TSZRLabel	SZRLabel6Left&TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionObs:  
TSZRDBText
SZRDBText6Left+TopWidth#HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetqry_iCotacao	DataFieldICT_PAGAMENTO  	TSZRLabel	SZRLabel7Left TopWidthNHeightAlignToBand	FontStyle WordWrap	CaptionN------------------------------------------------------------------------------  	TSZRLabel	SZRLabel4LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionProduto  	TSZRLabel	SZRLabel9Left
TopWidth:HeightAlignToBand	FontStyle WordWrap	Caption	Descricao  	TSZRLabel	SZRLabel8Left$TopWidth HeightAlignToBand	FontStyle WordWrap	CaptionDesconto  	TSZRLabel
SZRLabel18LeftETopWidth	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption   Preço  	TSZRLabel
SZRLabel19Left
TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionQtd  	TSZRLabel
SZRLabel20LeftTopWidth	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionPr.Unit.    TQueryqry_cotacaoDatabaseNameDBguerraSQL.Strings:SELECT * FROM MAPA_DE_COTACAO WHERE MCT_CODIGO=:MCT_CODIGO LeftTop� 	ParamDataDataType	ftIntegerName
MCT_CODIGO	ParamType	ptUnknown    TQueryqry_iCotacaoOnCalcFieldsqry_iCotacaoCalcFieldsDatabaseNameDBguerraSQL.StringsBSELECT * FROM ITEM_DE_MAPA_DE_COTACAO WHERE MCT_CODIGO=:MCT_CODIGOORDER BY ICT_PRODUTO Left5Top� 	ParamDataDataType	ftIntegerName
MCT_CODIGO	ParamType	ptUnknown     