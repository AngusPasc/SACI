�
 TFMXLOCALIZATROCA 0�  TPF0TfMxLocalizaTrocafMxLocalizaTrocaLeftUTopkBorderIconsbiSystemMenu BorderStylebsSingleCaptionLocaliza��o de PedidosClientHeight�ClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style Menu	MainMenu1OldCreateOrder	PositionpoScreenCenterOnClose	FormCloseOnShowFormShowPixelsPerInch`
TextHeight TPanelPanel1Left Top-Width�HeightDAlignalClient
BevelInner	bvLowered
BevelOuterbvNoneTabOrder  TDBGridDBGrid1LeftTopWidth�HeightBAlignalClient
DataSourceDSPedido_de_Venda1OptionsdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgConfirmDeletedgCancelOnExit TabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style ColumnsExpanded	FieldName
PDV_CODIGOTitle.CaptionPedidoWidth,Visible	 Expanded	FieldNamePDV_DATA_HORATitle.Caption	Data/HoraWidthqVisible	 Expanded	FieldNameCLI_RZ_SOCIALTitle.CaptionClienteWidthVisible	 Expanded	FieldNameTotalWidthdVisible	 Expanded	FieldNamePDV_NOTA_FISCALTitle.CaptionNota FiscalVisible	     TPanelPanel3Left TopqWidth�Height(AlignalBottom
BevelInner	bvLowered
BevelOuterbvNoneTabOrder TBitBtnBitBtn1Left�TopWidthZHeightCaption
&Confirma Default	TabOrder OnClickBitBtn1Click
Glyph.Data
�  �  BM�      v   (   $            h                      �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  333333333333�33333  334C33333338�33333  33B$3333333�8�3333  34""C33333833�3333  3B""$33333�338�333  4"*""C3338�8�3�333  2"��"C3338�3�333  :*3:"$3338�38�8�33  3�33�"C333�33�3�33  3333:"$3333338�8�3  33333�"C333333�3�3  33333:"$3333338�8�  333333�"C333333�3�  333333:"C3333338�  3333333�#3333333��  3333333:3333333383  333333333333333333  	NumGlyphs  TBitBtnBitBtn2LeftTopWidthZHeightCancel	Caption&FecharModalResultTabOrderOnClickBitBtn2Click
Glyph.Data
z  v  BMv      v   (                                       �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3     33wwwww33333333333333333333333333333333333333333333333?33�33333s3333333333333���33��337ww�33��337���33��337ww3333333333333����33     33wwwwws3	NumGlyphs  	TCheckBox	CheckBox1LeftTopWidthHeightCaption&Or�amentos (V�lidos)TabOrderOnClickCheckBox1Click  	TCheckBox	CheckBox2Left� TopWidth{HeightCaptionOr�amentos (&Todos)TabOrderOnClickCheckBox2Click  	TCheckBox	CheckBox3LeftTopWidth� HeightCaption&Devolu��o ParcialTabOrderVisibleOnClickCheckBox3Click   TPanelPanel2Left Top Width�Height-AlignalTop
BevelInner	bvLowered
BevelOuterbvNoneTabOrder TSpeedButtonSB_LocLeftTopWidthHeightHint	Localizar
Glyph.Data
z  v  BMv      v   (                                       �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 333333333333333�3333330 ?����37w 0  330 w�ww?37w���333ws3?33?࿿ 33 w�3ws�3w�����33 w�3?���w࿿   33w�3www??�������w�?���sw�    3�w�wwww3w �3333ws�s333?30 3333 37w3333w3333333 3333333w333333333333333�3333330 3333337w3333330 3333337w3333333333333333	NumGlyphsParentShowHintShowHint	OnClickSB_LocClick  TLabelLabel19Left;TopWidth*HeightCaption
&LocalizarFocusControlEdit11  TLabelLabel20Left�TopWidth!HeightCaptionCampo  TEditEdit11Left;TopWidth� HeightCharCaseecUpperCaseTabOrder   	TComboBox	ComboBox2Left�TopWidth|HeightStylecsOwnerDrawFixed
ItemHeightTabOrderItems.StringsYC�d. Pedido                                                                    PDV_CODIGO\C�d. Cliente                                                                      CLI_CODIGOaNota Fiscal                                                                       PDV_NOTA_FISCALbData                                                                                 PDV_DATA_HORA     TDataSourceDSPedido_de_Venda1DataSetPedido_de_Venda1Left� TopE  TPedido_de_VendaPedido_de_Venda1OnCalcFieldsPedido_de_Venda1CalcFieldsDatabaseNameDBguerraFiltered	SQL.StringsSELECT T1.*,T2.CLI_RZ_SOCIAL"FROM PEDIDO_DE_VENDA T1,CLIENTE T2WHERE T1.PDV_SITUACAO=3 AND<T1.CLI_CODIGO=T2.CLI_CODIGO AND T2.CNC_CODIGO=T1.CNC_CLIENTENAND T1.PDV_EM_USO=0 AND (T1.PDV_DIAS_RESERV = 0 OR T1.PDV_DIAS_RESERV IS NULL)ORDER BY T2.CLI_RZ_SOCIAL DESC  CConfiguracaoDM.Configuracao1CLogDM.Log1CentroDeCusto	CodigoCNC ECampoLocaliz	ComboBox2ENomeLocalizEdit11MaquinaCUsuarioDM.Usuario1
ClienteCNC 	CodigoAGF 	CodigoCLI 	CodigoFPG 	CodigoPDV 	CodigoUSU 
DiasReserv Listado 
MaquinaPDV MediaPagamento 	NotaCupom 
NotaFiscal Situacao TipoPag LeftkTopD TIntegerFieldPedido_de_Venda1PDV_CODIGO	FieldName
PDV_CODIGOOrigin#DBGUERRA.PEDIDO_DE_VENDA.PDV_CODIGO  TIntegerFieldPedido_de_Venda1CNC_CODIGO	FieldName
CNC_CODIGOOrigin#DBGUERRA.PEDIDO_DE_VENDA.CNC_CODIGO  TIntegerFieldPedido_de_Venda1CLI_CODIGO	FieldName
CLI_CODIGOOrigin#DBGUERRA.PEDIDO_DE_VENDA.CLI_CODIGO  TIntegerFieldPedido_de_Venda1USU_CODIGO	FieldName
USU_CODIGOOrigin#DBGUERRA.PEDIDO_DE_VENDA.USU_CODIGO  TDateTimeFieldPedido_de_Venda1PDV_DATA_HORA	FieldNamePDV_DATA_HORAOrigin&DBGUERRA.PEDIDO_DE_VENDA.PDV_DATA_HORA  TFloatFieldPedido_de_Venda1PDV_TOTAL	FieldName	PDV_TOTALOrigin"DBGUERRA.PEDIDO_DE_VENDA.PDV_TOTAL  TIntegerFieldPedido_de_Venda1PDV_LISTADO	FieldNamePDV_LISTADOOrigin$DBGUERRA.PEDIDO_DE_VENDA.PDV_LISTADO  TIntegerFieldPedido_de_Venda1PDV_SITUACAO	FieldNamePDV_SITUACAOOrigin%DBGUERRA.PEDIDO_DE_VENDA.PDV_SITUACAO  TStringFieldPedido_de_Venda1PDV_OBS	FieldNamePDV_OBSOrigin DBGUERRA.PEDIDO_DE_VENDA.PDV_OBS  TIntegerFieldPedido_de_Venda1PDV_DIAS_RESERV	FieldNamePDV_DIAS_RESERVOrigin(DBGUERRA.PEDIDO_DE_VENDA.PDV_DIAS_RESERV  TSmallintFieldPedido_de_Venda1PDV_NOTA_FISCAL	FieldNamePDV_NOTA_FISCALOrigin(DBGUERRA.PEDIDO_DE_VENDA.PDV_NOTA_FISCAL  TIntegerFieldPedido_de_Venda1AGF_CODIGO	FieldName
AGF_CODIGOOrigin#DBGUERRA.PEDIDO_DE_VENDA.AGF_CODIGO  TIntegerFieldPedido_de_Venda1FPG_CODIGO	FieldName
FPG_CODIGOOrigin#DBGUERRA.PEDIDO_DE_VENDA.FPG_CODIGO  TIntegerFieldPedido_de_Venda1PDV_TIPO_PAG	FieldNamePDV_TIPO_PAGOrigin%DBGUERRA.PEDIDO_DE_VENDA.PDV_TIPO_PAG  TFloatFieldPedido_de_Venda1PDV_ENTRADA	FieldNamePDV_ENTRADAOrigin$DBGUERRA.PEDIDO_DE_VENDA.PDV_ENTRADA  TIntegerFieldPedido_de_Venda1CNC_CLIENTE	FieldNameCNC_CLIENTEOrigin$DBGUERRA.PEDIDO_DE_VENDA.CNC_CLIENTE  TIntegerFieldPedido_de_Venda1PDV_EM_USO	FieldName
PDV_EM_USOOrigin#DBGUERRA.PEDIDO_DE_VENDA.PDV_EM_USO  TStringFieldPedido_de_Venda1CLI_RZ_SOCIAL	FieldNameCLI_RZ_SOCIALOriginDBGUERRA.CLIENTE.CLI_RZ_SOCIALSize(  TStringFieldPedido_de_Venda1Total	FieldKindfkCalculated	FieldNameTotal
Calculated	   TTitulo_receberTitulo_receber1DatabaseNameDBguerraFiltered	SQL.Strings$SELECT SUM(TRC_VALOR) as TotalPedidoFROM TRCTEMP7WHERE CNC_CODIGO=:CNC_CODIGO AND PDV_CODIGO=:PDV_CODIGO  CentroDeCusto	CodigoCNC Maquina
ClienteCNC 	CodigoAGF 	CodigoBOL 	CodigoCCX 	CodigoCLI 	CodigoCPC 	CodigoPDV 	CodigoTRC 	CodigoUSU Processo Situacao Tipo TipoPag 	TituloANT 	TituloORI VisitadoLeft@TopH	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
PDV_CODIGO	ParamType	ptUnknown   TFloatFieldTitulo_receber1TOTALPEDIDO	FieldNameTOTALPEDIDOOrigin#DBGUERRA.TITULO_A_RECEBER.TRC_VALOR   	TMainMenu	MainMenu1Left� Top�  	TMenuItemPedidodeVenda1CaptionPedido de Venda 	TMenuItem
Localizar1Caption
&LocalizarShortCutrOnClickSB_LocClick  	TMenuItemN1Caption-  	TMenuItem
Confirmar1Caption
&ConfirmarOnClickBitBtn1Click  	TMenuItemFechar1Caption&FecharOnClickBitBtn2Click     