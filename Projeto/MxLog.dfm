�
 TFMXLOG 0j  TPF0TfMxLogfMxLogLeftJTop^BorderStylebsSingleCaption    Log de Operações dos UsuáriosClientHeight.ClientWidthColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
KeyPreview	OldCreateOrder	PositionpoScreenCenterWindowStatewsMaximizedOnClose	FormCloseOnCreate
FormCreate
OnKeyPressFormKeyPressPixelsPerInch`
TextHeight TDBGridDBGrid1Left Top5WidthHeight�AlignalClient
DataSourceDSLogTabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style ColumnsExpanded	FieldName
LOG_CODIGOTitle.Caption   CódigoVisible	 Expanded	FieldNameUSU_NOMETitle.Caption   UsuárioWidthTVisible	 Expanded	FieldNameMDL_DESCRICAOTitle.Caption   MóduloWidth� Visible	 Expanded	FieldNameSML_DESCRICAOTitle.Caption	SubmoduloWidth� Visible	 Expanded	FieldNameOPS_OPERACAOTitle.Caption   Operação do sistemaWidth� Visible	 Expanded	FieldNameLOG_DATA_HORATitle.Caption	Data/HoraWidthVisible	 Expanded	FieldNameLOG_TIPO_ENTTitle.Caption   ObservaçãoWidth� Visible	 Expanded	FieldNameLOG_CODIGO_ENTTitle.Caption
   Cód. ItemVisible	    TPanelPanel13Left Top WidthHeight5AlignalTop
BevelInner	bvLowered
BevelOuterbvNoneTabOrder TLabelLabel1LeftTop	WidthHeightCaptionData:  TSpeedButtonSpeedButton1Left�TopWidthZHeightHintImprimir LogCaption	&ImprimirFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
Glyph.Data
z  v  BMv      v   (                                       �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 0      ?��������������wwwwwww�������wwwwwww        ���������������wwwwwww�������wwwwwww�������wwwwww        wwwwwww30����337���?330� 337�wss330����337��?�330�  337�swws330���3337��73330��3337�ss3330�� 33337��w33330  33337wws333	NumGlyphs
ParentFontParentShowHintShowHint	OnClickSpeedButton1Click  TDateTimePickerDateTimePicker1LeftTopWidth� HeightDate H�y�<�@Time H�y�<�@
DateFormatdfLongTabOrder OnChangeDateTimePicker1Change  TRadioGroupRadioGroup1LeftTopWidthiHeight)Columns	ItemIndex Items.Strings   Todos Usuários   Usuário TabOrderOnClickRadioGroup1Click  TDBLookupComboBoxDBLookupComboBox1LeftTopWidthiHeightEnabledKeyField
USU_CODIGO	ListFieldUSU_NOME
ListSource
DSUsuario1TabOrderOnClickDBLookupComboBox1Click   TDataSourceDSLogDataSetLog1Left� Topx  TLogLog1
BeforeOpenLog1BeforeOpenDatabaseNameDBguerraSQL.Strings8SELECT DISTINCT T1.*, T2.OPS_OPERACAO, T3.MDL_DESCRICAO,T4.SML_DESCRICAO, T5.USU_NOMEHFROM Log T1, Operacao_do_Sistema T2, Modulo T3, Submodulo T4, Usuario T5FWHERE(T1.CNC_CODIGO=:CNC_CODIGO) AND (T5.CNC_CODIGO=T1.CNC_CODIGO) AND#(T1.OPS_CODIGO = T2.OPS_CODIGO) AND#(T2.SML_CODIGO = T4.SML_CODIGO) AND#(T4.MDL_CODIGO = T3.MDL_CODIGO) AND#(T1.USU_CODIGO = T5.USU_CODIGO) AND<(T1.LOG_DATA_HORA>=:DATAINI) AND (T1.LOG_DATA_HORA<:DATAFIM)ORDER BY T1.LOG_CODIGO DESC      CncCodigoEnt 	CodigoCNC 	CodigoEnt 	CodigoLOG 	CodigoOPS 	CodigoUSU Left� Top{	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType
ftDateTimeNameDATAINI	ParamType	ptUnknown DataType
ftDateTimeNameDATAFIM	ParamType	ptUnknown    TUsuarioUsuario1
BeforeOpenUsuario1BeforeOpenDatabaseNameDBguerraSQL.StringsSELECT * FROM USUARIOWHERE CNC_CODIGO=:CNC_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina-MaquinaLogado PerfilSituacao LeftxTopx	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown    TDataSource
DSUsuario1DataSetUsuario1LeftpTop�    