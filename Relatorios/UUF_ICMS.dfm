�
 TRPT_UF_ICMS 03  TPF0Trpt_UF_ICMSrpt_UF_ICMSLeft� Top� WidthCHeight�HorzScrollBar.Position	Captionrpt_UF_ICMSColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeft�TopWidthPHeightAColumnsColumnSpace DataSetUF_ICMS1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.RightMargins.BottomOptions.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthAOptions.PageWidthPOptions.PaperTypezptSheet TSZRBandZRBand1LeftTopWidthNHeightBeforePrintZRBand1BeforePrintBandTyperbPageHeaderForceNewColumnForceNewPage 	TSZRLabelZRLabel2Left TopWidth/HeightAlignToBand	FontStyle WordWrap	CaptionSIAC - ICMS de Compra e Venda  TSZRSysData
ZRSysData2Left0TopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsDateTimeTextData/Hora.:  	TSZRLabelZRLabel3Left Top Width/HeightAlignToBand	FontStyle BeforePrintZRLabel3BeforePrintWordWrap	CaptionEletroGuerra   	TSZRLabelZRLabel5Left TopWidthNHeightAlignToBand	FontStyle WordWrap	CaptionN==============================================================================  	TSZRLabelZRLabel1Left0Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionCentro de Custo  	TSZRLabelZRLabel6Left TopWidthNHeightAlignToBand	FontStyle WordWrap	CaptionN==============================================================================  	TSZRLabelZRLabel7LeftTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionICMS Compra(%)  	TSZRLabel	ZRLabel11Left TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionUF  	TSZRLabel	SZRLabel1LeftTopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionICMS Venda(%)  	TSZRLabel	SZRLabel2Left"TopWidth
HeightAlignToBand	FontStyle WordWrap	CaptionCadastro  	TSZRLabel	SZRLabel3Left.TopWidth
HeightAlignToBand	FontStyle WordWrap	CaptionAlterado  	TSZRLabel	SZRLabel4Left:TopWidthHeightAlignToBand	FontStyle WordWrap	Caption   Usuário   TSZRBandZRBand2LeftTopWidthNHeightBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText	ZRDBText1LeftTop WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetUF_ICMS1	DataFieldUFI_ICMS_COMPRA  
TSZRDBText	ZRDBText4Left Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetUF_ICMS1	DataFieldUFI_UF  
TSZRDBText
SZRDBText1LeftTop WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetUF_ICMS1	DataFieldUFI_ICMS_VENDA  
TSZRDBText
SZRDBText2Left"Top Width
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetUF_ICMS1	DataFieldUFI_DT_CADASTRO  
TSZRDBText
SZRDBText3Left.Top Width
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetUF_ICMS1	DataFieldUFI_DT_ALTERADO  
TSZRDBText
SZRDBText4Left:Top WidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetUF_ICMS1	DataFieldUsuario   TSZRBandZRBand3LeftTopWidthNHeightBeforePrintZRBand3BeforePrintBandTyperbPageFooterForceNewColumnForceNewPage TSZRSysData
ZRSysData1LeftCTopWidthHeight	AlignmenttaRightJustifyAlignToBand		FontStyle WordWrap	DatazrsPageNumberText   Pág.:  	TSZRLabelZRLabel8Left Top WidthNHeightAlignToBand	FontStyle WordWrap	CaptionN------------------------------------------------------------------------------  	TSZRLabelZRLabel4Left TopWidthHeightAlignToBand	FontStyleesItalic WordWrap	CaptionEmpresaDesenvolvedora    TUF_ICMSUF_ICMS1OnCalcFieldsUF_ICMS1CalcFieldsDatabaseNameDBguerraFiltered	SQL.StringsSELECT * FROM UF_ICMS 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaLeftTop�  TStringFieldUF_ICMS1UFI_UF	FieldNameUFI_UFOriginDBGUERRA.UF_ICMS.UFI_UFSize  TFloatFieldUF_ICMS1UFI_ICMS_COMPRA	FieldNameUFI_ICMS_COMPRAOrigin DBGUERRA.UF_ICMS.UFI_ICMS_COMPRADisplayFormat0.00  TFloatFieldUF_ICMS1UFI_ICMS_VENDA	FieldNameUFI_ICMS_VENDAOriginDBGUERRA.UF_ICMS.UFI_ICMS_VENDADisplayFormat0.00  TIntegerFieldUF_ICMS1USU_CODIGO	FieldName
USU_CODIGOOriginDBGUERRA.UF_ICMS.USU_CODIGO  TDateTimeFieldUF_ICMS1UFI_DT_CADASTRO	FieldNameUFI_DT_CADASTROOrigin DBGUERRA.UF_ICMS.UFI_DT_CADASTRO  TDateTimeFieldUF_ICMS1UFI_DT_ALTERADO	FieldNameUFI_DT_ALTERADOOrigin DBGUERRA.UF_ICMS.UFI_DT_ALTERADO  TStringFieldUF_ICMS1Usuario	FieldKindfkCalculated	FieldNameUsuario
Calculated	  TIntegerFieldUF_ICMS1CNC_CODIGO	FieldName
CNC_CODIGOOriginDBGUERRA.UF_ICMS.CNC_CODIGO    