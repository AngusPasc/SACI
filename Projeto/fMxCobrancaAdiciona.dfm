�
 TFCDITEMTAB 0�  TPF0TfCdItemTab
fCdItemTabLeft1TopoBorderStylebsSingleCaptionCadastro de Itens da TabelaClientHeight�ClientWidth�Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style Menu	MainMenu1PositionpoScreenCenterOnClose	FormCloseOnCreate
FormCreateOnShowFormShowPixelsPerInch`
TextHeight TPanelPanel1Left Top5Width�HeightuAlignalTop
BevelInner	bvLowered
BevelOuterbvNoneTabOrder  TLabelLabel2LeftTopWidthHeightCaptionItensFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.StylefsBoldfsUnderline 
ParentFont  TCheckListBoxCheckListBox1LeftTopWidthHeightZFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style 
ItemHeight
ParentFontTabOrder   TBitBtnBitBtn1Left!TopWidth|HeightCaptionMarcar TodosTabOrderOnClickBitBtn1Click
Glyph.Data
z  v  BMv      v   (                                       �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� UUUUUUUUUUUUUUUUUUUUUUUUUUU�UUUUUUYUUUUUUW�UUUUU��UUUUUUww�UUUUU��UUUUUUww�UUUUY��UUUUWwwUUUU���UUUUwww�UUW���UUUWwuww�UUyUY�UUUwuUWw�UUUUUY�UUUUUWwUUUUUU�UUUUUUw�UUUUUY�UUUUUUWw�UUUUUUyUUUUUUw�UUUUUW�UUUUUUWw�UUUUUUY�UUUUUUWwUUUUUUUUUUUUUUUU	NumGlyphs  TBitBtnBitBtn2Left!Top8Width|HeightCaptionDesmarcar TodosTabOrderOnClickBitBtn2Click
Glyph.Data
z  v  BMv      v   (                                       �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 33333333333���33339��33333�ww��339����3337w37w�33�333��33w�337�9��339�37w�33w�99�333�37�w�337��3��339�w�w�37�39�339�w�7w�37�33��39�w�3w�7�339�39�w�37w�7�333��9�w�33w�s9�339�937?�37w��9�333��37s�33ww33��339�33w?���s339����3337w37w33339��333337ww333	NumGlyphs   TPanelPanel2Left Top�Width�Height5AlignalClient
BevelInner	bvLowered
BevelOuterbvNoneTabOrder TSpeedButtonSpeedButton1LeftjTop	Width� Height%HintConfirmar CadastroCaptionSalvarFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 
Glyph.Data
z  v  BMv      v   (                                       �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3333 pw 3333wwww3333 �� 3333w�3w3333 �� 3333w��w3333    ?���wwww        wwwwwwww������333337������?����� �̜�w7swwww����9�3?����w�  �𙙓ww77ww�������?���www �  9�3w7ww7w����9�3?��s7w���3y�3w7�?ww3�����3��swws3   33333www33333	NumGlyphs
ParentFontParentShowHintShowHint	OnClickSpeedButton1Click  TSpeedButtonSpeedButton2LeftTop	Width� Height%HintFechar CadastroCaptionFecharFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.Style 
Glyph.Data
z  v  BMv      v   (                                       �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3     33wwwww33333333333333333333333333333333333333333333333?33�33333s3333333333333���33��337ww�33��337���33��337ww3333333333333����33     33wwwwws3	NumGlyphs
ParentFontParentShowHintShowHint	OnClickSpeedButton2Click   TPanelPanel3Left Top Width�Height5AlignalTop
BevelInner	bvLowered
BevelOuterbvNoneTabOrder TLabelLabel20LeftTopWidth,HeightCaptionTabelaFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.StylefsBoldfsUnderline 
ParentFont  TDBLookupComboBoxDBLookupComboBox1LeftTopWidth� HeightKeyField
TBP_CODIGO	ListFieldTBP_DESCRICAO
ListSourceDSTabela_de_Precos1TabOrder OnClickDBLookupComboBox1Click   TProdutoProduto1DatabaseNameDBguerraSQL.StringsSELECT * FROM PRODUTOORDER BY PRD_DESCRICAO CConfiguracaoDM.Configuracao1CLogDM.Log1CentroDeCusto	CodigoCNC 	CodigoCLF 	CodigoCTP 	CodigoFOR 	CodigoGRP 	CodigoORF 	CodigoPRD 	CodigoSGP Left�Top�   TTabela_de_PrecosTabela_de_Precos1
BeforeOpenTabela_de_Precos1BeforeOpenDatabaseNameDBguerraSQL.StringsSELECT * FROM TABELA_DE_PRECO,WHERE CNC_CODIGO=0 OR CNC_CODIGO=:CNC_CODIGOORDER BY TBP_DESCRICAO Params.Data
     
CNC_CODIGO        CConfiguracaoDM.Configuracao1CLogDM.Log1CentroDeCusto	CodigoCNC 	CodigoTBP 
PrazoMedio Validade �����@Left� Top�   TDataSourceDSTabela_de_Precos1DataSetTabela_de_Precos1LeftJTop�   TDataSource
DSProduto1DataSetProduto1Left�Top�   TItem_Tabela_de_PrecosItem_Tabela_de_Precos1DatabaseNameDBguerra
DataSourceDSTabela_de_Precos1RequestLive	SQL.Strings%SELECT * FROM ITEM_DE_TABELA_DE_PRECOWHERE TBP_CODIGO=:TBP_CODIGO Params.Data
     
TBP_CODIGO       CConfiguracaoDM.Configuracao1CLogDM.Log1
CTransfArqDM.TransfArq1CentroDeCusto	CodigoCNC CProdutoProduto1CTabelaPrecoTabela_de_Precos1	CodigoITP 	CodigoPRD 	CodigoTBP QuantMin �	²�	<Left� Top�   	TMainMenu	MainMenu1LeftTTop�  	TMenuItemFechar1Caption&FecharOnClickSpeedButton2Click  	TMenuItem
Confirmar1TagCaption
&ConfirmarOnClickSpeedButton1Click    