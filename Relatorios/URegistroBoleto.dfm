˙
 TRPT_REGISTROBOLETO 0ˇ7  TPF0Trpt_RegistroBoletorpt_RegistroBoletoLeftÓ TopfWidth×HeightCaptionrpt_RegistroBoletoColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightő	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeft Top˙Width HeightAColumnsColumnSpace DataSetRegistro_Boleto1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Heightő	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthAOptions.PageWidth Options.PaperTypezptSheet TSZRBandzrbCabecalhoPaginaLeftTopWidth HeightBeforePrintzrbCabecalhoPaginaBeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth/HeightAlignToBand	FontStyle WordWrap	Caption#SIAC - Relatorio Registro de Boleto  TSZRSysData
ZRSysData2LeftZTopWidth-Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width/HeightAlignToBand	FontStyle WordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel5Left TopWidth HeightAlignToBand	FontStyle WordWrap	Caption=======================================================================================================================================  	TSZRLabelZRLabel1LeftZTop Width-Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabel
zrlFiltrosLeft TopWidth HeightAlignToBand	FontStyle WordWrap	   TSZRBand
zrbDetalheLeftTop	Width HeightBeforePrintzrbDetalheBeforePrintBandTyperbDetailForceNewColumnForceNewPage 	TSZRLabel	zrlMotivoLeftTopWidthnHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlNumeroEmpresaLeftTop Width
HeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlCodigoOperacaoLeftsTop WidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlNomeSacadoLeftTop Width HeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlDataVencimentoLeft:Top Width
HeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlDataOperacaoLeftETop Width
HeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlValorTituloLeftPTop Width
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabel	zrlTarifaLeft[Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlAcrescimoLeftbTop WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlAbatimentoDescontoLeftiTop Width	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlValorLiquidoLeftwTop Width	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlDCLeft Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlNossoNumeroLeft Top WidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlBancoRecLeft Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	   TSZRBandzrbRodapePaginaLeftTopWidth HeightBeforePrintzrbRodapePaginaBeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData1Left|TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberText   PĂĄg.:  	TSZRLabelZRLabel8Left Top Width HeightAlignToBand	FontStyle WordWrap	Caption---------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left TopWidthHeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora  	TSZRLabel
zrlUsuarioLeftTopWidth*HeightAlignToBand	FontStyleesItalic WordWrap	   	TSZRGroup	SZRGroup1LeftTopWidth HeightBeforePrintSZRGroup1BeforePrint
ExpressionRBO_DT_GERACAO_ARQUIVO
FooterBandzrbRodapeGrupoMasterreportForceNewColumnForceNewPage 
TSZRDBText
SZRDBText3Left'Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetRegistro_Boleto1	DataFieldRBO_SEQUENCIA_ARQUIVO  
TSZRDBText
SZRDBText4Left
Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetRegistro_Boleto1	DataFieldRBO_DT_GERACAO_ARQUIVO  	TSZRLabel	SZRLabel6Left Top Width	HeightAlignToBand	FontStyle WordWrap	Caption	DtGerado:  	TSZRLabel	SZRLabel3LeftTop Width
HeightAlignToBand	FontStyle WordWrap	Caption
Sequencia:  	TSZRLabel
SZRLabel29Left6Top WidthHeightAlignToBand	FontStyle WordWrap	CaptionAgencia:  	TSZRLabelzrlDescContaLeftHTop WidthHeightAlignToBand	FontStyle WordWrap	CaptionConta:  	TSZRLabelZRLabel6Left TopWidth HeightAlignToBand	FontStyle WordWrap	Caption=======================================================================================================================================  	TSZRLabel	SZRLabel2LeftsTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionOp.  	TSZRLabel	SZRLabel4Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionNosso Numero  	TSZRLabel	SZRLabel1LeftTopWidth HeightAlignToBand	FontStyle WordWrap	CaptionNome Sacado  	TSZRLabel	SZRLabel5Left:TopWidth
HeightAlignToBand	FontStyle WordWrap	Caption
Vencimento  	TSZRLabelzrlDescDataOperacaoLeftETopWidth
HeightAlignToBand	FontStyle WordWrap	CaptionDt.Oper.  	TSZRLabel	SZRLabel7LeftPTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption	Vl.Titulo  	TSZRLabel	SZRLabel8Left[TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionTarifa  	TSZRLabel	SZRLabel9LeftbTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionAcresc  	TSZRLabel
SZRLabel10LeftiTopWidth	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption	Abat/Desc  	TSZRLabel
SZRLabel11LeftwTopWidth	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionLiquido  	TSZRLabel
SZRLabel13LeftTopWidth
HeightAlignToBand	FontStyle WordWrap	Caption	N.Empresa  	TSZRLabel
SZRLabel14Left TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionBnc  
TSZRDBText
SZRDBText1Left?Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetRegistro_Boleto1	DataFieldRBO_AGENCIA  
TSZRDBText
SZRDBText2LeftOTop WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetRegistro_Boleto1	DataField	RBO_CONTA   TSZRBandzrbRodapeGrupoLeftTopWidth HeightBeforePrintzrbRodapeGrupoBeforePrintBandTyperbGroupFooterForceNewColumnForceNewPage 	TSZRLabel
SZRLabel12Left TopWidth6HeightAlignToBand	FontStyle WordWrap	Caption---------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabel
SZRLabel15Left TopWidth6Height	AlignmenttaCenterAlignToBand	FontStyle WordWrap	CaptionTOTAIS  	TSZRLabel
SZRLabel16Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionOperacao  	TSZRLabel
SZRLabel17LeftTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption
Quantidade  	TSZRLabel
SZRLabel18Left*TopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionValor  	TSZRLabel
SZRLabel19Left TopWidth6HeightAlignToBand	FontStyle WordWrap	Caption---------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabel
SZRLabel20Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionREGISTRADO         :  	TSZRLabel
SZRLabel21Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionLIQUIDADO          :  	TSZRLabel
SZRLabel22Left Top	WidthHeightAlignToBand	FontStyle WordWrap	CaptionDEBITO     COBRANCA:  	TSZRLabel
SZRLabel23Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionLIQUIDADO COM FLOAT:  	TSZRLabel
SZRLabel24Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionVALOR RECEBIDO     :  	TSZRLabel
SZRLabel25Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionDEBITO     DESCONTO:  	TSZRLabel
SZRLabel26Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionLANCAMENTO COBRANCA:  	TSZRLabel
SZRLabel27Left Top
WidthHeightAlignToBand	FontStyle WordWrap	CaptionCREDITO    COBRANCA:  	TSZRLabel
SZRLabel28Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCREDITO    DESCONTO:  	TSZRLabel
SZRLabel30Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionTARIFAS            :  	TSZRLabel
SZRLabel31Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionLANCAMENTO DESCONTO:  	TSZRLabel
SZRLabel32Left TopWidth HeightAlignToBand	FontStyle WordWrap	Caption=======================================================================================================================================  	TSZRLabelzrlQtdRegistradoLeftTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlTotalRegistradoLeft*TopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlQtdLiquidadoLeftTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlTotalLiquidadoLeft*TopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlQtdLiquidadeFloatLeftTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlTotalLiquidadeFloatLeft*TopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlQtdValorRecebidoLeftTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlTotalValorRecebidoLeft*TopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlQtdDebitadoDescontoLeftTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlTotalDebitadoDescontoLeft*TopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlQtdLancamentoCobrancaLeftTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlTotalLancamentoCobrancaLeft*TopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlQtdDebitadoCobrancaLeftTop	Width
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlQtdCreditadoCobrancaLeftTop
Width
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlTotalDebitadoCobrancaLeft*Top	Width
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlTotalCreditadoCobrancaLeft*Top
Width
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlQtdTarifasLeftTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlTotalTarifasLeft*TopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlQtdCreditadoDescontoLeftTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlQtdLancamentoDescontoLeftTopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlTotalCreditadoDescontoLeft*TopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlTotalLancamentoDescontoLeft*TopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlRegistradoCDLeft5TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionC  	TSZRLabelzrlLiquidadeFloatCDLeft5TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionC  	TSZRLabelzrlValorRecebidoCDLeft5TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionC  	TSZRLabelzrlDebitadoDescontoCDLeft5TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionD  	TSZRLabelzrlLancamentoCobrancaCDLeft5TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionD  	TSZRLabelzrlCreditadoCobrancaCDLeft5Top
WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionC  	TSZRLabelzrlDebitadoCobrancaCDLeft5Top	WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionD  	TSZRLabelzrlTarifasCDLeft5TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionC  	TSZRLabelzrlLancamentoDescontoCDLeft5TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionC  	TSZRLabelzrlCreditadoDescontoCDLeft5TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionC    TRegistro_BoletoRegistro_Boleto1DatabaseNameDBguerra	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaREGISTRO_BOLETO	CodigoRBO SequencialArquivo Situacao Tipo VersaoLayout Left8Top¸    