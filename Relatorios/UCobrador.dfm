�
 TRPT_COBRADOR 0   TPF0Trpt_cobradorrpt_cobradorLeft� Top� WidthOHeightaCaptionrpt_cobradorColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeft Top�WidthPHeightAColumnsColumnSpace DataSet	Cobrador1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthAOptions.PageWidthPOptions.PaperTypezptSheet TSZRBandZRBand1LeftTopWidthNHeightBeforePrintZRBand1BeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth/HeightAlignToBand	FontStyle WordWrap	CaptionSIAC - Relatorio de Cobradores  TSZRSysData
ZRSysData2Left0TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width/HeightAlignToBand	FontStyle BeforePrintZRLabel3BeforePrintWordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel5Left TopWidthNHeightAlignToBand	FontStyle WordWrap	CaptionN==============================================================================  	TSZRLabelZRLabel1Left0Top WidthHeightAlignToBand	FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabelZRLabel6Left TopWidthNHeightAlignToBand	FontStyle WordWrap	CaptionN==============================================================================  	TSZRLabelZRLabel7LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionNome  	TSZRLabelZRLabel9Left%TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionLogr.  	TSZRLabel	ZRLabel10Left+TopWidth	HeightAlignToBand	FontStyle WordWrap	CaptionEndereco  	TSZRLabel	ZRLabel11Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionBairro  	TSZRLabel	ZRLabel12LeftTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCidade  	TSZRLabel	ZRLabel15LeftCTopWidth	HeightAlignToBand	FontStyle WordWrap	CaptionTelefone  	TSZRLabel	ZRLabel16Left0TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionFuncao  	TSZRLabel	ZRLabel17Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCod.   TSZRBandZRBand2LeftTopWidthNHeightBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText	ZRDBText1LeftTop Width(HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet	Cobrador1	DataFieldFUN_NOME  
TSZRDBText	ZRDBText2LeftCTopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet	Cobrador1	DataFieldFUN_FONE  
TSZRDBText	ZRDBText6LeftTopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet	Cobrador1	DataField
FUN_CIDADE  
TSZRDBText	ZRDBText7Left5Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet	Cobrador1	DataFieldFUN_ENDERECO  
TSZRDBText	ZRDBText8Left TopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet	Cobrador1	DataField
FUN_BAIRRO  
TSZRDBText	ZRDBText5Left.Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet	Cobrador1	DataField
Logradouro  	TSZRLabel	ZRLabel13Left TopWidthNHeightAlignToBand	FontStyle WordWrap	CaptionN------------------------------------------------------------------------------  
TSZRDBText	ZRDBText4Left0TopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet	Cobrador1	DataFieldFuncao  
TSZRDBText	ZRDBText9Left Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSet	Cobrador1	DataField
FUN_CODIGO   TSZRBandZRBand3LeftTopWidthNHeightBeforePrintZRBand3BeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData1LeftCTopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberTextPag.:  	TSZRLabelZRLabel8Left Top WidthNHeightAlignToBand	FontStyle WordWrap	CaptionN------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left TopWidth#HeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora    
TParametro
Parametro1DatabaseNameDBguerraSQL.Strings*SELECT * FROM PARAMETRO WHERE TPR_CODIGO=3 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina	CodigoPAR 	CodigoTPR 
Informacao Situacao LeftATop�   
TParametro
Parametro2DatabaseNameDBguerraSQL.Strings*SELECT * FROM PARAMETRO WHERE TPR_CODIGO=6 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina	CodigoPAR 	CodigoTPR 
Informacao Situacao Left`Top�   	TCobrador	Cobrador1
BeforeOpenCobrador1BeforeOpenDatabaseNameDBguerraFiltered	SQL.StringsSELECT * FROM FUNCIONARIO *WHERE (FUN_FUNCAO=46 OR FUN_FUNCAO=10) ANDCNC_CODIGO=:CNC_CODIGOORDER BY FUNCIONARIO.FUN_NOME 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaCFuncao CLogradouro 	CodigoFUN Funcao 
Logradouro 	PerAbaixo PerAcima Rota Secao Left#Top� 	ParamDataDataType	ftUnknownName
CNC_CODIGO	ParamType	ptUnknown   TIntegerFieldCobrador1FUN_CODIGO	FieldName
FUN_CODIGOOriginFuncionario.FUN_CODIGO  TIntegerFieldCobrador1CNC_CODIGO	FieldName
CNC_CODIGOOriginFuncionario.CNC_CODIGO  TStringFieldCobrador1FUN_NOME	FieldNameFUN_NOMEOriginFuncionario.FUN_NOMESize(  TIntegerFieldCobrador1SEC_CODIGO	FieldName
SEC_CODIGOOriginFuncionario.SEC_CODIGO  TIntegerFieldCobrador1FUN_FUNCAO	FieldName
FUN_FUNCAOOriginFuncionario.FUN_FUNCAO  TDateTimeFieldCobrador1FUN_DT_NASC	FieldNameFUN_DT_NASCOriginFuncionario.FUN_DT_NASC  TIntegerFieldCobrador1FUN_LOGRADOURO	FieldNameFUN_LOGRADOUROOriginFuncionario.FUN_LOGRADOURO  TStringFieldCobrador1FUN_ENDERECO	FieldNameFUN_ENDERECOOriginFuncionario.FUN_ENDERECO  TStringFieldCobrador1FUN_BAIRRO	FieldName
FUN_BAIRROOriginFuncionario.FUN_BAIRROSize  TStringFieldCobrador1FUN_CIDADE	FieldName
FUN_CIDADEOriginFuncionario.FUN_CIDADESize  TStringFieldCobrador1FUN_UF	FieldNameFUN_UFOriginFuncionario.FUN_UFSize  TStringFieldCobrador1FUN_CEP	FieldNameFUN_CEPOriginFuncionario.FUN_CEPSize  TStringFieldCobrador1FUN_FONE	FieldNameFUN_FONEOriginFuncionario.FUN_FONESize  TIntegerFieldCobrador1FUN_SITUACAO	FieldNameFUN_SITUACAOOriginFuncionario.FUN_SITUACAO  TStringFieldCobrador1FUN_CPF	FieldNameFUN_CPFOriginFuncionario.FUN_CPF  TStringFieldCobrador1FUN_RG	FieldNameFUN_RGOriginFuncionario.FUN_RG  TFloatFieldCobrador1FUN_COTA	FieldNameFUN_COTAOriginFuncionario.FUN_COTA  TFloatFieldCobrador1FUN_PERC_ABAIXO	FieldNameFUN_PERC_ABAIXOOriginFuncionario.FUN_PERC_ABAIXO  TFloatFieldCobrador1FUN_PERC_ACIMA	FieldNameFUN_PERC_ACIMAOriginFuncionario.FUN_PERC_ACIMA  TStringFieldCobrador1FUN_ULT_EMPR	FieldNameFUN_ULT_EMPROriginFuncionario.FUN_ULT_EMPR  TStringFieldCobrador1FUN_REFERENCIA	FieldNameFUN_REFERENCIAOriginFuncionario.FUN_REFERENCIA  TIntegerFieldCobrador1FUN_ROTA	FieldNameFUN_ROTAOriginFuncionario.FUN_ROTA  TStringFieldCobrador1Funcao	FieldKindfkLookup	FieldNameFuncaoLookupDataSet
Parametro2LookupKeyFields
PAR_CODIGOLookupResultFieldPAR_DESCRICAO	KeyFields
FUN_FUNCAOLookup	  TStringFieldCobrador1Logradouro	FieldKindfkLookup	FieldName
LogradouroLookupDataSet
Parametro1LookupKeyFields
PAR_CODIGOLookupResultFieldPAR_DESCRICAO	KeyFieldsFUN_LOGRADOUROLookup	    