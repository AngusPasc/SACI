�
 TRPT_VENDASVENDEDOR 0L�  TPF0Trpt_VendasVendedorrpt_VendasVendedorLeft� TopZWidth(Height`Captionrpt_VendasVendedorColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormClosePixelsPerInch`
TextHeight 	TSZReportreportLeft TopWidth� HeightABeforePrintreportBeforePrintColumnsColumnSpace DataSetItem_Pedido_Venda1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthAOptions.PageWidth� Options.PaperTypezptSheet 	TSZRGroup	SZRGroup1LeftTopWidth� HeightBeforePrintSZRGroup1BeforePrint
Expression
FUN_CODIGO
FooterBandSZRBand1MasterreportForceNewColumnForceNewPage	 	TSZRLabel
SZRLabel42Left Top WidthHeightAlignToBand	FontStyle WordWrap	Caption*** Vendedor(a):  	TSZRLabel
SZRLabel43LeftTop Width HeightAlignToBand	FontStyle WordWrap	   TSZRBandZRBand1LeftTopWidth� HeightBeforePrintZRBand1BeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth/HeightAlignToBand	FontStyle WordWrap	Caption&SIAC - Relatorio de Vendas P/ Vendedor  TSZRSysData
ZRSysData2LeftjTopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width/HeightAlignToBand	FontStyle BeforePrintZRLabel3BeforePrintWordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel1LeftjTop WidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabel	SZRLabel5Left TopWidth
HeightAlignToBand	FontStyle WordWrap	Caption	SZRLabel5  	TSZRLabel	SZRLabel6LeftTopWidthHeightAlignToBand	FontStyle WordWrap	Captiona  	TSZRLabel	SZRLabel7LeftTopWidth
HeightAlignToBand	FontStyle WordWrap	Caption	SZRLabel7  	TSZRLabel
SZRLabel12LeftrTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionSomente Prod.:  	TSZRLabel
SZRLabel13Left� TopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabel	SZRLabel3Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionPedido  	TSZRLabel
SZRLabel31LeftTopWidth
HeightAlignToBand	FontStyle WordWrap	CaptionData  	TSZRLabelSZRLabel156LeftTopWidth	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionValor  	TSZRLabelSZRLabel157Left$TopWidth(HeightAlignToBand	FontStyle WordWrap	CaptionCliente  	TSZRLabelSZRLabel158LeftMTopWidth
HeightAlignToBand	FontStyle WordWrap	CaptionNota  	TSZRLabelSZRLabel159LeftXTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionTelefone  	TSZRLabelSZRLabel160LefthTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionContato  	TSZRLabelSZRLabel162LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionVEN  	TSZRLabelSZRLabel163Left!TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionPg  	TSZRLabelZRLabel5Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================   TSZRBandzrb_detalheLeftTopWidth� HeightBeforePrintzrb_detalheBeforePrintBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText	ZRDBText1LeftTop Width(HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Pedido_Venda1	DataFieldproduto  
TSZRDBText	ZRDBText6LeftTop WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Pedido_Venda1	DataField
PRD_CODIGO  TSZRExpressionZRExpression1Left}Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CurrencyResetAfterPrint
ExpressionKIF(IPV_PRECO_DESC=0,IPV_PRECO*IPV_QUANTIDADE,IPV_PRECO_DESC*IPV_QUANTIDADE)Mask0.00  
TSZRDBText
ZRDBText10LeftSTop Width
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Pedido_Venda1	DataFieldIPV_QUANTIDADE  	TSZRLabel	SZRLabel1LeftTop WidthHeightAlignToBand	FontStyle WordWrap	Caption-  TSZRExpressionSZRExpression1LeftsTop Width	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CurrencyResetAfterPrint
Expression-IF(IPV_PRECO_DESC=0,IPV_PRECO,IPV_PRECO_DESC)Mask0.00  
TSZRDBText
SZRDBText6Left9Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Pedido_Venda1	DataField
Referencia  
TSZRDBText
SZRDBText7LeftHTop Width
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Pedido_Venda1	DataFieldDetalhe  
TSZRDBText
SZRDBText1Left5Top WidthHeight	AlignmenttaCenterAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Pedido_Venda1	DataFieldUnidade  
TSZRDBText
SZRDBText4Left_Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Pedido_Venda1	DataFieldIPV_DESCONTO  	TSZRLabel
SZRLabel45LeftfTop WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption%   TSZRBandZRBand4LeftTop(Width� HeightBeforePrintZRBand4BeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData3Left}TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberTextPag.:  	TSZRLabel	ZRLabel15Left�Top Width� HeightAlignToBand	FontStyle WordWrap	Caption�----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabel	ZRLabel16Left TopWidth"HeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora   TSZRBandZRBand5LeftTopWidth� HeightBeforePrintZRBand5BeforePrintBandTyperbGroupFooterForceNewColumnForceNewPage 	TSZRLabelZRLabel4LeftsTopWidth	HeightAlignToBand	FontStyle WordWrap	Caption	SubTotal:  	TSZRLabel	ZRLabel11LeftsTop WidthHeightAlignToBand	FontStyle WordWrap	CaptionO-------------------------------------------------------------------------------  	TSZRLabel	ZRLabel26Left}TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption	ZRLabel26  	TSZRLabel
SZRLabel65Left TopWidthsHeightAlignToBand	FontStyle WordWrap	Captions-------------------------------------------------------------------------------------------------------------------  	TSZRLabel
SZRLabel66LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionDuplicatas: Agente Financeiro:  	TSZRLabel
SZRLabel67Left"TopWidth:HeightAlignToBand	FontStyle WordWrap	Caption
SZRLabel67  	TSZRLabel
SZRLabel68Left
TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionSeq.  	TSZRLabel
SZRLabel69LeftTopWidth
HeightAlignToBand	FontStyle WordWrap	Caption
Vencimento  	TSZRLabel
SZRLabel70LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionValor Parc.  	TSZRLabel
SZRLabel71Left TopWidthsHeightAlignToBand	FontStyle WordWrap	Captions|-------------------------------------|-------------------------------------|-------------------------------------|  	TSZRLabel
SZRLabel72Left0TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionSeq.  	TSZRLabel
SZRLabel73Left5TopWidth
HeightAlignToBand	FontStyle WordWrap	Caption
Vencimento  	TSZRLabel
SZRLabel74Left@TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionValor Parc.  	TSZRLabel
SZRLabel75LeftVTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionSeq.  	TSZRLabel
SZRLabel76Left[TopWidth
HeightAlignToBand	FontStyle WordWrap	Caption
Vencimento  	TSZRLabel
SZRLabel77LeftfTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionValor Parc.  	TSZRLabel
SZRLabel78Left&TopWidthHeightAlignToBand	FontStyle WordWrap	Caption|  	TSZRLabel
SZRLabel79Left&TopWidthHeightAlignToBand	FontStyle WordWrap	Caption|  	TSZRLabel
SZRLabel80Left&TopWidthHeightAlignToBand	FontStyle WordWrap	Caption|  	TSZRLabel
SZRLabel81Left&Top	WidthHeightAlignToBand	FontStyle WordWrap	Caption|  	TSZRLabel
SZRLabel82Left&Top
WidthHeightAlignToBand	FontStyle WordWrap	Caption|  	TSZRLabel
SZRLabel83LeftLTopWidthHeightAlignToBand	FontStyle WordWrap	Caption|  	TSZRLabel
SZRLabel84LeftLTopWidthHeightAlignToBand	FontStyle WordWrap	Caption|  	TSZRLabel
SZRLabel85LeftLTop	WidthHeightAlignToBand	FontStyle WordWrap	Caption|  	TSZRLabel
SZRLabel86LeftLTop
WidthHeightAlignToBand	FontStyle WordWrap	Caption|  	TSZRLabel
SZRLabel87LeftLTopWidthHeightAlignToBand	FontStyle WordWrap	Caption|  	TSZRLabel
SZRLabel88Left TopWidthsHeightAlignToBand	FontStyle WordWrap	Captions-------------------------------------------------------------------------------------------------------------------  	TSZRLabel
SZRLabel90Left TopWidthHeightAlignToBand	FontStyle WordWrap	Caption|  	TSZRLabel
SZRLabel91Left TopWidthHeightAlignToBand	FontStyle WordWrap	Caption|  	TSZRLabel
SZRLabel92Left TopWidthHeightAlignToBand	FontStyle WordWrap	Caption|  	TSZRLabel
SZRLabel93Left TopWidthHeightAlignToBand	FontStyle WordWrap	Caption|  	TSZRLabel
SZRLabel94Left Top	WidthHeightAlignToBand	FontStyle WordWrap	Caption|  	TSZRLabel
SZRLabel95Left Top
WidthHeightAlignToBand	FontStyle WordWrap	Caption|  	TSZRLabel
SZRLabel96LeftrTopWidthHeightAlignToBand	FontStyle WordWrap	Caption|  	TSZRLabel
SZRLabel97LeftrTopWidthHeightAlignToBand	FontStyle WordWrap	Caption|  	TSZRLabel
SZRLabel98LeftrTop	WidthHeightAlignToBand	FontStyle WordWrap	Caption|  	TSZRLabel
SZRLabel99LeftrTop
WidthHeightAlignToBand	FontStyle WordWrap	Caption|  	TSZRLabelSZRLabel100LeftrTopWidthHeightAlignToBand	FontStyle WordWrap	Caption|  	TSZRLabelSZRLabel101LeftrTopWidthHeightAlignToBand	FontStyle WordWrap	Caption|  	TSZRLabelSZRLabel102Left
TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel103LeftTopWidth
HeightAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel104LeftTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel105Left
TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel106LeftTopWidth
HeightAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel107LeftTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel108Left
Top	WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel109LeftTop	Width
HeightAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel110LeftTop	WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel111Left
Top
WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel112LeftTop
Width
HeightAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel113LeftTop
WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel114Left0TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel115Left5TopWidth
HeightAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel116Left@TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel117Left0TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel118Left5TopWidth
HeightAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel119Left@TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel120Left0Top	WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel121Left5Top	Width
HeightAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel122Left@Top	WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel123Left0Top
WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel124Left5Top
Width
HeightAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel125Left@Top
WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel126LeftVTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel127Left[TopWidth
HeightAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel128LeftfTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel129LeftVTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel130Left[TopWidth
HeightAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel131LeftfTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel132LeftVTop	WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel133Left[Top	Width
HeightAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel134LeftfTop	WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel135LeftVTop
WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel136Left[Top
Width
HeightAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel137LeftfTop
WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel138Left TopWidth\HeightAlignToBand	FontStyle WordWrap	Caption:Apos Pagamento Procure Vendedor p/ Emissao de Nota Fiscal.  	TSZRLabelSZRLabel139Left TopWidth\HeightAlignToBand	FontStyle WordWrap	CaptionTOBS.: CONFIRA A MERCADORIA NO ATO DA ENTREGA. NAO ACEITAMOS RECLAMACOES POSTERIORES.  	TSZRLabelZRLabel8Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================  	TSZRLabelSZRLabel140LeftTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionTitulo  	TSZRLabelSZRLabel141Left(TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionTitulo  	TSZRLabelSZRLabel142LeftNTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionTitulo  	TSZRLabelSZRLabel143LeftTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel144LeftTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel145LeftTop	WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel146LeftTop
WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel147Left(TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel148Left(TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel149Left(Top	WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel150Left(Top
WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel151LeftNTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel152LeftNTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel153LeftNTop	WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel154LeftNTop
WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	   TSZRBandZRBand3LeftTop'Width� HeightBeforePrintZRBand3BeforePrintBandType	rbSummaryForceNewColumnForceNewPage 	TSZRLabel	ZRLabel21LeftoTop WidthHeightAlignToBand	FontStyle WordWrap	CaptionTotal Geral:  	TSZRLabel	ZRLabel25Left}Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption	ZRLabel25  	TSZRLabel
SZRLabel54LeftdTop Width
Height	AlignmenttaRightJustifyAlignToBandEnabled	FontStyle WordWrap	Caption
SZRLabel54  	TSZRLabel
SZRLabel55LeftWTop WidthHeightAlignToBandEnabled	FontStyle WordWrap	CaptionQtd. Geral:   	TSZRGroupZRGroup1LeftTopWidth� HeightBeforePrintZRGroup1BeforePrint
ExpressionCNC_CODIGO+PDV_CODIGO
FooterBandZRBand5MasterreportForceNewColumnForceNewPage 	TSZRLabel	ZRLabel24Left Top
Width� HeightAlignToBand	FontStyle WordWrap	Caption�----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabel	ZRLabel10LeftTop	Width0HeightAlignToBand	FontStyle WordWrap	CaptionProduto  	TSZRLabel	ZRLabel19LeftSTop	Width
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption
Quantidade  	TSZRLabel	SZRLabel8LeftTop WidthHeightAlignToBand	FontStyle WordWrap	CaptionData:  	TSZRLabel	SZRLabel9Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabel
SZRLabel10Left
TopWidth2HeightAlignToBand	FontStyle WordWrap	Caption
SZRLabel10  	TSZRLabel
SZRLabel11LeftTop WidthHeightAlignToBand	FontStyle WordWrap	Caption
SZRLabel11  	TSZRLabel
SZRLabel14LeftFTopWidth!HeightAlignToBand	FontStyle WordWrap	Caption
SZRLabel14  	TSZRLabel
SZRLabel15Left=TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionApelido:  	TSZRLabel
SZRLabel16Left TopWidth	HeightAlignToBand	FontStyle WordWrap	Caption	Endereco:  	TSZRLabel
SZRLabel17Left
TopWidth2HeightAlignToBand	FontStyle WordWrap	Caption
SZRLabel17  	TSZRLabel
SZRLabel18LeftFTopWidthHeightAlignToBand	FontStyle WordWrap	Caption
SZRLabel18  	TSZRLabel
SZRLabel19LefteTopWidthHeightAlignToBand	FontStyle WordWrap	Caption
SZRLabel19  	TSZRLabel
SZRLabel20Left=TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionBairro :  	TSZRLabel
SZRLabel21Left[TopWidth	HeightAlignToBand	FontStyle WordWrap	Caption	Cidade  :  	TSZRLabel
SZRLabel24Left TopWidth	HeightAlignToBand	FontStyle WordWrap	Caption	Conjuge :  	TSZRLabel
SZRLabel25Left
TopWidth2HeightAlignToBand	FontStyle WordWrap	Caption
SZRLabel25  	TSZRLabel
SZRLabel26Left=TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionPai/Mae:  	TSZRLabel
SZRLabel27LeftFTopWidthBHeightAlignToBand	FontStyle WordWrap	Caption
SZRLabel27  	TSZRLabel
SZRLabel28Left TopWidth	HeightAlignToBand	FontStyle WordWrap	Caption	Trabalho:  	TSZRLabel
SZRLabel29Left
TopWidth~HeightAlignToBand	FontStyle WordWrap	Caption
SZRLabel29  	TSZRLabel
SZRLabel30Left TopWidth	HeightAlignToBand	FontStyle WordWrap	Caption	Obs.    :  	TSZRLabel
SZRLabel32Left TopWidth	HeightAlignToBand	FontStyle WordWrap	Caption	RG/CGF  :  	TSZRLabel
SZRLabel33Left
TopWidthHeightAlignToBand	FontStyle WordWrap	Caption
SZRLabel33  	TSZRLabel
SZRLabel34LeftTopWidth	HeightAlignToBand	FontStyle WordWrap	Caption	CPF/CNPJ:  	TSZRLabel
SZRLabel35Left(TopWidthHeightAlignToBand	FontStyle WordWrap	Caption
SZRLabel35  	TSZRLabel
SZRLabel36LefthTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionFone   :  	TSZRLabel
SZRLabel37LeftqTopWidthHeightAlignToBand	FontStyle WordWrap	Caption
SZRLabel37  	TSZRLabel
SZRLabel38Left=TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionDT.Nasc:  	TSZRLabel
SZRLabel39LeftFTopWidthHeightAlignToBand	FontStyle WordWrap	Caption
SZRLabel39  	TSZRLabel
SZRLabel40Left[TopWidth	HeightAlignToBand	FontStyle WordWrap	Caption	Situacao:  	TSZRLabel
SZRLabel41LefteTopWidth#HeightAlignToBand	FontStyle WordWrap	Caption
SZRLabel41  	TSZRLabel
SZRLabel46Left5Top	WidthHeightAlignToBand	FontStyle WordWrap	CaptionUnd  	TSZRLabel
SZRLabel47LeftsTop	Width	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption	Pr. Unid.  	TSZRLabel
SZRLabel48LeftFTopWidth!HeightAlignToBand	FontStyle WordWrap	Caption
SZRLabel48  	TSZRLabel
SZRLabel49Left TopWidth	HeightAlignToBand	FontStyle WordWrap	Caption	Tipo Pag:  	TSZRLabel
SZRLabel50LefthTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionAgente :  	TSZRLabel
SZRLabel51LeftqTopWidthHeightAlignToBand	FontStyle WordWrap	Caption
SZRLabel51  	TSZRLabel
SZRLabel52Left<TopWidth	HeightAlignToBand	FontStyle WordWrap	Caption	Forma P.:  	TSZRLabel
SZRLabel53Left
TopWidth1HeightAlignToBand	FontStyle WordWrap	Caption
SZRLabel53  	TSZRLabel
SZRLabel23Left� TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionUF:  	TSZRLabel
SZRLabel22Left� TopWidthHeightAlignToBand	FontStyle WordWrap	Caption
SZRLabel22  	TSZRLabel
SZRLabel61Left)Top WidthHeightAlignToBand	FontStyle WordWrap	CaptionNota:  	TSZRLabel
SZRLabel62Left1Top WidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabel
SZRLabel58Left9Top	WidthHeightAlignToBand	FontStyle WordWrap	Caption
Referencia  	TSZRLabel
SZRLabel63LeftHTop	Width
HeightAlignToBand	FontStyle WordWrap	CaptionDetalhe  	TSZRLabel	SZRLabel2Left TopWidth	HeightAlignToBand	FontStyle WordWrap	Caption	Cliente :  	TSZRLabel	SZRLabel4Left Top Width	HeightAlignToBand	FontStyle WordWrap	Caption	Pedido  :  
TSZRDBText
SZRDBText3Left
Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Pedido_Venda1	DataField
PDV_CODIGO  	TSZRLabel
SZRLabel64Left}Top	WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionTotal  	TSZRLabel
SZRLabel89Left/Top WidthHeightAlignToBand	FontStyle WordWrap	  
TSZRDBText
SZRDBText2Left
TopWidth~HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetItem_Pedido_Venda1	DataFieldPDV_OBS  	TSZRLabel
SZRLabel56LeftkTop WidthHeightAlignToBandEnabled	FontStyle WordWrap	  	TSZRLabel
SZRLabel57LeftpTop WidthHeightAlignToBandEnabled	FontStyle WordWrap	  	TSZRLabelSZRLabel164LefttTop Width	Height	AlignmenttaRightJustifyAlignToBandEnabled	FontStyle WordWrap	  	TSZRLabelSZRLabel168Left~Top Width
Height	AlignmenttaRightJustifyAlignToBandEnabled	FontStyle WordWrap	  	TSZRLabel
SZRLabel44Left_Top	WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionDesconto   TSZRBandSZRBand1LeftTop$Width� HeightBeforePrintSZRBand1BeforePrintBandTyperbGroupFooterForceNewColumnForceNewPage 	TSZRLabelSZRLabel165Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionTotal p/ Vendedor:  	TSZRLabelSZRLabel166LeftTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelSZRLabel167Left Top Width� HeightAlignToBand	FontStyle WordWrap	Caption�----------------------------------------------------------------------------------------------------------------------------------------    TItem_Pedido_VendaItem_Pedido_Venda1OnCalcFieldsItem_Pedido_Venda1CalcFieldsDatabaseNameDBguerraFiltered	SQL.StringsSELECT T1.*,T2.*FROM"       Item_de_pedido_de_venda T1,       Pedido_de_Venda T2WHERE)        (T2.CNC_CODIGO=T1.CNC_CODIGO) AND+        (T1.PDV_CODIGO = T2.PDV_CODIGO) AND)        (T2.PDV_DATA_HORA>=:DATA_INI) AND(        (T2.PDV_DATA_HORA<:DATA_FIM) AND        (T2.PDV_SITUACAO=4) ORDER BY T1.PDV_CODIGO ASC  	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaAVista	CodigoFUN 	CodigoIEB 	CodigoIPV 	CodigoLOT 	CodigoPDV 	CodigoPRD 	CodigoSEC 	CodigoTBP DiasEntrega EntregaItemNota LocEst NotaSituacao 	Pendencia 	Sequencia ServicoSituacao Vinculo LeftUTop	ParamDataDataTypeftDateNameDATA_INI	ParamType	ptUnknown DataTypeftDateNameDATA_FIM	ParamType	ptUnknown   TStringFieldItem_Pedido_Venda1Produto	FieldKindfkCalculated	FieldNameProdutoSize2
Calculated	  TIntegerFieldItem_Pedido_Venda1CNC_CODIGO	FieldName
CNC_CODIGOOrigin"ITEM_DE_PEDIDO_DE_VENDA.CNC_CODIGO  TIntegerFieldItem_Pedido_Venda1IPV_CODIGO	FieldName
IPV_CODIGOOrigin"ITEM_DE_PEDIDO_DE_VENDA.IPV_CODIGO  TIntegerFieldItem_Pedido_Venda1FUN_CODIGO	FieldName
FUN_CODIGOOrigin"ITEM_DE_PEDIDO_DE_VENDA.FUN_CODIGO  TIntegerFieldItem_Pedido_Venda1IEB_CODIGO	FieldName
IEB_CODIGOOrigin"ITEM_DE_PEDIDO_DE_VENDA.IEB_CODIGO  TIntegerFieldItem_Pedido_Venda1PDV_CODIGO	FieldName
PDV_CODIGOOrigin"ITEM_DE_PEDIDO_DE_VENDA.PDV_CODIGO  TIntegerFieldItem_Pedido_Venda1SEC_CODIGO	FieldName
SEC_CODIGOOrigin"ITEM_DE_PEDIDO_DE_VENDA.SEC_CODIGO  TIntegerFieldItem_Pedido_Venda1PRD_CODIGO	FieldName
PRD_CODIGOOrigin"ITEM_DE_PEDIDO_DE_VENDA.PRD_CODIGO  TSmallintFieldItem_Pedido_Venda1IPV_ENTREGA	FieldNameIPV_ENTREGAOrigin#ITEM_DE_PEDIDO_DE_VENDA.IPV_ENTREGA  TIntegerFieldItem_Pedido_Venda1TBP_CODIGO	FieldName
TBP_CODIGOOrigin"ITEM_DE_PEDIDO_DE_VENDA.TBP_CODIGO  TSmallintFieldItem_Pedido_Venda1IPV_AVISTA	FieldName
IPV_AVISTAOrigin"ITEM_DE_PEDIDO_DE_VENDA.IPV_AVISTA  TFloatField Item_Pedido_Venda1IPV_QUANTIDADE	FieldNameIPV_QUANTIDADEOrigin&ITEM_DE_PEDIDO_DE_VENDA.IPV_QUANTIDADEDisplayFormat0.00  TFloatFieldItem_Pedido_Venda1IPV_DESCONTO	FieldNameIPV_DESCONTOOrigin$ITEM_DE_PEDIDO_DE_VENDA.IPV_DESCONTODisplayFormat0.0000  TFloatField!Item_Pedido_Venda1IPV_BONIFICACAO	FieldNameIPV_BONIFICACAOOrigin'ITEM_DE_PEDIDO_DE_VENDA.IPV_BONIFICACAO  TIntegerField#Item_Pedido_Venda1CNC_LOCAL_ESTOQUE	FieldNameCNC_LOCAL_ESTOQUEOrigin)ITEM_DE_PEDIDO_DE_VENDA.CNC_LOCAL_ESTOQUE  TFloatFieldItem_Pedido_Venda1IPV_PRECO	FieldName	IPV_PRECOOrigin!ITEM_DE_PEDIDO_DE_VENDA.IPV_PRECO  TIntegerFieldItem_Pedido_Venda1IPV_SITUACAO	FieldNameIPV_SITUACAOOrigin$ITEM_DE_PEDIDO_DE_VENDA.IPV_SITUACAO  TFloatField Item_Pedido_Venda1IPV_PRECO_DESC	FieldNameIPV_PRECO_DESCOrigin&ITEM_DE_PEDIDO_DE_VENDA.IPV_PRECO_DESC  TIntegerFieldItem_Pedido_Venda1IPV_NOTA	FieldNameIPV_NOTAOrigin ITEM_DE_PEDIDO_DE_VENDA.IPV_NOTA  TIntegerFieldItem_Pedido_Venda1IPV_ITEMNOTA	FieldNameIPV_ITEMNOTAOrigin$ITEM_DE_PEDIDO_DE_VENDA.IPV_ITEMNOTA  TIntegerFieldItem_Pedido_Venda1PDV_CODIGO_1	FieldNamePDV_CODIGO_1OriginPEDIDO_DE_VENDA.PDV_CODIGO  TIntegerFieldItem_Pedido_Venda1CNC_CODIGO_1	FieldNameCNC_CODIGO_1OriginPEDIDO_DE_VENDA.CNC_CODIGO  TIntegerFieldItem_Pedido_Venda1CLI_CODIGO	FieldName
CLI_CODIGOOriginPEDIDO_DE_VENDA.CLI_CODIGO  TIntegerFieldItem_Pedido_Venda1USU_CODIGO	FieldName
USU_CODIGOOriginPEDIDO_DE_VENDA.USU_CODIGO  TDateTimeFieldItem_Pedido_Venda1PDV_DATA_HORA	FieldNamePDV_DATA_HORAOriginPEDIDO_DE_VENDA.PDV_DATA_HORA  TFloatFieldItem_Pedido_Venda1PDV_TOTAL	FieldName	PDV_TOTALOriginPEDIDO_DE_VENDA.PDV_TOTAL  TIntegerFieldItem_Pedido_Venda1PDV_LISTADO	FieldNamePDV_LISTADOOriginPEDIDO_DE_VENDA.PDV_LISTADO  TIntegerFieldItem_Pedido_Venda1PDV_SITUACAO	FieldNamePDV_SITUACAOOriginPEDIDO_DE_VENDA.PDV_SITUACAO  TIntegerField!Item_Pedido_Venda1PDV_DIAS_RESERV	FieldNamePDV_DIAS_RESERVOriginPEDIDO_DE_VENDA.PDV_DIAS_RESERV  TSmallintField!Item_Pedido_Venda1PDV_NOTA_FISCAL	FieldNamePDV_NOTA_FISCALOriginPEDIDO_DE_VENDA.PDV_NOTA_FISCAL  TIntegerFieldItem_Pedido_Venda1AGF_CODIGO	FieldName
AGF_CODIGOOriginPEDIDO_DE_VENDA.AGF_CODIGO  TIntegerFieldItem_Pedido_Venda1FPG_CODIGO	FieldName
FPG_CODIGOOriginPEDIDO_DE_VENDA.FPG_CODIGO  TIntegerFieldItem_Pedido_Venda1PDV_TIPO_PAG	FieldNamePDV_TIPO_PAGOriginPEDIDO_DE_VENDA.PDV_TIPO_PAG  TFloatFieldItem_Pedido_Venda1PDV_ENTRADA	FieldNamePDV_ENTRADAOriginPEDIDO_DE_VENDA.PDV_ENTRADA  TIntegerFieldItem_Pedido_Venda1CNC_CLIENTE	FieldNameCNC_CLIENTEOriginPEDIDO_DE_VENDA.CNC_CLIENTE  TIntegerFieldItem_Pedido_Venda1PDV_EM_USO	FieldName
PDV_EM_USOOriginPEDIDO_DE_VENDA.PDV_EM_USO  TFloatField Item_Pedido_Venda1IPV_PRECO_NOTA	FieldNameIPV_PRECO_NOTAOrigin/DBGUERRA.ITEM_DE_PEDIDO_DE_VENDA.IPV_PRECO_NOTA  TFloatFieldItem_Pedido_Venda1PDV_ACRESCIMO	FieldNamePDV_ACRESCIMOOrigin&DBGUERRA.PEDIDO_DE_VENDA.PDV_ACRESCIMO  TDateTimeField!Item_Pedido_Venda1PDV_DT_ALTERADO	FieldNamePDV_DT_ALTERADOOrigin(DBGUERRA.PEDIDO_DE_VENDA.PDV_DT_ALTERADO  TIntegerFieldItem_Pedido_Venda1PDV_MAQUINA	FieldNamePDV_MAQUINAOrigin$DBGUERRA.PEDIDO_DE_VENDA.PDV_MAQUINA  TStringFieldItem_Pedido_Venda1Unidade	FieldKindfkCalculated	FieldNameUnidadeSize
Calculated	  TIntegerFieldItem_Pedido_Venda1IPV_PENDENCIA	FieldNameIPV_PENDENCIAOrigin.DBGUERRA.ITEM_DE_PEDIDO_DE_VENDA.IPV_PENDENCIA  TFloatField#Item_Pedido_Venda1IPV_ESTOQUE_LOCAL	FieldNameIPV_ESTOQUE_LOCALOrigin2DBGUERRA.ITEM_DE_PEDIDO_DE_VENDA.IPV_ESTOQUE_LOCAL  TFloatField%Item_Pedido_Venda1IPV_ESTOQUE_EXTERNO	FieldNameIPV_ESTOQUE_EXTERNOOrigin4DBGUERRA.ITEM_DE_PEDIDO_DE_VENDA.IPV_ESTOQUE_EXTERNO  TFloatField$Item_Pedido_Venda1IPV_PRECO_SUGERIDO	FieldNameIPV_PRECO_SUGERIDOOrigin3DBGUERRA.ITEM_DE_PEDIDO_DE_VENDA.IPV_PRECO_SUGERIDO  TDateTimeField!Item_Pedido_Venda1PDV_MELHOR_DATA	FieldNamePDV_MELHOR_DATAOrigin(DBGUERRA.PEDIDO_DE_VENDA.PDV_MELHOR_DATA  TStringField!Item_Pedido_Venda1PDV_VENCIMENTOS	FieldNamePDV_VENCIMENTOSOrigin(DBGUERRA.PEDIDO_DE_VENDA.PDV_VENCIMENTOSSized  TIntegerField%Item_Pedido_Venda1PDV_MEDIA_PAGAMENTO	FieldNamePDV_MEDIA_PAGAMENTOOrigin,DBGUERRA.PEDIDO_DE_VENDA.PDV_MEDIA_PAGAMENTO  TStringFieldItem_Pedido_Venda1Referencia	FieldKindfkCalculated	FieldName
Referencia
Calculated	  TStringFieldItem_Pedido_Venda1Detalhe	FieldKindfkCalculated	FieldNameDetalhe
Calculated	  TIntegerField Item_Pedido_Venda1PDV_NOTA_CUPOM	FieldNamePDV_NOTA_CUPOMOrigin'DBGUERRA.PEDIDO_DE_VENDA.PDV_NOTA_CUPOM  TIntegerField"Item_Pedido_Venda1IPV_DIAS_ENTREGA	FieldNameIPV_DIAS_ENTREGAOrigin1DBGUERRA.ITEM_DE_PEDIDO_DE_VENDA.IPV_DIAS_ENTREGA  TStringFieldItem_Pedido_Venda1PDV_OBS	FieldNamePDV_OBSOrigin DBGUERRA.PEDIDO_DE_VENDA.PDV_OBS	FixedChar	Size�   TIntegerFieldItem_Pedido_Venda1PDV_IMPRESSO	FieldNamePDV_IMPRESSOOrigin%DBGUERRA.PEDIDO_DE_VENDA.PDV_IMPRESSO  TDateTimeField&Item_Pedido_Venda1PDV_DT_EMISSAO_VENDA	FieldNamePDV_DT_EMISSAO_VENDAOrigin-DBGUERRA.PEDIDO_DE_VENDA.PDV_DT_EMISSAO_VENDA  TDateTimeField"Item_Pedido_Venda1PDV_DT_DEVOLUCAO	FieldNamePDV_DT_DEVOLUCAOOrigin)DBGUERRA.PEDIDO_DE_VENDA.PDV_DT_DEVOLUCAO  TStringFieldItem_Pedido_Venda1PDV_CONTATO	FieldNamePDV_CONTATOOrigin$DBGUERRA.PEDIDO_DE_VENDA.PDV_CONTATO	FixedChar	Sized  TDateTimeField Item_Pedido_Venda1IPV_DT_ENTRADA	FieldNameIPV_DT_ENTRADAOrigin/DBGUERRA.ITEM_DE_PEDIDO_DE_VENDA.IPV_DT_ENTRADA  TDateTimeFieldItem_Pedido_Venda1IPV_DT_SAIDA	FieldNameIPV_DT_SAIDAOrigin-DBGUERRA.ITEM_DE_PEDIDO_DE_VENDA.IPV_DT_SAIDA  TIntegerFieldItem_Pedido_Venda1IPV_SERVICO	FieldNameIPV_SERVICOOrigin,DBGUERRA.ITEM_DE_PEDIDO_DE_VENDA.IPV_SERVICO  TFloatFieldItem_Pedido_Venda1PDV_CREDITO	FieldNamePDV_CREDITOOrigin$DBGUERRA.PEDIDO_DE_VENDA.PDV_CREDITO  TIntegerFieldItem_Pedido_Venda1FUN_ARQUITETO	FieldNameFUN_ARQUITETOOrigin&DBGUERRA.PEDIDO_DE_VENDA.FUN_ARQUITETO  TIntegerField#Item_Pedido_Venda1PDV_TITULO_GERADO	FieldNamePDV_TITULO_GERADOOrigin*DBGUERRA.PEDIDO_DE_VENDA.PDV_TITULO_GERADO  TIntegerField Item_Pedido_Venda1PDV_TIPO_VENDA	FieldNamePDV_TIPO_VENDAOrigin'DBGUERRA.PEDIDO_DE_VENDA.PDV_TIPO_VENDA  TIntegerFieldItem_Pedido_Venda1PDV_PACOTE	FieldName
PDV_PACOTEOrigin#DBGUERRA.PEDIDO_DE_VENDA.PDV_PACOTE  TIntegerField$Item_Pedido_Venda1PDV_GRUPO_ESPECIAL	FieldNamePDV_GRUPO_ESPECIALOrigin+DBGUERRA.PEDIDO_DE_VENDA.PDV_GRUPO_ESPECIAL  TDateTimeField!Item_Pedido_Venda1PDV_DT_PREVISAO	FieldNamePDV_DT_PREVISAOOrigin(DBGUERRA.PEDIDO_DE_VENDA.PDV_DT_PREVISAO  TDateTimeField Item_Pedido_Venda1PDV_DT_ENTREGA	FieldNamePDV_DT_ENTREGAOrigin'DBGUERRA.PEDIDO_DE_VENDA.PDV_DT_ENTREGA  TStringFieldItem_Pedido_Venda1PDV_DOCUMENTO	FieldNamePDV_DOCUMENTOOrigin&DBGUERRA.PEDIDO_DE_VENDA.PDV_DOCUMENTO	FixedChar	  TStringFieldItem_Pedido_Venda1PDV_CAIXA	FieldName	PDV_CAIXAOrigin"DBGUERRA.PEDIDO_DE_VENDA.PDV_CAIXA	FixedChar	  TIntegerFieldItem_Pedido_Venda1PDV_SERVICO	FieldNamePDV_SERVICOOrigin$DBGUERRA.PEDIDO_DE_VENDA.PDV_SERVICO  TStringField"Item_Pedido_Venda1PDV_FONE_CONTATO	FieldNamePDV_FONE_CONTATOOrigin)DBGUERRA.PEDIDO_DE_VENDA.PDV_FONE_CONTATO	FixedChar	  TIntegerFieldItem_Pedido_Venda1FPE_CODIGO	FieldName
FPE_CODIGOOrigin#DBGUERRA.PEDIDO_DE_VENDA.FPE_CODIGO  TIntegerField*Item_Pedido_Venda1CNC_FATURAMENTO_PENDENTE	FieldNameCNC_FATURAMENTO_PENDENTEOrigin1DBGUERRA.PEDIDO_DE_VENDA.CNC_FATURAMENTO_PENDENTE  TStringField Item_Pedido_Venda1IPV_OBSERVACAO	FieldNameIPV_OBSERVACAOOrigin/DBGUERRA.Item_de_pedido_de_venda.IPV_OBSERVACAO	FixedChar	Size�   TDateTimeField!Item_Pedido_Venda1IPV_DT_ALTERADO	FieldNameIPV_DT_ALTERADOOrigin0DBGUERRA.ITEM_DE_PEDIDO_DE_VENDA.IPV_DT_ALTERADO  TDateTimeField!Item_Pedido_Venda1IPV_DT_CADASTRO	FieldNameIPV_DT_CADASTROOrigin0DBGUERRA.ITEM_DE_PEDIDO_DE_VENDA.IPV_DT_CADASTRO  TIntegerFieldItem_Pedido_Venda1IPV_VINCULO	FieldNameIPV_VINCULOOrigin,DBGUERRA.ITEM_DE_PEDIDO_DE_VENDA.IPV_VINCULO  TIntegerFieldItem_Pedido_Venda1IPV_SEQUENCIA	FieldNameIPV_SEQUENCIAOrigin.DBGUERRA.ITEM_DE_PEDIDO_DE_VENDA.IPV_SEQUENCIA  TIntegerFieldItem_Pedido_Venda1USU_CODIGO_1	FieldNameUSU_CODIGO_1Origin#DBGUERRA.PEDIDO_DE_VENDA.USU_CODIGO  TDateTimeFieldItem_Pedido_Venda1PDV_DT_FPE	FieldName
PDV_DT_FPEOrigin#DBGUERRA.PEDIDO_DE_VENDA.PDV_DT_FPE  TIntegerFieldItem_Pedido_Venda1CNT_CODIGO	FieldName
CNT_CODIGOOrigin#DBGUERRA.PEDIDO_DE_VENDA.CNT_CODIGO  TIntegerFieldItem_Pedido_Venda1PDV_GARANTIA	FieldNamePDV_GARANTIAOrigin%DBGUERRA.PEDIDO_DE_VENDA.PDV_GARANTIA  TIntegerField#Item_Pedido_Venda1PDV_CODIGO_ORIGEM	FieldNamePDV_CODIGO_ORIGEMOrigin*DBGUERRA.PEDIDO_DE_VENDA.PDV_CODIGO_ORIGEM  TFloatFieldItem_Pedido_Venda1PDV_FRETE	FieldName	PDV_FRETEOrigin"DBGUERRA.PEDIDO_DE_VENDA.PDV_FRETE   TProdutoProduto1DatabaseNameDBguerraSQL.StringsFSELECT PRD_CODIGO,PRD_DESCRICAO,PRD_UNIDADE,PRD_REFERENCIA,PRD_DETALHEFROM PRODUTOWHERE PRD_CODIGO=:PRD_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaPRODUTOCatalogoClassificacao 	CodigoCLF 	CodigoCTP 	CodigoFOR 	CodigoGRP 	CodigoORF 	CodigoPRD 	CodigoSGP EstoqueDetalhadoForaDeLinhaForaPrevisao
ForaTabelaInsumoNivel Previsao ServicoSituacao 
TempoMedio Left Top	ParamDataDataType	ftIntegerName
PRD_CODIGO	ParamType	ptUnknown    TClienteCliente1DatabaseNameDBguerraSQL.StringsSELECT *FROM CLIENTE7WHERE CNC_CODIGO=:CNC_CODIGO AND CLI_CODIGO=:CLI_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaCLIENTECLogradouro CRota Classificacao 	CodigoCLI Convenio ConvenioCNC 
Logradouro MensalNotaOrgao PessoaFisica	QuinzenalSPC Situacao Tipo LeftqTop	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
CLI_CODIGO	ParamType	ptUnknown    TForma_de_PagamentoForma_de_Pagamento1DatabaseNameDBguerraSQL.Strings SELECT * FROM FORMA_DE_PAGAMENTOWHERE FPG_CODIGO=:FPG_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaFORMA_DE_PAGAMENTOCentavosEntrada	CodigoFPG 	CodigoTBP Compra
PrazoMedio Situacao TipoPagExclusivo Left� Top	ParamDataDataType	ftIntegerName
FPG_CODIGO	ParamType	ptUnknown    
TAgenteFin
AgenteFin1DatabaseNameDBguerraSQL.Strings*SELECT CNC_CODIGO,AGF_CODIGO,AGF_DESCRICAOFROM AGENTE_FINANCEIROWHERE AGF_CODIGO=:AGF_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaAGENTE_FINANCEIROCentavosEntrada	CodigoAGF DiaPagamento EspecialJurosEntradaLiberarDescontoFPGRecebimentoAVistaSituacao TipoPagExclusivo Left� Top	ParamDataDataType	ftIntegerName
AGF_CODIGO	ParamType	ptUnknown    TTitulo_receberTitulo_receber1DatabaseNameDBguerraSQL.StringsSELECT * FROM TITULO_A_RECEBER7WHERE CNC_CODIGO=:CNC_CODIGO AND PDV_CODIGO=:PDV_CODIGOORDER BY TRC_VENCIMENTO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina	ChequeCNC ChequeDevolvido
ClienteCNC 	CodigoAGF 	CodigoBOL 	CodigoCCX CodigoCCXRecebimento 	CodigoCHQ 	CodigoCLI 	CodigoCPC 	CodigoFPE 	CodigoFUN 	CodigoMCC 	CodigoPDV 	CodigoTRC 	CodigoTRF FaturamentoCNC GerouMovimentoMovimentoContaCorrenteCNC PagamentoParcialProcesso 
Reabertura Situacao Tipo TipoPag 
TipoPedido 	TituloANT 	TituloORI 
Verificado VisitadoLeft� Top	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
PDV_CODIGO	ParamType	ptUnknown    TFuncionarioFuncionario1DatabaseNameDBguerraFiltered	SQL.Strings1SELECT FUN_CODIGO,FUN_NOME,CNC_CODIGO,FUN_APELIDOFROM FUNCIONARIO7WHERE FUN_CODIGO=:FUN_CODIGO AND CNC_CODIGO=:CNC_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaFUNCIONARIOApareceServicosApareceVendasCFuncao CLogradouro 	CodigoFUN Funcao 
Logradouro Parceiro Secao Situacao Superior TodosCentrosUsuarioVinculado Left� Top	ParamDataDataType	ftIntegerName
FUN_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown     