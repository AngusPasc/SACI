�
 TRPT_AGEN_FINANCEIRO 0�  TPF0Trpt_agen_financeirorpt_agen_financeiroLeftXTopWidth�HeightZCaption!   Relatório de Agentes FinanceirosColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeft Top Width� HeightAColumnsColumnSpace DataSet
AgenteFin1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthAOptions.PageWidth� Options.PaperTypezptSheet TSZRBandZRBand1LeftTopWidth� HeightBeforePrintZRBand1BeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth/HeightAlignToBand	FontStyle WordWrap	Caption'SIAC - Relatorio de Agentes Financeiros  TSZRSysData
ZRSysData2LeftXTopWidth0Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width/HeightAlignToBand	FontStyle WordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel5Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================  	TSZRLabelZRLabel1LeftXTop Width0Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabelZRLabel6Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================  	TSZRLabelZRLabel7LeftTopWidth<HeightAlignToBand	FontStyle WordWrap	Caption   Descrição  	TSZRLabel	ZRLabel10Left^TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionDesc.  	TSZRLabel	ZRLabel11LeftVTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionPrazo  	TSZRLabel	ZRLabel12LeftfTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionTAC  	TSZRLabel	ZRLabel13Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCodigo  	TSZRLabel	SZRLabel1Left� TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionEspecial  	TSZRLabel	SZRLabel2LeftETopWidthHeightAlignToBand	FontStyle WordWrap	CaptionTipoPagExclusivo  	TSZRLabel	SZRLabel3LeftmTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionTxMensal  	TSZRLabel	SZRLabel4LeftvTopWidth	HeightAlignToBand	FontStyle WordWrap	Caption	RecAVista  	TSZRLabel
zrlFiltrosLeft TopWidth� HeightAlignToBand	FontStyle WordWrap	   TSZRBand
zrlDetalheLeftTop	Width� HeightBeforePrintzrlDetalheBeforePrintBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText
SZRDBText5LeftTop WidthHeight	AlignmenttaCenterAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet
AgenteFin1	DataField	FAF_NPARC  	TSZRLabelzrlFatorLeftTop Width	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	   TSZRBandZRBand3LeftTop
Width� HeightBeforePrintZRBand3BeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData1Left}TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberTextPag.:  	TSZRLabelZRLabel8Left Top Width� HeightAlignToBand	FontStyle WordWrap	Caption�----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left TopWidth"HeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora   	TSZRGroup	SZRGroup1LeftTopWidth� HeightBeforePrintSZRGroup1BeforePrint
ExpressionAGF_DESCRICAOMasterreportForceNewColumnForceNewPage 
TSZRDBText	ZRDBText1LeftTop Width<HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet
AgenteFin1	DataFieldAGF_DESCRICAO  
TSZRDBText	ZRDBText2LeftVTop WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet
AgenteFin1	DataField	AGF_PRAZO  
TSZRDBText	ZRDBText3Left^Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet
AgenteFin1	DataFieldAGF_DESCONTO  
TSZRDBText	ZRDBText6Left Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet
AgenteFin1	DataField
AGF_CODIGO  
TSZRDBText
SZRDBText1Left� Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet
AgenteFin1	DataFieldAGF_ANTECIPACAO  
TSZRDBText
SZRDBText3LeftETop WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet
AgenteFin1	DataFieldAGF_TIPOPAG_EXCLUSIVO  
TSZRDBText
SZRDBText4LeftvTop Width	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet
AgenteFin1	DataFieldAGF_REC_AVISTA  	TSZRLabelzrlTACLeftfTop WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionTAC  	TSZRLabelzrlTaxaMensalLeftmTop WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionTxMensal    
TAgenteFin
AgenteFin1DatabaseNameDBguerraSQL.Strings	SELECT * 3FROM AGENTE_FINANCEIRO AGF, FATOR_DE_FINANCEIRA FAF#WHERE AGF.AGF_CODIGO=FAF.AGF_CODIGOORDER BY AGF_DESCRICAO CConfiguracaoDM.Configuracao1	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaAGENTE_FINANCEIROCentavosEntrada	CodigoAGF DiaPagamento EspecialJurosEntradaLiberarDescontoFPGRecebimentoAVistaSituacao TipoPagExclusivo LeftTop�    