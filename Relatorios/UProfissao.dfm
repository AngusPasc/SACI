�
 TRPT_PROFISSAO 0�  TPF0Trpt_Profissaorpt_ProfissaoLeft� Top� Width�Height<Captionrpt_ProfissaoColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeft Top�Width� HeightAColumnsColumnSpace DataSet
Profissao1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthAOptions.PageWidth� Options.PaperTypezptSheet TSZRBandzrbCabecalhoPaginaLeftTopWidth� HeightBeforePrintzrbCabecalhoPaginaBeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth/HeightAlignToBand	FontStyle WordWrap	Caption   SIAC - Relatorio de Profissões  TSZRSysData
ZRSysData2Left_TopWidth)Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelzrlNomeEmpresaLeft Top Width/HeightAlignToBand	FontStyle WordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel5Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================  	TSZRLabelZRLabel1Left_Top Width)Height	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabelZRLabel6Left TopWidth� HeightAlignToBand	FontStyle WordWrap	Caption�========================================================================================================================================  	TSZRLabelZRLabel7LeftTopWidth2HeightAlignToBand	FontStyle WordWrap	Caption	Descricao  	TSZRLabelZRLabel9LeftWTopWidth1HeightAlignToBand	FontStyle WordWrap	Caption
Observacao  	TSZRLabel	ZRLabel10Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCodigo  	TSZRLabel	SZRLabel1LeftQTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionSit  	TSZRLabel	SZRLabel2Left:TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionSal.INI  	TSZRLabel	SZRLabel3LeftDTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionSal.FIM   TSZRBand
zrbDetalheLeftTopWidth� HeightBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText	ZRDBText1LeftTop Width2HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet
Profissao1	DataFieldPRF_DESCRICAO  
TSZRDBText	ZRDBText2LeftWTop Width1HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet
Profissao1	DataFieldPRF_OBSERVACAO  
TSZRDBText	ZRDBText3Left Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet
Profissao1	DataField
PRF_CODIGO  
TSZRDBText
SZRDBText1LeftQTop WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet
Profissao1	DataFieldPRF_SITUACAO  
TSZRDBText
SZRDBText2Left:Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet
Profissao1	DataFieldPRF_SALARIO_INI  
TSZRDBText
SZRDBText3LeftDTop WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet
Profissao1	DataFieldPRF_SALARIO_FIM   TSZRBandzrbRodapePaginaLeftTopWidth� HeightBeforePrintzrbRodapePaginaBeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData1Left}TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberText   Pág.:  	TSZRLabelZRLabel8Left Top Width� HeightAlignToBand	FontStyle WordWrap	Caption�----------------------------------------------------------------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left TopWidthHeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora  	TSZRLabel
zrlUsuarioLeftTopWidth*HeightAlignToBand	FontStyleesItalic WordWrap	    
TProfissao
Profissao1DatabaseNameDBguerraSQL.StringsSELECT * FROM PROFISSAOORDER BY PRF_DESCRICAO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabela	PROFISSAO	CodigoPRF Situacao LeftTop�  TIntegerFieldProfissao1CNC_ORIGEM	FieldName
CNC_ORIGEMOriginDBGUERRA.PROFISSAO.CNC_ORIGEM  TIntegerFieldProfissao1CNC_CODIGO	FieldName
CNC_CODIGOOriginDBGUERRA.PROFISSAO.CNC_CODIGO  TIntegerFieldProfissao1PRF_CODIGO	FieldName
PRF_CODIGOOriginDBGUERRA.PROFISSAO.PRF_CODIGO  TIntegerFieldProfissao1USU_CODIGO	FieldName
USU_CODIGOOriginDBGUERRA.PROFISSAO.USU_CODIGO  TStringFieldProfissao1PRF_DESCRICAO	FieldNamePRF_DESCRICAOOrigin DBGUERRA.PROFISSAO.PRF_DESCRICAO	FixedChar	Size2  TDateTimeFieldProfissao1PRF_DT_CADASTRO	FieldNamePRF_DT_CADASTROOrigin"DBGUERRA.PROFISSAO.PRF_DT_CADASTRO  TDateTimeFieldProfissao1PRF_DT_ALTERADO	FieldNamePRF_DT_ALTERADOOrigin"DBGUERRA.PROFISSAO.PRF_DT_ALTERADO  TFloatFieldProfissao1PRF_SALARIO_INI	FieldNamePRF_SALARIO_INIOrigin"DBGUERRA.PROFISSAO.PRF_SALARIO_INIDisplayFormat0.00  TFloatFieldProfissao1PRF_SALARIO_FIM	FieldNamePRF_SALARIO_FIMOrigin"DBGUERRA.PROFISSAO.PRF_SALARIO_FIMDisplayFormat0.00  TIntegerFieldProfissao1PRF_SITUACAO	FieldNamePRF_SITUACAOOriginDBGUERRA.PROFISSAO.PRF_SITUACAO  TStringFieldProfissao1PRF_OBSERVACAO	FieldNamePRF_OBSERVACAOOrigin!DBGUERRA.PROFISSAO.PRF_OBSERVACAO	FixedChar	Size�     