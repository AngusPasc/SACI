�
 TFMXGERAPRE 0��  TPF0TfMxGeraPre
fMxGeraPreLeft�Top� BorderIcons BorderStylebsDialogCaptionAguarde alguns minutos...ClientHeight� ClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterOnClose	FormCloseOnShowFormShowPixelsPerInch`
TextHeight TLabelLabel1LeftTopWidth�Height%CaptionCriando Pre-RecebimentosFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TAnimateAnimate1LefthTopJWidthHeight<	CommonAVIaviCopyFiles	StopFrame"  TPre_RecebimentoPre_Recebimento1DatabaseNameDBguerraFiltered	RequestLive	SQL.StringsSELECT * FROM PRE_RECEBIMENTO WHERE CNC_CODIGO=:CNC_CODIGO AND0              PRC_CNC_ORIGEM=:PRC_CNC_ORIGEM AND0              PRC_COD_ORIGEM=:PRC_COD_ORIGEM AND               PRC_TIPO=:PRC_TIPO CConfiguracaoDM.Configuracao1	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina
CNC_Origem 
Cod_Origem 	CodigoFOR 	CodigoREC 
NotaFiscal Situacao Tipo TotItem Left� Top	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerNamePRC_CNC_ORIGEM	ParamType	ptUnknown DataType	ftIntegerNamePRC_COD_ORIGEM	ParamType	ptUnknown DataType	ftIntegerNamePRC_TIPO	ParamType	ptUnknown    TItem_Pre_RecebimentoItem_Pre_Recebimento1DatabaseNameDBguerraFiltered	
DataSourceDSPre_Recebimento1RequestLive	SQL.Strings%SELECT * FROM ITEM_DE_PRE_RECEBIMENTO!WHERE CNC_CODIGO=:CNC_CODIGO AND %               PRC_CODIGO=:PRC_CODIGOORDER BY PRD_CODIGO ASC CConfiguracaoDM.Configuracao1	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina	CodigoIRC 	CodigoPRD 	CodigoREC Situacao Tipo LeftTop	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
PRC_CODIGO	ParamType	ptUnknown    TDataSourceDSTransferencia1DataSetTransferencia1Left.Top  TDataSourceDSPre_Recebimento1DataSetPre_Recebimento1LeftTop  TCentroCustoCentroCusto1DatabaseNameDBGuerraSQL.StringsSELECT * FROM CENTRO_DE_CUSTOORDER BY CNC_CODIGO ASC 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaCENTRO_DE_CUSTO
Logradouro RecebeDadosLeft�Top  TTimerTimer1EnabledOnTimerTimer1TimerLeft&Top  TQueryTransferencia1DatabaseNameDBguerraSQL.StringsSELECT * FROM TRANSFERENCIA +WHERE TRF_CNC_DESTINO=:TRF_CNC_DESTINO AND                TRF_SITUACAO=1"ORDER BY CNC_CODIGO,TRF_CODIGO ASC Left� Top	ParamDataDataType	ftIntegerNameTRF_CNC_DESTINO	ParamType	ptUnknown    TQueryItem_de_Transferencia1DatabaseNameDBguerraSQL.Strings#SELECT * FROM ITEM_DE_TRANSFERENCIA WHERE CNC_CODIGO=:CNC_CODIGO AND%               TRF_CODIGO=:TRF_CODIGOORDER BY PRD_CODIGO ASC LeftpTop	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
TRF_CODIGO	ParamType	ptUnknown    TTitulo_receberTitulo_receber1DatabaseNameDBguerraRequestLive	SQL.StringsSELECT * FROM TITULO_A_RECEBERWHERE CNC_CODIGO=:CNC_CODIGOAND TRC_CODIGO=-1 CConfiguracaoDM.Configuracao1	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina	ChequeCNC ChequeDevolvido
ClienteCNC 	CodigoAGF 	CodigoBOL 	CodigoCCX CodigoCCXRecebimento 	CodigoCHQ 	CodigoCLI 	CodigoCPC 	CodigoFPE 	CodigoFUN 	CodigoMCC 	CodigoPDV 	CodigoTRC 	CodigoTRF FaturamentoCNC GerouMovimentoMovimentoContaCorrenteCNC PagamentoParcialProcesso 
Reabertura Situacao Tipo TipoPag 
TipoPedido 	TituloANT 	TituloORI 
Verificado VisitadoLeftGTop	ParamDataDataType	ftUnknownName
CNC_CODIGO	ParamType	ptUnknown    TForma_de_PagamentoForma_de_Pagamento1DatabaseNameDBguerraSQL.Strings!SELECT * FROM FORMA_DE_PAGAMENTO WHERE FPG_CODIGO=:FPG_CODIGO CConfiguracaoDM.Configuracao1	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaFORMA_DE_PAGAMENTOCentavosEntrada	CodigoFPG 	CodigoTBP Compra
PrazoMedio Situacao TipoPagExclusivo LefthTop	ParamDataDataType	ftUnknownName
FPG_CODIGO	ParamType	ptUnknown    TTitulo_a_pagarTitulo_a_pagar1DatabaseNameDBguerraRequestLive	SQL.StringsSELECT * FROM TITULO_A_PAGARWHERE CNC_CODIGO=:CNC_CODIGOAND TPG_CODIGO=-1 CConfiguracaoDM.Configuracao1	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina	ChequeCNC 	CodigoBNF 	CodigoCCX CodigoCCXRecebimento 	CodigoCHQ0	CodigoFOR 	CodigoMCC 	CodigoPCP 	CodigoTPG 	CodigoTRN GerouMovimentoMovimentoContaCorrenteCNC Periodo Situacao TipoDoc TipoPag 	TituloAnt 	TituloOri Left� Top	ParamDataDataType	ftUnknownName
CNC_CODIGO	ParamType	ptUnknown    TQueryQuery1DatabaseNameDBguerraLeft� Top  TItem_Pedido_VendaItem_Pedido_Venda1DatabaseNameDBguerraSQL.Strings/SELECT FUN_CODIGO FROM ITEM_DE_PEDIDO_DE_VENDA WHERE PDV_CODIGO=:PDV_CODIGOAND CNC_CODIGO=:CNC_CODIGO CConfiguracaoDM.Configuracao1	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaAVista	CodigoFUN 	CodigoIEB 	CodigoIPV 	CodigoLOT 	CodigoPDV 	CodigoPRD 	CodigoSEC 	CodigoTBP DiasEntrega EntregaItemNota LocEst NotaSituacao 	Pendencia 	Sequencia ServicoSituacao Vinculo Left�Top	ParamDataDataType	ftIntegerName
PDV_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown    	TSkinData	SkinData1Active
DisableTagcSkinControls
xcMainMenuxcPopupMenu	xcToolbarxcControlbarxcCombo
xcCheckBoxxcRadioButton
xcProgressxcScrollbarxcEditxcButtonxcBitBtnxcSpeedButtonxcSpinxcPanel
xcGroupBoxxcStatusBarxcTab
xcTrackBarxcSystemMenu Options	xoPreviewxoToolbarBK Skin3rd.StringsTPngBitBtn=pngbitbtnTVirtualStringTree=scrollbarTVirtualDrawTree=scrollbarTTBXDockablePanel=PanelTAdvPanelGroup=scrollbarTComboboxex=comboboxTRxSpeedButton=speedbuttonTHTMLViewer=scrollbarTDBCtrlGrid=scrollbarTfrSpeedButton=speedbuttonTfrTBButton=speedbuttonTControlBar=PanelTTBDock=PanelTTBToolbar=PanelTImageEnMView=scrollbarTImageEnView=scrollbarTAdvMemo=scrollbarTDBAdvMemo=scrollbarTcxDBLookupComboBox=comboboxTcxDBComboBox=comboboxTcxDBDateEdit=comboboxTcxDBImageComboBox=comboboxTcxDBCalcEdit=comboboxTcxDBBlobEdit=comboboxTcxDBPopupEdit=comboboxTcxDBFontNameComboBox=comboboxTcxDBShellComboBox=comboboxTRxLookupEdit=comboboxTRxDBLookupCombo=comboboxTRzGroup=panelTRzButton=buttonTRzBitbtn=bitbtnTRzMenuButton=menubtnTRzCheckGroup=CheckGroupTRzRadioGroup=RadiogroupTRzButtonEdit=EditTRzDBRadioGroup=RadiogroupTRzDBRadioButton=RadiobuttonTRzDateTimeEdit=comboboxTRzColorEdit=comboboxTRzDateTimePicker=comboboxTRzDBDateTimeEdit=comboboxTRzDbColorEdit=comboboxTRzDBDateTimePicker=comboboxTLMDButton=bitbtnTLMDGroupBox=GroupboxTDBCheckboxEh=CheckboxTDBCheckboxEh=CheckboxTLMDCHECKBOX=CheckboxTLMDDBCHECKBOX=CheckboxTLMDRadiobutton=RadiobuttonTLMDCalculator=panelTLMDGROUPBOX=PanelTLMDSIMPLEPANEL=PanelTLMDDBCalendar=PanelTLMDButtonPanel=PanelTLMDLMDCalculator=PanelTLMDHeaderPanel=PanelTLMDTechnicalLine=PanelTLMDLMDClock=PanelTLMDTrackbar=panelTLMDListCombobox=comboboxTLMDCheckListCombobox=comboboxTLMDHeaderListCombobox=comboboxTLMDImageCombobox=comboboxTLMDColorCombobox=comboboxTLMDFontCombobox=comboboxTLMDFontSizeCombobox=comboboxTLMDFontSizeCombobox=comboboxTLMDPrinterCombobox=comboboxTLMDDriveCombobox=comboboxTLMDCalculatorComboBox=comboboxTLMDTrackBarComboBox=comboboxTLMDCalendarComboBox=comboboxTLMDTreeComboBox=comboboxTLMDRADIOGROUP=radiogroupTLMDCheckGroup=CheckGroupTLMDDBRADIOGROUP=radiogroupTLMDDBCheckGroup=CheckGroupTLMDCalculatorEdit=editTLMDEDIT=EditTLMDMASKEDIT=EditTLMDBROWSEEDIT=EditTLMDEXTSPINEDIT=EditTLMDCALENDAREDIT=EditTLMDFILEOPENEDIT=EditTLMDFILESAVEEDIT=EditTLMDCOLOREDIT=EditTLMDDBEDIT=EditTLMDDBMASKEDIT=EditTLMDDBEXTSPINEDIT=EditTLMDDBSPINEDIT=EditTLMDDBEDITDBLookup=EditTLMDEDITDBLookup=EditTDBLookupCombobox=ComboboxTWWDBCombobox=ComboboxTWWDBLookupCombo=ComboboxTWWDBCombobox=ComboboxTWWKeyCombo=ComboboxTWWTempKeyCombo=comboboxTWWDBDateTimePicker=ComboboxTWWRADIOGROUP=radiogroupTWWDBEDIT=EditTcxButton=bitbtnTcxDBRadioGroup=radiogroupTcxRadioGroup=radiogroupTcxGroupbox=groupboxTOVCPICTUREFIELD=EditTOVCDBPICTUREFIELD=EditTOVCSLIDEREDIT=EditTOVCDBSLIDEREDIT=EditTOVCSIMPLEFIELD=EditTOVCDBSIMPLEFIELD=EditTO32DBFLEXEDIT=EditTOVCNUMERICFIELD=EditTOVCDBNUMERICFIELD=Edit 	SkinStore(Good)SkinFormtype
sfMainformVersion	4.0.03.10
MenuUpdate		MenuMergeLeftOTop
SkinStream
�  �  !� �v��{��N��X������p7޻/ŋ��`;��_��}B���%����N�3���(%�@��\?_�l�v�O�����{��f��N5�T��)����@��?���[޼�b�&�BZU	qN� ������9���$RAfk�Gw?yP���ؓn	nRlA�C;�4�b=����7��2���M�T�@�	ߒ�c�PLqBң�)��0�� ���/2Yw^�����ޟ�ʱ��6���F�d9��z��Dk|?���9i�\'����rDE��\GܑKy���ԡA�Ģ'�u��ң�6#c��{��ȇ�o�_����wp�G?�o��F���4�7^ ���ex��'s�h��^x��|Ϝ�������m�
@c�"Ȍ?�j��',��ΰ�GZ@���m��o�CU.�J�Q�.R�.�$f73c���< �M(�_�������@�@#> uv>6J��[�˴b(0�s7�{����Q7�y���`��0q`�_���Zc�������m�������'*�]���3 4I�	�H���z������f�4�� >�`L b Q >�%��x�X耜Y3���p�%�K ��G���π�J�TT躐 � �$�5P� I(� ��%�' ��
|���D �_`*�7�/ � 0�U  � )`7�� !�P I)��`#  ���e@J` � ��8	�N���[��'8�
i���'@
 _�P�O΀��.����� �H
muÀ\� �a��x�^d��Fť�x�^��PY>�C2.c0�x�^� K�%�&*��I�.9��R��a>����5N5Q]T��Pc;A������
^]Q]TW�`aW  }�T  hqV�qT&oR��Pġ��,�ʣ���: (C݁�U���� � "�K2� �^u�N�39�1j�j���K)ɛ���	`�����Gx��ꃈ��	 ��@InK�I�TQΨ�� "H����T(����F 8����`'�������xu\�����LD[��@�$Ϣ�q��gd: �
 �-�`H��U=�l��
 ��ϹT|G�Tm�x�(�  ���D6�-��1I+��
 � .Ő�Y���. /�x(;� P X+�	|}��=���� P ]unP�"yF�xxv@@���Pb//G5d�'�t@pU5��͙�xa�� K �~���i�k���3��: �	�_�����(u^��`��#X� ��-Vv*��,*`��+(]N,��vb
^�{|����T
�;YTXg�>Ƶ1�/S����KU��	U�� F GUťE�P�0-o@Qc{��{LWn_y�=��0�(�;S�T[U���V��e P P􀸨��-o��W@ P 3�8�2���T������}���f�_�?� �i�	�I]�#@!*z���*�,7�Ґ�a�~ه�)*ۻ�O����d֯߸?�j��.�'֫���^���#� -0Z �G�Z�1$$�\�.�)��w� # X���������h9�`�4���  ^"gP�Ĕ4���4���\��>�σD��Nd�E� *
����>�~�"��%p,���n?Ȁ��N%S��[ם���� _@�ͦۤ�XAo]k!����y|�z�`/ �rW�m� Y
m7�(0 ���e�����.�/W�f(�Q��j0 �>/HܢV}�Ա��s��%�wN��T�C����Rp���$�� �νwI��Q�],먳�(,`��`X���w�nr�����xsS��l��ٶ :[*p��54���5�An}X-��6�m�M�ʙ%�ʚ��*�2%5-2TZd%0�ZdZ^Zd�Jg�d��g�d��g�d��g�d��g�d��g�d��g�d�*g�d�*[�d.t��])n)�@�R�Ӏ�t����KsI��2M5P�,M/M84�4�Y���Y暥����< X��~��dp�Ǯ ��i���|-m�;�	 �	 �	 �	 �	��	��	��	���	)����`&`-�+v��0hӆ`&`&`&`&J��_�,8`&`- ���4J���`&<��
�[0��V`&��_�ߝ�v��0h'~ �	Ý���
 ��� TPZ�&�E��}�E��@T@ZYߠ*��~���#����d �����m�G��X�Vi��,j��QX�Gay�,�.`RE�N�^��,�N�`�w��,C�.`Ap ��.fw�m��,�+ ����(��$0���d ��"�'| 6`X����w���.K�/pAx���]��O;�p�^w�������$����t��	�E�N�@y6��.���pd���\��^�.��UȽ9ߪ��.�+����`N�Q\�Ja}�.�/p��ԝ��� ԛ��p���-���/��	L/���]�.ؑ{���oM� @
�"w�ݝ�E  � �( [�/zw��   
�;�zN���  [P    9'|  w�'|  F@   
  X���N`H  � �w�  ��+�9HȂ�   �  F�߈P  'ѩ���� V>(�ZL�,  �.P�E  0�  π  =0 �D��    @a`  8	� @wY� �� ���@\�$�����!�/�µk�>� &�� }K� KH/L_@_�?� Yf�w☡"��@�!�ͤ������_!�i , ����\��{0�B� yFԁ*�Hb������KA@K,ag�$H&��.h1���t쫂&)@A��g�-����
���J:����]���@]fi�\,�) g�|���	 ->�JG9�H @����8�/ $���+�=����$���/p��<������M3��'+��4΀��3��"�)L� g��)L�	R��
�4��
Q|B)g��d�|_�	 -�D�E� �3�a�f� $���,S>�_f�� �<�3�$Wi�Z�s	P���)�~��m�3���0�qB�r`��8��@Q 霳i6� � �e� $5`�3�$��q RV0� #PdCa B(ȅ�Q�;����@P�R��
� ���@F�T�A�@XL�	4�kL���A�DK�|S-�;H	ADئ]� *�Βh	X�x[E�$���&��i����%@H�!A�aL�G�� *�P@V@WC�g@H	�yH?Ӟ䀐34΀�L���X%@H
�3�, �DF���G�+Z��(	 -@/a�UP�T���@T�[���@G@&��i�BD�	P��1�8�D|��=E@\ YC�S;Wh	Vv�|#��P@T`&��i��tι$��`��0-���xP2/�u $������gj� ,`!�m��h	 -L�	4�z��$�� s�L��G@Uz ���8zgj� -�")�ㄿ9 $�i� &���q��	l��ݪ
*\�B@[��(��$M3�v��4�D	F��0	�t��g/�E��$��"L"��� 	�[�@E ���gj� .`"��yA�@H��:@M3�ŀ���	x���Mu���)�L�� @ � �3�,=֙ڻ@H@L�	T�Nt�L*g�ƟU	`����L"	ܺ�� ��Έ���p  >��`�*@(S<�U3��Qz�, ����wc�צ�� @����� @
�ѫ{����A�U3�(S:L�	` �����:wO��x 7�gDG;���jg�������Hnڱ�( ���R
����n����T%� ZgX1{#�Gj�g� oL舽 ?Y� @$cqƃ�Y�n�_e� �q��)�� I�#+u3�(������y �E�'��%>:g�� ��D-�3�Цp>IM$ $����o��0
@#�Ћ��@(0�c� JgV���Z@(���P4�-j"�ʉ���T��Π%���
@"�&�Y��(*�d�@#������3|C�ri��@]��@'�a���3"�� �R�<H>0
@!x
h0
e�"�� ���~�k`3 l[�U�� ��z�����?h� �v��@7�w��r_ލ�X#���n$󉒮y��ؾ�fP��<��� @xܨ@��� �/�#h�|�8�ŝ`�S�#96�E����@�V�- ��i��Ky���8���^����x JTa��qc?��u��/p Ӌ�V�&�.�/�^a��꿭pO��B�-݀��9����_�Y!7��𝞲�`�Y0��hdz�P'd�E~u]eɆ8�cc�@-�e\i�f���K�c[�1����8���
xɀ�=ȑy{������FI� �%��M�D�I6J
�+>��y)�q�l(��尹<�ߴ>�&�#'���u{��7�Hz[e�w7`�A�1���\�j��M�O�_=f�z�zi���~��fEC�ץ�#Ť��$bVo�����M
�5��#��
����b	��h7C1�&�k�ѳg��`�ͼ�&���&�Н�{�?�@����|3�A�z�"��o�F<oh7lv�qC��t������h7��+_*�ؘ^&#��<�`�'@�K�:c���m��P�;ۛ�-��`��,u�#�&�?�}�7�܊[�-}��D�P�y�g��`���n�T�>/�����&�|Ԩo�ձ�ޘ���N�(�7}�4���O�:T��6N��r;P�L�5䂋`i
v_*�o�XGR[g�ȸ5=�&챘���d��Z3:VGL�,}0M1��t�$��� ����&�B�'��>��њ)���̜�ǒ�$�t�`�-!��v[�I���4�����E���|�S'�'�ݏG�3�c13��%}H�=T�֧8y����d�a��Ut5��O�Se^���� a��_b�J���4�F餿��9	������k���OR�Vb�����A�z�A�F��}�^ �s�j��S	��3�9��(޽H�y����	����`O�M���|��ˢ<D^tu�����'/���&�/� �` ����^�>�0�N�?���Xz��z������	�F���F�l�W@��o�b?�$߷t�F�x�+�p�!��Y����!!���!��q0x9�G����	6��)-��i�)�:��}���m�*�|3�.~Hz3�����5�����ߧ.�ݑ�z�}��9���S���k����/M���Ի�����������]��B���f����_�`��4�dn�Ϻ����p}n+�O��
�����\PA��ݑ��-8�/�	������T�~c^��S=l��Ǩ��]���8�9���o�H�0?w�Ii��K[����j��%<�W	z�7�	_�,6F��,���p��l�O������l���mT��j�΀O&]�U���W}���Lk�ک�p`M4�2�;"��Mz��v`8b�i�72����ɉ��	m�%�dog�0��ܸ]=��j�MrjOm�����j�rKٰ���+E�e�e�ڶo���Ȕ������B5���A��_�
\>��G�U>��� .� ���ގ�,_�)��N�����@�ib&�
Y7S�^5�5 �@-,D�W&�
��P��ZX���M�S�|�<E`-,D�d���q��L ,�����,�ުzqT��e H �"n ��tlRU�� L �"n ��>x�[_�������$�u�M�~� U��"n �տ����� Y �"n �w_f�]_�y@�ib&��7H����{z�ZXҦ���U��� ST�u�SM��'E���$ �"n&�ɿ��.�N\$���q7�M�N�5!����Ř�闕�At�=>���@J�����Z�|ߵ�@���q7F��������xK7tɽ�_,W�H��;�y��hķT�NMP�/_�3R[��:n��x��U`T���q7T��1��jCX��@lүK7uI���J��H��	��\U�cW�p �7 @	�%�]�+��� �^����ݯ/�x�� @  T t!!!!!!!!!!!!;� =�(>@|��!�B������ �^ǆ�.ù���}c`�M;�7܅�xi� � @   � ��f� � @   � �y� � @   � �[8   � @ /`/�s� @   � @�	��j @   � @�
� @  ��@H�HF@H	 $��@H�<��@H	 $���Aۇh	 $��@H	lz�r��@H	 $�� /����@H	 $��@H	 $��@H	 $��@H	 / h� $��@H	 $
�z<}�x�p7�s���p�3��}�� G���	 / ����U����W���k X���C]�� z��|`#^<�ӄ���p�,�ڇ���҇� �M��dx�O�
B��ӷ�8y��'�T�_�)(A�~E9��$�%_"�5�Q�# RP�W�w��IQuQuQuQuQuQ~��ݖ�D�����X�{"�E��^iG6���n�x`%J�"�5L`�\�
j.�rE���p�����{e���X��� 8E舸��VjE�����-h��$�	V3�,*�ր�,��kE�
�"�76:.e��YmE����v���F4 A`��j/�U����������`@�\?�dl����eZ��ƥ"�Loox��*�~����Ѿ��E�Ѹ>�=��D�z�*�����-��?F�S��?��| U��@p9JK�{d*~_U�	%\�/O����`
�Z��}� [@p��G�h.��t/T� �(	 $��@H	 $��@H	 $����@  {vj�@  l  � V� @  l  � V� @ +a   �� @ +a   �� @[   ��� @[   ��� @
�@   �� � @
�@   �� � V� @  l  � V� @  l  �� @ +a   �� @ +a   ��� @[   ��� @[  -�   �؀ @-�   �؀ @	l@   �� � @	l@   �� � Kb @  �  � Kb @  �  �[ @ %�   �[ @ %�   �؀ @-�   �؀ @-�   �� � @	l@   �� � @	l@  �  � Kb @  �  � Kb @ %�   �[ @ %�   �[ @-�   �؀ @-�   �؀ @	l@   �� � @	l@   �� � Kb @  �  � Kb @  �  �[ @ %�   �[ @ %�   �؀ @-�   ��� ��P
@( ��P
@( ��P
6 �X�9��V��z���°�0���>��P
@( ��P
@( ��P	�ͺw�/C^{�O�;�x��\�`$���!,X
'�9,m&G%����6�q���e�2!&cL�I��.R~�ϓ/) �e� L�����uq�����q�O�( ��P
@( ��P
@( �`ӛ>wK)��G��o��^J���kO ��P
@( ��P
@( ��P
h� @  ր%�   �؀ @-�   �؀ @-� 0 �� � `l`�0 �� � `l`�0�0 � kc `�0�0 � kc `�5��0 �[ `�5��0 �[ `���0 ��� `���0 ��� `l`�0 �� � `l`�0 �� � kc `�0�0 � kc `�0�0 �[ `�5��0 �[ `�5��0 ��� `���0 ��� `���0 �� � `l`�0 �� � `l`�0�0 � kc `�0�0 � kc `�5��0 �[ `�5��0 �[ `���0 ��� `���0 ��� `l`�0 �� � `l`�0 �� � kc `�0�0 � kc `�0�0 �[ `�5��0 �[ `�5��0 ��� `���0 ��� `���0 �� � `l`�0 �� � `l`�0�0 � kc `�0�0 � kc `�5��0 �[ `�-�c`,���X`,���X`,��v:9YTz fH� q+�QW� �R��a{�h|� V`,���X`,���X`,��/U����X
@Z��X`,my�,���X`,���X`,�`,���<���Z��X`,���X`,���X��X`/(x`,��瀰�X2L/�W���X�~�X`/(x`,����,��򇀰�X`,���X`,���<���^P��XyC�X`,���X`,���X��X`/(x`,����,���X`,���X`,�`,���<���^P��X`,���X`,��򇀰�X��X`/(x`,���X`,���XyC�X`,�`,���<���X`,���X`,����,��򇀰�X��X`  �  �  � 	�0 � 	�0 � 	�0 �  �  �  � e � e � e �  �  �  �  �C �  �C �  �C �  �  �  �  �&P�  �&P�  �&P�  �  �  �  � 	�0 � 	�0 � 	�0 �  �  �  � e � e � �^q?����� }wp���1�� ��! �  �* X       s �     �      �       �      _�       _�     �     �       �      �       �      _�     �      �     �       �      �      _�       _�     �      �     �      �       �      _�       _�     �     �       �      �       �      _�     �      �     �       �      �      _�       _�     �      �     �      �       �      _�       _�     �     �       �      �       �      _�     �      �     �       �      �      _�       _�     �      �     �      �       �      _�       _�     �     �       �      �       �      _�     �      �     �       �      �      _�       _�     �      �     �      �       �      _�       _�     �     �       �      �       �      _�     �      �     �       �      �      _�       _�     �      �     �      �       �      _�       _�     �     �       �      �       �      _�     �      �     �       �      �      _�       _�     �      �     �      �       �      _�      �� �  �+�
*��}B Rd�>������/︆�$?�q΀~P���è<V?'����Xi�+��I�A�dP#.���kz޺�Z�9n�@THXހ[t&;  �2� �2�ҳ�j�@ R�i���SR��_��w������e�]��lݵ���┝���x*1��k³�4����0<����w�صm�9O�_C.��w�4TG�r� ����s�ϻ���������Ϲ���jesq���M���/ǋ�e`R��
���N��^��ۉf\.'���ܙ��۠?.��+0���@�*�</[`�����Pe)!{�/���H_#,
`��,����� � 
�R��#~���o���a�#{*şKr�~����\���_}o3���]����eb�-E_z>�OUH�����~��ʫ�~p�g`�aXduK�1�{~~���=6_�毹����t�
��A�#�������,x��m��[i7�_��e�����?�Z�T�[b������qǍ��a>n�:��7��o�JRB��_[?>�������,����� � 
��S������SmvWr��������Mn����'����Rw=���Ynֻ�կC[����x���-=�s�V�͠e'�iy������J��K�ٺ���>�{+eq��ߝ���>v��mB������3��C)}8�K�{|ke��5V[��1����^j��:����8o��?�Xt~ϖVl�v)"����z��M�+d/?)HY!d/#�M @�����P�R�w���ʪ��uрӹ��<�mP��?�4�
��p�]�7��׵��yx]�.<��}L��۟`I��l:��V�����v�IΔ�o<ӗڊ\�r�R��
���nl糜�*��/���Q _��3��ǅ?#�����_�;�m����/�y��Ȼ6���R���i�g��dW�� R,�B�мo���u�B��L�XB�N]W��9s�^u؊[��SD,����B�Bm@�;��RC)�/��R�w���c�j�����F�b��?Es��gQ��E:S��o����X����LqT�Nwe��05���v�]+(�n2�R⩬1KC�����~�J��9��|�AE5� S*n۵`�s�.9�� ��S^H^���5�ׄ.��]�j���T�����K���>^$'p�@������7��yls��P����Nw.����U���&.B�:�/Vr6@^��R�� y�(eΣ-*��eT�K�}�U��r�g��s���ѝ)��R��s�F�/V����*\Ty�|L�Wʦ��N�X�(v��7e���Z)<�y��R�5��۩��,�F�Rk�f���D�bZ��������_wm���lq3ᔹ�*�5�B�]�G�_n��_a�^(FYʅĲ�B�-U�a�j��8_��oI��΅�j��0e��R���|�]O��*|l�!ql�"B~8ʧ��"�����d.��b�.��b��V����r-�5�Mm��_�K������}{����s�2zfwCp�bk�J����'��l��m��<}u���귝OޑNs�w�K�9t�-����i���;N�ɠ��>��W�-r��{X�������c�*������n'����rB�(\T��.i!�aB��/Y�Ƽ>������^r�h]k�]٩�b��%҅�)h^'/c��ϛ]�_��۔/���1}(^�r��^���bJ�����se�P[*/P.*^�=�����(lV��؊J��-KD�̴S����M��*�J\��$��ϮT����ؔ{��9��#��e�����s��	�֥.�Q��2jR��ڐ(��#��{�kAZ���.ѿl��B���s�����ā\_����[7�ma[ؾ�O�ؘ���g7v����P����mB�
Y��r��_���U5�s�Y!}�-F!�e�~]*����*_��[z�Վ�\vъ�Z:|���8��K�{�Uf��S�F:n�h��';��h|N^�Ή��y|��ӳG��%-;�空�Ni�u�v�N��SQ�̌�iEMR?��?#�N����S��q�����)���!ym��F;�ǐ�s��1}0�˦��_[о�����=,_���{����rB����_g3c�d/*�-�:=��Mq|j1�/k�2�Ծ�ʗ������د���:_�� R錁E0�j����'����%h��E;���x��i S�� k��G�ܙ��e����xv+T��n�R����o��T.��W�xk?������]l�MMS�y�S�VR�?��1ԅ��^k�81X����)�B��,{���H\K-��B�r�ؾZh��B�N_��I�8-*j�|�=W�/��ϴ��_��2����/�����<@[)�l�r�����|j1�/k�2��~^�̙}�9��|;��v���`���b�m�-څ�]��m�f�c�F@^���� UU��3�':#C��3
_n/�SVե�KQ�s���[�h���� ]���fy�]z��T���X���v$
;��R�B��)٬�s�8/f0�SD/�Ḱn:%�{;h^����B�r�ؽ�0�B�
_�:��b�T/�����]��,^pe,_ʺ:	����f� ��f��o������h�ߡz�o���0Q��_��fl�j;Kճ,���]���s�R�C[r�~}�/d��V�����-4�t}v�R�T�����}o"��
�_����v�6��,�*�K����v��9�)sN��gfٯ
^H^�>A���_*�!x�������f�r(��hm�s,�e,�^��B���I�ߜ�B�]�B�Vj�  �8�*_�PMK�o�,�S�w����k�ܧͱ��ѥc�b�O�ϫ�5�NXԌ����9*'�!�W_���2��s������q�HR����L}��G���s3��ֶ��3�E�;n��L�9�3�)HY��.�{�2��UR %)!d,��|i� � T�o%����n#���JÉZ�,�����l�P�}�U�p�}]V�3����zp/�H�	�2�}Y���5�*�����g�mV{��)�Ϋ��|6����p�M;�o¿�װ�B)~�B��s�)B�U�8�̾"�D�R�@_�G�:�m�Vt��HQ�	�L�K����R�^��]��ZGQQ�e
Y��R�^��!|��,��R�f5� L5�b��s,��i4������^N���)��n2�4\��rbxU����(O�oV�����4y1���~�
�̆�s�;�qL�*�jfR�I�Rp4�,r�%*z�U֋X��x�� ���� 'r��<lR��pj�e������B�/B������ �lR�P���B�-��`,����Mj&5���jGP��Jo�߰/�X�c,e��e\<dD)j-m�P��K��q�DȩOd��Vj����2�X��e��Xu.��6��@- 3,[0i�}Z)Ξ�� R�x`,���X`,���X`,���N@)�h��2g�a��u���)� �Gթb��j�/ P�
��Kh��MӀ��9l�O�F�]"�Zh���
�!� �e���u@Q�V��Y�q90��#l�bpӋ0�U��rԿjB�V�,s��|��B�B�!жK0�A�\���X �P�;Dᜟb�m7�<�7ց�Z})f��h���1͝g���A����q���ሂ1�b��H0��P/lB��0����*�i��J ��@��С������X`,���X`,���X`,���ϯ�_>�}|�������ϯ�_>�V�|�C�4��W��y�|�����3�{H���� &sZl�4�N��8�\P��CE��п�:o��D�h�� ���~�*�R��.8C+� �A�m�D��T�S�
b�v{E9j�gc���R�M���V��*�
:x���/�zM�p�u�ܖT��
���I�Yc� �Uq����ܸ�� ��',��,pףߔ2�f���`�%I�Yc��Z�Hi/Lo�
�����$�:���B8���JK;�� @j
@	��K�����\1aеYs/��@�r�J�li����Ae��l`$���r�O`�����A���A_��Yc� �X�{Bn�h�+t鶆�&V
�hK�4�`�g�Z��.�pde͢\�S�+�qv�dR`��WS��8���\���a�����Z���CX
�#�/[!v�ېl�7GTz�P�R�$�����p@��^LWo.Ϣ�3<w�u�^�g�+�؋F��#���"��H8���Tiѹ���-��u��]��Y�א�2�f�%(t��nK����Φ�.�ՠ��{5#�� �:�2�%��2�L-�2Q>���ӳ� ��# ���@Q�x�|1�ld���"D��o�p����'�"���c1���tj�6�I,�MUP1�2��� FPm��O�ZɱO��o��r���%~.#Q�(όi�6������23h�5��|c$�ɼ	�=_(e7��4�*rmT��}�y�v�QQ��Dr^:�^1���� �I2)���qJ�I�D��25T0)���� �`l��C�Vۑ�Tc!�'+�o*1�1�~�dʌe�yQ��VU�L��Y���i���/�Q��Y��eF202�ͼeSC*�g��O�Z��D���z�f�Tc+H��ʌd�����1Q8����Y�t
�dpdSm�ȅ,�v��\�`�kMTQZ'*a�y����W���O+#6��\��y��ZK�4���d]�v���5!�i��k&�jr\�G���QwJ�S^�v��,J��fd֪��E3�U�k��[C����f�&���Ltė�ꨪ�)%W���Lif���w�uAٌ��*=�ZG�9� �0�}�V��Ȱ�2g���d}D=� X��e�;��
��.�n 掙���X`,��ד�w&�?V�KQ��Y�1f,Ř�b�b�T�x%�.��.���n@����~/pd����%��u����v��*��c�]6X�&qfy�,�<�Y���{BK�1�6��X��@\|Czݎ�R1e��v~Wl>l�耠.�BR�PL����<YÔ�<�Ŗ眚�X�o� �~�	^K�EA�(.���*�)��?@8o ���F�,V�Ŕ���TI�F4n�`v�|<�g�y�H
�y�<�8��YэB�H
�AvS��x�3�L��\�A�h.�J�ЃS&CQ&i��y�ł���1O��A�hY�|�x*�!G ��8
�qd �;���(<���>�&GQ&j�y�<�g�3�S��t��+b\����c\�?(v�v����c�P�P�=b�o���e �f��bQ��X�<�:�d�,ņ� �S��E���"���h
�2��؉�b�4 ��٥�61�c9?$��9��"Y-	ch�j�6�RAb�4?%���EE�3�\L�cB�W,���ZRd���ߧ���@�%H*�Ms�js<�����I�#���&J����b=f(,��LYo�����*�к���A`���y2S�I��ٜ�)ȴ���<z�\�<��5="y��̪�����0�T��X{����gg�y��sr�����2"�su�Đ�gg�lK�58� ��'��(1�I��9uxZ??E&� ��$nB�ʉ3�3�<�fy瘐������NU��sc���*�h_6�S�1f,Ř�b�YtY}� ��X`,���L�@��E8 � 1$ �� �4@����o�5��' 	�qy�Q:B��k3j�ܡ�*x	�*L_�]ȡ76��4����C�;�J�l]�+T���
�>'[��W�c��'��.�
n�F�2���]�gd��&�2�*/5.�u��z�Ȧ<�p�yH�[�0]���;ѐMW8 ���WW�E�)�;}0$�
� D�':��awTOw�N��Μn;Q�����^o.��w�2C�� '�����]ث���t�:�D����

YȢ"r�y�-��XmW�yp��J��-�لn��('�I��G[���sY5��'6D�O����6�ܬ�26C��MTe�h_�h>�P*� ��@�U:�෷�'�:���� 9<嗓��]�/#�s��U`#'� d�`*�����P�X
�6����y/Yku����B,{�����j����
TǸ	�:����,j+�q�kД7��� Rj8�6UeEp�.�c���2$�\��@Me�=�NA�,�mB��,Wqc���!_SY��A@EE��<�P�A��	],8�H�c](�		1����i�8V���L��`"`*d�����X�	91�����GRr8������U�����+����E�U�=�R�Ҋ��������=�S����԰6\Ǹ
x;#��"�>�G@T��{�����,{��C��/!!N�G@Wfk�*R��4���H DEK�u��h�`~�=,�[m��.�\D`,���X`$�&{f=�X`,���T��Kxǲ9<�[@�]�4\ba�+aa�嗹{����޾p��Y]���JCNmƍM�
���]/������ұ�1`<�u���`��*�Ԯl)�R�X@Z%��H'l'+��s ��62M4��pǪ�r�/l���Ce����v�Ү�fx��ntez�M�8�t�&��CQQ6�TG������H�p�]i�z�q��I�0�
���.��_9{���R% AVkU�3g�ɫ,Xt��Į.F6c�P;�~C2C�D��X	�2�S��`�)1N	C߿^W���/r����/��Ew�?x��@r��o�!~���@
+����z��^;�)�Y��y����(���[��H_��!�O �ÆnV����ܽRX����D�#�o��D�����QW���߾��F�bx	,��X[�����J�(�^16�#���V)	 dj�~�~����U�Ԑ��10���^��+C�O�q���][���p�Mڀ^e�K�+C��9��߾�~��1<����S-gz�o�Y>M�#��@G�
��?~�~�	3�n��a��&���_5�W~�{���H���Zp lG�����Sk�������Z2���X��W7C��N�&czT����/m�\���̘��_ %c&CF��6x�#����v�M��`#����|�#��@LNW�d�a���^�T���Ma��)��� 0߾߾J��/��p�	��c�uߗ�z���,�������1������j��F���˻�'�`#��tN�#���V�:���i���^�?u�1Hr8
|�'ǿ{�!,?x��3�^w?sH���L��@�9ݧz]��|1<8 W�%�=��-��$�g�G�"c�
��e��[�?/r�I��<�C��U +���(YG�8
�նT߾�u�F&6�)�4��*�!`��9{���D~��[��[��[��[��[��F}���~�鉌w�W��:������������R�ū�tr�/w�qY��Z�_�a*<�H,o���`��� R�{��V~�-b�zo�u}��+��p��|�|�~�)�M/G��*/X���j����s0�zz���-����2�w������/@��K�b#�A���7�0@\o�[�����;~�
k�]����k�p�
��Y�{��ܽ=���(8"�S�|�|���?ɹ`+�:j���=�zk�dd����ִ"��ܦY2���+�z}�|�ߺ���Ł�e'������ݎ6o�V�����r3>�p�A V�).����i�]�6I0��Ƣ��� ����ee��_/r�������P00�O�f8������r����lY]���`!@(o���^��ޖ�6bwBimk�OO��y�B�U���w��~�	�?ue����?J+I���^�?xW�6�@��`~�~�	+�i\^cƹ0%����?|���'�i���D P���;����p�|p O����K��f���/ggOvw�`*�C�k�������$qbW$o�X�������B���ܽ~񓡻{����i����y�6�߻6��� jJJm0x�j|s��ܽ9��)������T
jE&���"�"e����)*��8
��N�sv����^�?{���_-@����߼���B:���z�����!ώ^��o�YgU�Qİ�B�LG|p�B*S�M4߾�~�㶞n����/_>}08]Y���N�w���k��/H�u��^)1�AFEEy�Y{��i�/����;���+Cy����r�/M?xW/q����e���{�" q"�!7F���`�k�p�������Հ�@PO�N�Q}��y{����bZ|c�)� ��rLP|��^�~�.n�PP�)�FUUu��z��ܽ�XN��pIzu��,���X`,�A�|���X`,??tfJ�Vo� P�����K>�P�ۈ�0��D+ e�A3�����[���%��S��y���)��d:E�qf��:3O1���|�5���}&p��õ�����]��sS+U�!��j_8\mRB@����Aq�y�,�nκ`���f�:�UZ؀�"�Y�v�֖K=ZZX�v�.NQ)~-�j��l7c�Rgu/z��@�$���N�B֊<?^8kN[�gk���h�bb������C����i�,�#"ѹ��	�w�j�8�@�S+?@-0�WV��I�d2�8^���A#d�����|�m��ש�=�\�[�/[���W2�P@˦�#*-J@�+�v�6�(b�4�� X�r��8I�(o�B����)�pm����I��˶���X,�-��	�fd1���+��MD����<��
����ל��%6�:���G�����umn#̑e`�7&T��yFfw�-(�#�x*�T8� `�$@q΄@�	��9�K1�9��K)O9��9�����s�H������9�Y�(*s5D� `�9ܢs�_�x9�f	$�:(���������𢧈9Ј/�i��=���s2�9�X���3h�3����s�SOIg8���p��x	��9֏�A�% J���̨�9�.��Z��ryXZ��*3�������3s�zT֎�^V� ED)U Z��T��0)��b,t9��v����A(���23 (��L�@a�59�(�נ���Jt��9�����n,�`"i��ヮ,�P����j��@n�ޔ��)1,�b ]��R���%�C(�Ֆ���|�sIڢ�U�B�$q+�F��hC���>�IǤ����x#~h�����߿�
l>��23D"=���B8��'�F�����(�ʛ�H���bCCEHXg3�H��� }��B8��s�Qi���z0O�k52�W��bD�D�	bAO��=�ǖ9�ȪU��� ����@0<g�pn����v3K��ڤW��� fG���I��;R ��{=�v)9�r��9��А0s���3��΄@u	K?>��Z9ӕNu2�	=��!��vt� ��,����Ψ̚Q��:R'=1 �=��>���4c�P4�mFA�0s�M���9�+�v����8�>���Z:<0	��ti�`'=Y<��}� h�R ��sē*�Vx����ߐ0s��s��׈���_K�U�s����T)KU`�{Mh=U���9Ј:�n��3�G>%,��?q���xE�����u�.�L���'� �����y�y�h�f ���~ *g����=R��;op��r���a }�ÝwuϿ�9���$�׿��pW�������7��4s��ɇ���)x@�ά�/-�D��G;�p���U�v��|���D��|�L�~c��#�]��| �|�ע�����Z��F�.�l�)r�{�~B޾���t��:-�����c�����&�\ {i�Gj�O�xΰ��K�DP��.+S:�}������Ij-(��)��@������d���>D���=�W���{�}��e��6����( �4��#H,��>j�+��#��+h$K0������"@�?��{¶�}6����NQ�^�w����{��O^��@�u�T[��'0�eL�ǅ�?���]��FPM�&xJUxey�Zg��c��W��Ћ���*������A3��/����@�\���T�<>(}���ltb ЦGƓ>o��Q��f�1��u�>��Aww�ќ���u򬚛���}��
��'��@��?���6����y#� j���l���?9춟U��le3營{��K���vj*U�^�s�e5R������cqN>���~�v+�)�S� ��t�c�%�jy�]��OJ��p�>�>���|��hȕ0�X-����n�f����W�˛��$Ro�S�s]���y�����r�`|^m/���0
�� �oz�V��P�N��|(
29�緇lUj�{4�������j�E�g��E���1z��w:!���@�� ����͞�-��}L�G%��ow� -��[���,�b�|�1��a�;� -��A��v�K�cY��蜭Ȉ������KԲY:���KO1��o�AA�H��>(}�m��V1�NG�Ԅ��k��c��9=��Bn��ME���O��8��A [�-Č>}캱 ��E<Ng�=Pge�>��r`�P��'}'�K|=H�X���.�W�������9b�S���}l��}��xa���_�;��K��諸�����;�O���g��]��x�/�۸���|-���8��=����}`ֻ���#{��o�;�<>��'}!�i_�C|��Zw����x{��}��]��z������[��WG���۾����3;���iIx��u���A��}�'��~�۾��>��O7�ǿ���]�����C�����#y����{!]�'��/��{�R���W}B���W���>l|=b��<�����{{�^��w�C��'���|�ߒ��AP%�{��^���/0����ӽ��͏�{���'������g{����]���a��}�{�����e�~�����{�N�/{���G��{����>'�OzC��������ý��y��U����vD=���v�����4�/{ڿop�ݾ��{ްw�������h��x}�>|���c����z�ޱ�m�<_���p�ݾ������_��ݹ��p�ݾ��}��r`�Pi����%|p��=���'�,�������&@( �S�����:�D>�K0���}Y����؛#�>�3��f۰�G��H�c���V��;� �w�!�G�^����|�����_���]����[��pG��g�b M�8��u�����<◀I��|��7�����pߜv����'E}���s��@��i�%{G�(A�O��Dɞv�F��&w}�vO��6�����ـ.���b��e��;�b�0G?p;��0a�O-9ΐ<s��8s�
{����Pt���k���9���ň9�?ܑ����'Nt?��'Nt����:s�{x��г�o։AJ�΀���R��t"���!�Y������7�����>�p�~��9�� �������|ľs��$������V�?���vy��Ɔ��hOS��Ϸ|DOI��>p��h�^�D�����z�������/�j�{?���y2�?��P����Ʌ3��i�
���Qv;:w��H �rG�O?��4���h(W���t=�s���VlO�/p���|����V�@��L���ҋ��G��s������6�0?�nv��2A���S��:�c�����9��*� L�z}~��J������nP���B�Ta8�~H/p�� �C!�nd�O�@.�nz{sί[m�'F G��ul�MqiO
�@�Z04>.ABΤ'(^h6�I�p/���2���S��#j����>�U����
@(�@^<3-.�Y�Na`�j˫�<6��r��-��� ��ӖF{�QnZqU�27� �<��o;��>ܾ:�y����2�@.i�g�������s�P /�Y��W����R��h (�^^�v��`�d ����m��:P�M��e>{��k��\��_��}��sOR7m _������{�O�K���8B>Pfo��K!���W�����W���3�PQUy]��^꾮�}��=���#����R�|'}]�ŋփ����qz��^�y��ᜢ/0>����᫿�p�]>�������S��}]��i����w��>�~:����ވ�Y��<�N�8+�V&�o��q�]��je�������>�m�]���yk�s\�?��8�K��n2<����)���/�ʐ�"���"+��B�?�[��M�/�oR����(�O̿O��X�!��۱Z������Es�.�)��G��ȓM��B�,F�Ͱ���������! p<O�8|T}ub@( �jw��J�:�N�q]
��K��!��k����cTN m��]����䮼 0� �};w=)ޒ����ҝ��bS��W�)����]��������?8I�N���G��W����N����7�Oݳ�0qYMP�@���YLO�=�ɀ�� ��k�'
}-���	,G0d3�Ֆ8�p��L����6���������>��v�l)iN )�u^�q5�����$d�I�5�(��v �4�q9���.�c&�{��6[X�q��ڲ��@D�wG�Ym�i��X��ͨ�c�n�g�����|C�x�A��(@\0����M���ڮ�#�*�{��9�E,ܞn9�s��;#qՖ�s�	@Z4��I?9��,�f9�&s�%s?���P%��G8"O����9�^�Z9�fs�a1��I��9�ɊS��K�9��~s��\��r����m���2��I��; PS�x�<�w]14G8���a�@�����#3~I�<s�$s���eMR�N�ЗW��舓�s���ˎx�?�崺ʬ�3���������=����޶�6�����?V^�s��;�s�$Ɲ�΃����tI� �F�,M�詞�k�ɊΟM��y����`3��$���G��;�z�'�"%�%��>�M�J�<s������6�]���	 J�-�C��{}��:(��|�B,-�۔�b1�[��9��p�ݝ�& ���5�}��Z�'c��V�h!X��H ��P
@( ��P
@( �|�0F�'���@�R� 
�Q���|� ��
S�H"+`Q��~w��7��� �? ��P
@( ��P
@( ��H�Ag�<���O�(�$��t�C�����5��ۻ�"����3b��&�x��G�P���� ,#d�@(<�� x=e8��s��<�O��Wv��������e��r9]ɑ���G6̟��p�O|�����&x�������ӛ��O<�m���uE�8<ca�9Ύj����C��^���'�X�{CO���Lcss�?�KѠ�O�8�t��ُ���I���f�M�Mb9��'�;�����G<s�Nu�'F .j�`�|t�A�d��#�	'�:!J뵯�x�R����]�VSg>�N��y}Ό��Ό����c�9��?&k<��x~#�̨Šx��#�'�:1Of���9ї�M�9Ғ�Q��?9ҧdl���c�D��,��Q�,#9Ւ���&o�8�v&��\���s��3�v�g:�$���S~��9�g:�.�,,��a�4���	=�i�����6����?U�_Hs�晀�̓"w�;N���c�9�'8:�]챟��WS��v>�{��g:��q� g�LÇ����}�/T�$�%%z���~I��
��s�������o��܀!��aipӕ��h�^�r �� �YYFI>���|tw�u�d�1��Q��8a��i҃ q����xZ� M���;C��00 �ax ��P
@( ��P
@( ��P
@( ��P
@( ��P
@(0=����ze/?�֊Y�)�_B��B�
�B����K!r�P��,�QJD!IS��!�K!E!���Z~����B�B��u�襐�����K ��P
@( ��P
@( ��P
@( ��P
@( �OS=SP�x��;�����0b�l0_[���t E��P
@(������׀��;�@L�0��A2ϴs���G�r=��"X�/�������q�#^?|�F��"����|�#z��!3�G�����bdƣ']i�n�&o!8XY��J��{�p pp#\B���G���>�ja�'m�jCDh�G��o;�ш#q��	Qj�|D��e!c��!����s��tӀ�h��܇˕���4������c��Y苝[�q)�H��A�U��}�ig����5��hp�M�AZ!��uu<L�Z-������A܃��vWVGa��txh���J��KȒ}t�i�
|M���r�b��5WW��vf�?hA�SB'���o|(�����5N)z����s����)����ٗQ�)�6�4�������$�F�w���ېpa�ˑ9�#J&�ĥH0~rx���A|��)�~��P�	/[6�e[��|�������s9M�-ƹ�վJRR�� Un�6Ҕ��� D��o��(D��yM���E���I��F�&�M�y��%��1�f[�WV�`����(So�����ա�Hi��}@j��|�2�e)�]��,E8Kh���F���F��
F�����|�������;É���$<�)���6�cDhKn����t�$�5 	B�n�7Lq�K��6��.���P�i	N�2׻����ѿ���WP!s�[�/�o��D}ߦ�׈��Bt�:l6��%>F�tz�P!��b����3#��&ߗ��x�1w�b�;��:���r	p��QiIc��$ʜ)��@������eC�6:��w<�Vl�)�P� �bU��_;/#JE9/�y,R7`�A�dO�(qY�@bm��#N����&�6���_-��.#�f6I&��]�l�ؼެ����� WB��t�o�׃�Zrh��-@�߉�#N5�݅��BT�����B��	K�q�����6�8�:{
SohDg���lik��)�n�g P�h/�#�C���>w��Һ���ۻ���o+�u���pz�#tCDl���a�����i[�S�fl���P$M�n�(��7���I#r�<: "�|�e����������L�'���F�x��r��l�Bl�51�k�<(WB�ΫM�<f�za��%�;;���;e�'�D�6��gX��kf�x��@�^4�&)WC�-<4�:I�Z*)�c��q)�;�\�`��9�|��^����p�D��i�M���C�!Bby[�#SD̃�pDo�1v�q����	a����j~���^�
`�wx�������xƯѹPڟ���\)��CR-�`�b��8`"�>B/CPpM����ڋ�^Ot��'�&��D�,Yt���`�����0�6��Фh�?Cx
6�L;�_�ܻf��#L@�����!�t��߯ґ�13�_qR��S��[��۱��76�(V3z�q����Bt�g�O�_\�[ߑ�����a�oG{+S��f"�H��mO�c�Y��:ࠉ��d�Oq����(�V#�Z�w�����J��L3�6�R�0��M3R9��g���N(%#N9�N'RA�7@:���e��u��}
tEγ���X�-���i�0��j�F	�:Q7����f�ϯ���s��O@��5ϖ�be���q$B�i�sg��Z2ȼ����^3:4���=og�+���F�M{�s��;�6�}����,�1D~X���CV���H_2k+�m֥�޶�L��w��֯�?���Ub7�h�bƿ ?Г)�  c��m���š�.&�4�oae�Y�|�j0�r�DF�k��>ɒ4m����k��p�~N���ٖ[LF�ge;3,�1뵙�RJF��2]��cH��?����Oz��_�\�tM�Du�z���8�����6��oU�F}��7P�<23��a�`����-ɜ)3���&���A��x�yrBy��G��j~&3�yr>F�oݡ���o���{�R����Ӱ=S��4��pu�����w��u�e��+ǚG���A�!׼@�e嚙6��8��Ԧ1�i�(�T�i��~�MV�5�o�O%���󹂉�#�??3�6��_S�M�#m6�$�K#|�>F��Zj:�9��[��n��Som������ۚm��ȆL��4��Ơ�����b��n8M��\3UnB;øp�pjr��/K_r�\ �{\�JM��6��S�L\�}�tp~3{��fÒ��u��<�+r�y�sS���6�r~��+�a�,�x�/�p�Y����P�^���:�"��;�hd�#Dư��>�
�����i�ʜF�;xш��� �q,A����b	~��������͏-Ũ<��Ks�B!6s+��g9#2e#J�4�4GW�8��.ǘX[ڷ#���h��V�7���@ ~v���`y���#p2�*n1�E�⤪X��[�4�P�nT��v����})����Ո�i�=��1��uk�����R��7�J�v{g�v$;�@�z�����(�e�%A��q���m��<1{ߑ������l��vyy-Q�#s����0�7 F���N	( ��Tӑ���Hg
1!�*K���Ӈ���~B���5f�j��_��n�BQdl�*��)��#p���y�������/��$3�gH��`-�D�\��g�� �^ؔ��ݠ�_=�0+q~Hd�l�����~hlV�m�8��ۀ����\캿D+S@D������HKR7�1H=ZNR���Oc�1H�Mah,����JP
wƶ�FH�i�7�}7���}�<h����@d�q�E�����-�?��l�Q�Q:���7:h�m�Ы�h�k��]{̘XfdY6 l�� H�h�\#�d�^/[�[/��˧�)^�>`"\�GL6�wmZ/�.�9.�>�o��y����\369�P����;�:��V8�L�N��2Kb���9��i�H�E��p�m������#�'��r�[�Y�=V+�W�q�z���y��S������ǿ�3�|Q?zC�o����0g�K�KQ/[3���X49]��!�$P��,c5
���CE�����\�A�Ek}h��$��L!\� B<_WMr� �-�L�J~7��S<�tr��6"`F��]��,��|#�ka:N0o͜O�j��H�x�}�^�{���L�R�G��fS�?W�������𑵪g���YX�T{��ڸ�
��0�=Z�sT��;�GD64�����X���a� �ټ�Г|F3���m�"���;fy�:�h�!�H�I��������[M�*��aE�O9�Z��HhV��Y](���S9�L��O��f��.�RG��t�tB=��C��� �<Ѻe�S:����nt� �	����B|�Fk����'S���d��T�����q=b�_�@;�)� ���2����i/[��I����>�e��I�Y.��7u��8v����(N۳�3�kC �y�Sq�T�����>��P�s>�ac~��mڲ��l�MǐS���ŗ�.dp��;Y!ψ��}e�kU*]�t�1u�y�.�\���tx2P��t[�(⃴)���z�4��Fnr&؍����ްH'�5r�w�m����r{`J��x�f["Ј�4���чa���ͭ�ݱ6,Xp��!r1���8�u�y���#E�a!�����?�v6��Q�Ѐ�H��=��u��F袟�~	����r���bu�g���q�x˕H�z��2w5�-�]��;15n3�˧���̾�\� /43��z�t�8��@��ȁ�1������+u��H�q-;���1���s)�v�x��a��}�N�S�Π��-n�ĮZ�GHK��)\K���7�.*~�{��F�t�P�[x��"@n+��Ce����J٩��VW��}��Nvo��i�ݕw����.6W�8�E󭝾j~7�g������sE��|�$����.�zѺ��`��qZ/������d]�NULsq��6�j ֧�}�3�S�9(\˽$�bb#��;�/tSu��o{�퍲�J�M�K{��z�����
�P�g�0Rǝ}�Ky�ic>��X^l-B��3<f}x���?9���'ֱj�����s^3��NQ�)� U��HS ��m�3^�`gz]}s}�@����JR������R���������.U�o�=��V CX����)�ϕG�;W���RD+���$��$�����;�@��
\p!��g(�"��Lq�z��]DSP�s�ީ ���"�xB��pW��}�T����k���g��i����D�����aP~S���|��Ī���[�������5�9��SBz���,�u��Q4��0���=5}�>p�\g��{=�>z� rϳ�T�0+��"�@�R�Ԕ���tm��%Z*�Om����<�m	�!�l�Y��?x���?«����e�37;��Zc���5/���n��cG5�~^}r�'��C�n� F��b����I��i���E�G�W�~����_��h	h���MF�N|�v*��C#ʊ��������B?�_������߸��lG�`ϱ�����E`�h�ψ��vq���GU"�u���>ưN�"'�p����w�;< �|#�T�LGZ?T���O���h%<�x"�T�����dG�(�n[����x�a��a1Y�O�Z9~����1f� y-�{q?��K���*�>��vSC�b��ܤG��{�?������Z?����S�@��%���򜛮�"�������m�����\Hڟ��~l���g��3��*�A�N�C.�zKY��(����梠_j/�p9:�ݕ��ol�͛~����0���A_���sۖ�h����ݫ�{�7��o�rp]_�v�tܯ�~�e���W͞��i"m��O�V�[6xS���
C�p�l9��b��yO�.zx�}x�P$2v�(�Z�KcBw�*#�����\�b2>���fUO�+>џ��˟�&��F|��~q��~��jvU����T��?k&jcl�%�6S�8Bd���{�O��)�)mލ��~��Jo�镦e/M�:�f���:���@q4j�6��Ni�s7P%?���T������~���a������ʂ����JO��Ɏ�;R�g������M�B�o�+�񉃘�����l��Է]�[/�������f�m�S��].ўe�U~g�8'|�4�R�-����H/���&x1�#c�BW R��y2C9�|.�2�p�ĢXDl���Gk^��<v�g�V����I�6羽P�z��$I��-��'���GPQ���ؕ��O��=�8����.O��r�����e0�{�,@��kjb�羱_�]<��h��bc�E����^���H�{�Մ���ɯv_eK}�>�������t;�xT���Ctϊ�_��=q�3��*5�3OY,�Γqf�OuH�5����Ot$�v����YS�5�覮��_�����ƖC��k9f�̀���=����~	�ofuw��͝\�3�^S�n�"��F/z�S�&S���x��{n<���I���q�d�)��k&�������k�V�6:��>)^��~4A�mh�O�7LO��]I�}��˦�3��?��?e���3�߈_�xmO�Z��~C_����g����_��J�K�!�P�ae�ߒH�UG�����C�u����~���ھ��n��1u,'!�a�HY���T��k�mK��������c�4q:g���5Nh
�=�{D�?�ixuQcP1\�c���������	L�Kh5K@Yo=z��#:���7���>BY�z{ڧ�<��DE�G����>���g�j��?��ġ�#Fux4��~'�U;7���Ħ�Ȕ�ˢ�.�GF�1L)7��H����O"�-��������x���#���$w�T?�Ř����F�y��g����W�}�N��08u%5͙N��sjGL2	�~�T�� w��1��v5��L�ğ���C*�wbnk�~Uҳ���u3�\",e]ډW��A�AQ��:��˄��a������嬐|�,�'��e���0����'@��3�	�_Z��= $���/�l@�L���~���N��������~�㹶+�l$9�[���G%.p��{�ߝ��x�絑�;��TXR�I� �=��w��_���-qz��9�
���1P���?@�ϣ)��b{<*J��泝��w�6���"�ǚ���ߨy�c�D��5>�E�4��7ɠ,�+˄�y�=O�9��p;����'*��n����_'�a1yMΥ��yr�l�|+��@]��N^�����S�l,��Ծ�����N�/�ɽ)�2���T�Kt��*�)u��L�tY���}S2�f%,�gfw��-jwZZ�W�����١��P�Ygr���Yw��ʨ�zoo�y���^��\�c�|��r��v���7q�����;��A���+��NZ��9��*���������w�M
�bHV���M5�$�;[K�5x/��ڒ���t��^>�l�yyx{.S���Q�0��w&��3�:�ր�l._�w�kT΀��j��泟6ğ��q�=�Jv�%#rs�� ���
}|���p�w�Q`�^E_.���#�*��]S�H;��ע�|�ޠ��1,2>[o�ޚ��z��/G;#,�n�K�;]���-��=�[��3ݸU�^���3�;�_es����r|�i�ZZz�@��}����I�I� ��t��E���Ϭ�LT�1��o��La�'�����vw�x\��L�����˩}3�KX����F��6kH|�����,�� ��,�(N��wUS>� jg��^S�����������Zq��������+���j:�}C�d��1���+�_��i�<���5׼���X�j#�+��?�(_��I�]ӭ@W�������岘��?�K���?��z�y��?�M����۴�2���ϷrO��#��y�������i��V͠*KZ����q��o�����1��z�_��92�¯T�����zU_��u�o��'�Iz�<���88����B��U�����~R�ו^����?�k�3����}����3����z��ϷͦXsIj�����W{�	ߥ6�ʖ�������S��O�	Ɵ�x��fɓ�1����'3�ڂ�����n_����[�kj:�⴯�{2�%[�z�k,�<�v�3�������{����:t���I��+ۻ�NߣQ�	yi�=//3�dP��4(am�T|n��KWvY�R���=���-%e?����4E�w��3�i8�Bl���\�L p�PRe|��?�����絛�U�ͫ�K��s/��I����TNY����������5���O����C�c�uZ��=���sbF��!�_|��wXJ�ג���F���z�V�\�k�^�E_E[Z��rY՟��c�bi�S���O����S�~>?h�WVS���g��։��9���]��D��Y���[�ͤ�kѺ����ui�G���}ۑ����z+��6�H�N��+���� �i@uSnlL��u�X/A��x}�G��3P��u��~*=���_���~߇�i�U{�ͫ�?��.��ڟ�;��3��TIX��j^s����Wߕ�4�+�n��B�PaO��<�}aM��fR�s���~��Fz���յ�۫�%:�����\�C���@�2V/m'��Zy�L�����z�~=��QRYD�����z��x���1|����5`]A�cb:v�s��9�V�}����2��Nc[Ѕ������D��P�q��%=4��5�O��'2�џ����)g9m��-���{��1���&�6�Q�TxX��~m�R�O�+�}eU�^�������Y~J�ġښH��.���|6���H�ˬ�o��͓��1�����'f��s��6U�'8��������7� k�gᱛ�F�p���`�|2VV�oY��{d���-\��l�i�3�x�{h�HZmQm����v��_MWc1Gn����@`	��龠�+Ps��l�|UlT:�~���3���Y{U��3������GW��_y�w��f(���DY�t���3��~���:��vu� V��%RɮD���B�O�"jU6b��Knϓ��)�����b^��ֻ�;d���v�*�_���O��9�خ�_q�ҟ��4��A�?��pv4/墇�x����V�^�����4�*Sg<���<��:dV��+��>J7������1�δߍ�?��@���z�Z��)&�ǋ�)�j�g� P������hڟzl^�f���)��L��sN�)k')O'Iu�)[��N|�����'j�B���?|��)�[����O�h'��G�C��;_v/}7��bP�o0����x�&�>tV��ă �XU�NSx_|����o_y_�X�r,d��fs,�����ٯ�k~���n��GOu�J�<���n�Ne�f/����{�֣T�V�{�}��s��/zy/����~~�
�������
�b��ڏ��uRv�qu�_���3?�{p���]}���ȟr�=n������t�דּ�
1U�{�M�k?�e�i�n\�����
ȼ/���%⟤y�"�9��^�}��Q�w:�y�� U���E�>�^���� ���m�����ۤk2�r�3	H�-�ޭ�������ﰦb����q��/;i�<�����R,L������f����j-�������5G��C�g�r�%���mz�w�mt�#��9���;�)l��<}Xtܬ+���_k|���p��4�- H#��[[�ۯ��+�:��ξz�B�]8~���S��u�����t��x�5�;=s��v{@���f����s�T1��s;� J�,R����uK�o:����e�3��3�<'<� @ -p҅n�Y $����?r��±�1��m��� r;���MQI��Uf�,lV ���]�OS���wkҝ;��^��ɑ�HD�T��w.�W ��.xρ��)��ؗ$�K�tj������/�{��2��o��j���OE�Ar�]qol0+�R��"�g�O:3�V�r�㼭pZ0�yk�>0���	�lj�g�O�3�T�g����lc���K���{�dK"���տuw�4�/�����^����ﳄG�o��y���1[TL��sƥ���J��Ƴ~�⪗�����$�~�n���h��� xE�Ye��tn���S%�:ϛ�>��.�Y��y�k�������W�KHi��wnޜ��%�ڦ��;_�
k�3�Zf5�'�/�����	u?�ϩK�󮹪е���n��UZ>��?���t\�z�5�%&V#���Z��5��y�g�*��Zr�de?�yNJ~�+�!# X��z�	�D��S��V��r���;��Ƅ�����~����е��R:WM�������D=�,-R���׺;z뿞U�.ݞY��5�<�}�g�b�؇c�����+�̼�,.j�|���_�z�J�u�O��8.�a��הX;��J6IH��n�g�e�[x��򋷝Sؕ�����j|8���_�u5M� ��✋��Y:�h�K>Q=Zx��nN*�ٟ��lh ��x���4cep��B)�e����;R?p��n���5:�-���@j|�}P�Ɣv򊐩R���e������o�P���6���d��]�ͩ��=~<����e�L��y��C��퉋E8��"�:��-M#^}}&xڒl1O����
[��Rʹi�)��03͎綫�Y�\���9���mX�/n�i>g�4�/?�)�Xh6/$������H�(W�w	�«�l��n;_PG�_QȬ/���މgn0�C�@O�A,K�S`
�żrBH�p)��u�a�l��������E}O���3�ȯ��|�c8�#K!�	H?s�����2�'��t����\���� ��Vש�q?Ms�#���a��j��
�H,��Q�&��}]�W4��?5&�_Y\�Z��ӄT�Ļ�J��ց?LYT՗-�?�VZ��|5�L�	Н����{����3*�,O2�g��9��۶��%�6>�������<.�:Pϝ1���s�ی�]�>ˠ;�ݓ�͂����¦aZ�Ǡ�p�3Q퐎�T���J�gH��X�O����;?S��뮗K��r�U]��؇�A窙�D��~~˜��ݔ�k{J��O$#Y7�?�.cMt���C�2�>�k��	@�퓽s��rf�{���N���o�x�v��m�5lj�r�O��C>,�OW�ꊙ礐>����Ӎ�U��_�k���K�$�b!N��U�K�Cl�BO:�ݑ�Ғ�mk4��p�!�O���|}��O�TO̸[zݽ�񢜴�{�ү�%Y���=�W��H� �����Q���"�Z���L�&�{7��\��n���k>�sD表���)���HG#���b��>�ku��S�z��}u���e.g�����W"l�e�N�h}���������҉L��Z�����wWRv��cO����X,���f�\��)
++,�Lx͈��A��J��Tp���7;�o'�5�G�����<wf��hU+:Oc��k�R��'�!Q�p���I]�IILDh�ZT46D����`ϳ�@��I���9�~J�<u��
�ohr���\HC6W+5�]�:�>�b)TDZ�<�d&wec���jXr�n@FG?�RXR.gq��t�Ha^����g̓���GCȩ�B�6 ��o�q�<��B�j��F���]m��(�,ev��%�fr��QmP�X��*�&�����;Y��h[w͞��+Y+z��}���#,Dɩ��I�>*�/_92g��CC�����@DB�b �CH��J�[�k���f^&Ҕ�uJCRe�m�u>#�;�h�;ܝعC�XC)\����5�<��.�Rp�o�����'A%���{2�Pt�s2�Bt��t�i&��S�4�_n%��l���%�DV+e�&��l�fw�$�n�be� R�4����˺w0�O�+�U�Й3�S��&zz�*|��f�]�ж7�ڲ�jB�U*:K�R�B)D�"."H�e"��S�i��dϯt0��&��D|���p���8u��V�Gg���$�j����y|RuJ���^�D
��7��+*}�{��Ev%��F�[E��il-�։C����f�W�굠Q�n�.1�\��
��JN���{:�?u>Љd�"�ǐ.�tw8fȉ��>$*��[���Z%�e�9��v��A�+�e���<)�l�cل�&ex=B�l���;��DlTX�I,�8Ԋ��� %�M�"֭}�gV�K��ˡS��j��J�T��i��MB�Z�`�v ����B{Tה+�4��+��Y�<�	?�R�3�aqD�R�����
|�D v��pW��S��J�w��$֙F�Vh��.�w�)�T�a�/%L�������_G^u]�B�
���T��Y@�'���9Nxg�5�\�Fr�.7B�,gل�KM��_x4b���~��xQ���w'zVǋ�_MvP�Q~N��[
��b�+qZpU+�I��U،��*�=����O*wr[��N�K�?�)h�_7��@���Vs��(��f�����XM�4��a�fmK5����=���?%!̌�ړ֞V�u4���^����J3��u��w����c�
f��h��`}��j��Q����+q*�Q	�o�� "��%|��豘r�gӒ����c���\�V�I|�D�T ��U�8n�� ��������v�=�a�L�U��,_H�Z^X�RL�
���\�@	#53Ԯ�7��]��@�"��k�v�w��<�L_�+��l�-�+؟�pr4�sנ��W�lI(�
����D��vI07U3����)��oa{��#�{�^�=��� GO�R��3nI�.S���M�bXd�}��/ �N5��Z7�	G�Ȍn�+U��s�Bw�q��rS `��JQ��\�؍"/=S��UmF#?r�R��y;�W"�ϵ��UD�%�+]8:�I�
d�AқL��$�;�M�4mn�.� ���m�Q����J����bu�q��f� XFӲ>��њ/8�$ܗ�_��`��*]�6g���
ٟ^���]+�ͅe]���R�h-Ej�9�"�\�f�j�VJ9đ�kb�H1�2�6-
�v̻�&|�X�&礦�� R���fg���F~�2��Qz>09��Y�-���FW{�C��p%��ܳ�bO�����峲��_��ht���-�1(a!���
��>ɻX��5�@1^������;�X�a3d�6g�
1��׆�}KrC���y\˷˽b��nHH���0⁧���.�V�K	5�� �e�?[$�S�2�{m�59������O�B��L.S����ǐ���d*T�c�Ve�Kd�%k"��R�jy�,�R��h�:ޱ����v�:J�)F�*3=g�C'Ѽ��)�@Oָ���0��X�vH��0�&�
���zp�O�7ʔ�,3��1�kT��x�J�$�*��}��c]��v41v+������4k*��f�TD�S��Gd��� qux�l�z�K��<��ݮM$fR�����~ʂ�]��M�$\���Q/ʻ[�t��������gUM��nw���\��i�,mqQ��Ǝ��T	&_E S�F��xI�E>�v�xτ2I�(s���Pz7n1kn����)�7 �ŀ[��\��KU>B��ÐivYVYw�����Lg���ŋ���D����$������ �nB�!F��k=F�Vw@a=h�
�h���[J�=�@C�)x�N�o7�Fw��:��*j� ��<1��(EK(�����KdZ�zh���"�r>gҘd��!����S�?<q϶�Qw�{���cC�ՄYA�EJtYR��PX��[�\*5N���ڑ��4mf�y�g���>9���Sϒ��9���ؐ6M��Ku�9��֛S/6�;����u�l��m]�� �^a�\��&��)��F�@ʻ_B>�]�`,:�A�"BK�J�+���F�(��*���(ڝ��}jݙ����{^ȭ�nm3��\έK��G��j'#��'�(n{è Atr����|聼�mj�P���H֍�5�	�*~�2 R۔`��	�8��#�,�ev�%ښ^U��W��m���Z@C���Nc��q_D8T�<�`U��tx���QЂ��������_��6�ン)�]�>��4Oz� 3��}�+�!{���,S�����XQ߂M�HΓ�V�O�)D����aq ��M5q�2dU�M��Ig����)����[�Od���Y׭/�n{�Ƞ�69�0%������YqN>���P�1O�@&���N��$W�mMĩ����un���&^�䕓���ĺ;> �Q^IZǵ�������k���%g3〄�f������,����~Sj���k4�s�o@Fκ�Z�3�m��O>��e��m��%Xf����xM�,@\�eh?��֩vxz��v�u�UN����KM�U�O��t��%��*�;���]	�O]=�V;�HC��ץ�$�$W�8��1�SQ�أ�c\a��|0;5���_?j.�m��Y�Z�ǿ�|S�"�������@��TCb,��%��� O6(� Y:r�O���Jǀ!(�T���,J�d���X�43vT�f�T��>���U$�����O΀, 3�W�S��E��C���zK�cu���<�$-4�����p	B�SO��}z��4��Z"ǆ��:��S��t����ho�� �jY�!�E05����B�`�^�{����pu��6l�%Q��0FM(f��������Q(S��r?�>�v^Bg���=I_'!NT\�zZZ������:���+�ちSw�����0�	SS�RE���CT_��$2���=���Xo�~�y�*"�ݛ�h���*��߿t������P��>_�_��R�Jf�8�����nF�'oK.7�gP��W�����%|���3�t�	��df}Tv���Y��7!B��hA��*%ݡ�/�L��.��Y�c�#Ʉ�O"%*)4Lw�鳦��[�����v"I$�_z�m�ݟ�ζT`�dՋ�
at���p ��8��k�~l$_��iniv���~��

)�6�����#�pC���x�N<�� P}���U��8��������&d��W\��3ْ%8��O9o=��J�|�$�%`ùKt������0ޏ?���i��7	%�Ύ���=����TpG��e�罕�A���g=X*^��?���/����aҹF��|C1_�@?ѳߥ�l�ȼ����"y39!���Q{@	쿝�r�J�d+}�ګᅼϬ+�=�N�/0 � � "r�٦��?{�J�3�?�7���j���LW��/�& �,�8f��ɖ��w�#��ͩ��p�I��5ANB�ZjH�4�6��q�?�����C�/A3�<�6t�Kٶb��.�8���.�
�ѵN<�F=�S]����&�Ne�Z2�g�>�"��---��ְy�R%"�/����`<^��x�8�i�c�K��9x��\���\�aT�n��\Wls߶亀ʚP���(���ӼU�˝(A��?']�'�j{;b�W>u�f�U�C� x�
j鈅��9M����8�E6��*�����|D�o��(��,��zVZFN���{zg<|3|#�b	�U�ڔ�	���b̟.��䝋�K<�����5�r�!�(�/�yӁ����]`���M�g�ڰ�D�yu�����m�9�P�)J�V��� 僑�����a3rU�N��*�������l4�' ���l�<��6J�~��s�)}k��
Ir�	'�WW/:AJ��PUx�]r
� �`е��%q���u ^X��W��ϕ�=�9�@�eo�-�����i�;

JE�d��֫�J�)|�O^������|��Ń�4lu����,�'�VK�tb��}���>
P��<;��c���mG3V�������1������M�*�hF���C�����j�eAVO*�t���9�6<+���{�0Bt��)�����*ޙ�NL��+�oJ'���[-��aK��K(@O�f"L!��ƀA.0�.R%�~��n8>�f�"��c]*�t��C�P�M����8E�L@��S	k�\�֒S4�t��4gY(��[h��L�<r��M�ζ��Nr�N-���dm�^�80��hH�"SY�ŧPU��qw����_[
�=BqqJ�xc_.'��Kg��9iǔ�ZH��N�
JWH�o#����	I��CD��y�6[�|�Ѓqr~�wQW�g 	P14�GW�%��ǩ��N8^���;wE�X���QT�M�C�肚��_Y(JmઘЁo�P9Zf�$Z���`UA���->�h�
��S����X���o��j�x/���6E\:�z5:�< |�D�鮜�M?a�Fú���y����4���V����@)�,N|��1��8�,�^: +H��ʿ!�J�@ߒ��?*��U
S��Q���
�o誰��q)�y���`k�7��a��q�Ego.���q�*�cQ�G:#8~q]������=�W�t"�?QX�la"i�ȮEG^��{��.���L���4�o�}�$��ز�����C�x��������5z�y�MN�b�>;Ր��#���1��ZzbR��f8�����W�׎�n�f="�����o�p(g�q�	g#�.Cj��|��0���S���dA`'�"Vc��I�0��Oa�֫[����m��m�A���։x��j!�X��*�������G��z��⮔��`B�*�-��NO{��U�d5l]]�:�rd�Ofr�Dq�sO@Ѝ�|h������tO�e{����_�H��*�� ��������\�;�!�[Fz~�R5>C�]LYYDtN���9�~'��3��3�/�&�����-��(����P<�y?�������*�OOP�����VTv�n[�������w윯t���~�ﳧ���\��kx=F�g����c�4�rƿfd]v���~�X�5}W���ʨ��T"�}\)������W��;������^
,ݒB����z��8 �����mT���2�yN�����c�
s�DȅZ������M����
+��-S\n@q��Lļ���HD�D���s�X�Cni�Z;K
���h����[�}d<�����ԕdV�П�4��K-=ޯ�z��\?�.�Ӥ�~p�[��������,��z�ܑt�y6��_�o��~� z���~��f��hN��x�v�k��Bv�F�'A�Us��B{�����,����!0W�� 4�C���aS�V+r�;/93���Շ}�4��_��7��8��yV������^��U�+FoIOϺ�T��f�%&��U�g�2��Lw�ܔ-�K������_-"��� �^�ߓ���xߵ����k�f*�b�ky��W~ȸ?��r5]c�i���Z���KkS��[�Yajݬ�䟗��G�b%��Du����X9a��n�z��B��_�B���°r�B��ϥ%M*�7 �m�IFO�A?a�~�)�GT��z�5���QyI�[ef���~B���N[�-�����.�^o�nG�=�wN>�Z_�U�z������kҖ(V�Yu��rB-�J���@����`���
��ꔑ>�8"=����#��9�Ddu~��#��L6؎�8���Q�o�����)_!^����=#t*���	.I}	�������u,'3��_�+>����n6�L<�=k��y�aM[�E��?�`ba;4�U\�"o��F����>�1P;1�(<����ҹI԰z/���Y�lj�/���_�q�S���E�@����Ȩ�)n�\M �/f�mk�*w�F�w��jqm$�[@\ .�_��&��-�����>��GtH��$+2�p9ܫ81�D�0*�h�U�?K��4��?�NC�yk��i�9�:���ۇ����a��>IO�-��~�ޙD,�(����'[�2F*%��;K��&��L̈߁��!ٸ�`d�gC�ￎK���Δ�=	����F�>HG`A����h(.�����H��,Ʌ�G�~L��rՅ��5[o
y��>��~��#����y����*�ǔ�g}���ek��}i�znC=�w�?nCBy��LN҆�>���igb��LF �3��]��1��!���=:�`�:����<F�/Dk�d>k���7,���>G���w�"T���J;��$`zt����ު�5�&�̂���(,P��MW�E��:��W3��� ��?6̿��`7����jFP�S�c�<��6|��i!�
=���:���Ϭb�+�P(�@_��~f��qK2��g�#����:��t�_8�8=����[)���M����̷���Q�e&GYL���ґ_z��0C����?�N����D;�efp�`o�w���o�l�?�NMF�ss�_V����A6��X}>��r���ժ�E�g�׊~��[U�ð���E{�� � ���T	��hZ �G��ג�h6�v�%(�i��JtWô�|#�͕��ބ�~Dfd�Q���#��k�4w�JR����g�td[�`8����Ȳ7�eҕ�8�H�=��K�w�^�;�����ǙO1�ztTqYe�6�*ok�o��Q�2]�����j����fn��%eM�urt?u8�VY�gv,�,޼$�����	��P���tn���~�w����iU��^�ؿ���~��pH��Gh�K~9�_����v7����-�@x�}�1��{R_�Z���@f|/�	�B�6���\��d�?��\*�g��ϐ�~\���yu�߾ǟ(� �X <}�N����!�=?-�ՠ��n�Mi����}�q�^Vg�y��B	m�SG�����r_���1����6����>I���<1� zuo���(DqJ��gc��_;\ ea��?,F[�8�m;��a��FU;����<)t���� ���M;� U"݆�w�l����V+k��4�vjɫ�MrzY7��=���!�[�Jx�T>%W�/\��L�#�Jv�wo0�/�i��,1�>f�eB0/"Rܝ��
u��7�`�͸A�{q/�?���PX/ox`��%I0�j�y�<���J���ye��]�fp��f����{�`�Z[� G��ތ��)� ��XL�|��5a��r��s��:������+��;*����]EcZT�D�5Bg�k�]�=�P��n�?s�&�� '��U#G��9��Ni͇G0%H�]ijr���T����/";Az�l��+l<�@�����b���ȓ�0�*<<Fs���j
�7��~oC�L?B��}X�=>\�2�;K��1uݻĺ��b�ӳ���:{�,��O ���mo���j�0�|^�������1��fm��@�}�cɞ��5$|�ڞGy�.�v}߃����n��ix�(��~�v���황�G�b�0E6ǃ�X]��L@�׬�F!�l]�����8B^F{ W5lg�������s�e�A�L��m p�1�u	;~���lb���>a��H���L�;}9ξ����O�b�"�u�g�=�<ӚsϠdUs>���ğM�������������Ђv���YS>R����oɛ��b���Ow�����ɼ A������i��Ӊ��%#��65�W��)4sd|%���z:�Oݎ�8�Q�J�8(�_u�p���~tl�����2����B'c�}@��,�;��-6
�;H� �� P P P K�	�����*�*�*�'�*��
��
��
��
�:�*�*�*�΀�
��
��
��
�:�*�*�*�΀�
��
��
��s�*�*�*�*�΀�
��
��
��s�*�*�*�*��
��
��
��
��s�*�*�*�*��
��
��
��
�:�*�*�*�*��
��
��
��
�:�*�*�*�΀�
��
��
��
�:�*�*�*�΀�
��
��
�����@@@@4 ,��PPP���*�*�*�΀�
��
��
��
�:�*�*�*�΀�
��
��
��s�*�*�*�*�΀�
��
��
��s�*�*�*�*��
��
��
��
��s�*�*�*�*��
��
��
��
�:�*�*�*�*��
��
��
��
�<�,�,�,�� � � � �7<�,�,�,�� � � � �s�,�,�,�,��@:���`.�uŀ��������I� M>G����,��R���`\�C�t�@��/V�X��R���:��������U��[�r���[�������X?���u|.8?���>���A��Y�z\��y��~����u��~Dct!������`�C������`���?a��wm�� �:z������ݿ�5�+ 5�����X���S��<�,�*<�^``Ux�X�YU�`eW�X�X�^``Ux�X�YU�`eW�X�X�^``Ux�X�YU�`eW�X�X�^``Ux�X�YU�`eW�X�X�^``Ux�X�YU�`eW�X�X�^``Ux�X�YU�`eW�X�X�^``Ux�X�YU�`eW�X�X�^``Ux�X�YU�`eW�X�X�^``Ux�X�YU�`eW�X�X�^``Ux�X�YU�`eW�X�X�^``Ux�X�YU�`eW�X�X�^``Ux�X�YU�`eW�X�X�^``Ux�X�YU�`eW�X�X�^``Ux�X�YU�`uW�\�\�_ppU|�\�]U�puW�\�\�_ppU|�\�]U�puW�\�\�_ppU|�\�]U�puW�\�\�_ppU|�\�]U�puW�\�\�_ppU|�\�]U�puW�\�\�_ppU|�\�]U�puW�\�\�_ppU|�\�]U�puW�\�\�_ppU|�\�]U�puW�\�\�_ppU|�\�]U�puW�\�\�_ppU|�\�]U�puW�\�\�_ppU|�\�V��   