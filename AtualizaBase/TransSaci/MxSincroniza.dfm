�
 TFMXSINCRONIZA 0�  TPF0TfmxSincronizafmxSincronizaLeft�Top� Width�Height�BorderIcons CaptionSincronizar TabelasColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterOnCreate
FormCreateOnShowFormShowPixelsPerInch`
TextHeight TListBox
lsbTabelasLeft Top Width|Height�AlignalClientFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style 
ItemHeight
ParentFontTabOrder   TTable	tblOrigemDatabaseNameorigemFiltered	Left� Top  TTable
tblDestinoDatabaseNamedestinoLeftKTop?  
TBatchMove
BatchMove1AbortOnKeyViolAbortOnProblemDestination
tblDestinoModebatCopySource	tblOrigemLeftjTop?  TQueryqryDestino1DatabaseNamedestinoLeft,Topk  	TDatabase	Database1DatabaseNameorigemLoginPromptParams.StringsUSER NAME=sysdbaPASSWORD=S2F1303 SessionNameDefaultLeftKTop  	TDatabase	Database2DatabaseNamedestinoLoginPromptParams.StringsUSER NAME=sysdbaPASSWORD=S2F1303 SessionNameDefaultLeftjTop  TTimerTimer1EnabledOnTimerTimer1TimerLeftKTopk  TQueryQueryOrigemDatabaseNameorigemLeft� Topk  TQueryqryDestino2DatabaseNamedestinoLeft� Top?  TQueryQueryOrigem2DatabaseNameorigemLeft� Top�   	TDatabaseDatabaseSACI	AliasNameSACIDatabaseNamedbGuerraKeepConnectionLoginPromptParams.StringsUSER NAME=SYSDBAPASSWORD=S2F1303 SessionNameDefaultLeft,Top�   TConfiguracaoConfiguracao1DatabaseNamedbGuerraSQL.StringsSELECT * FROM CONFIGURACAO AliquotaISS       �@CPDCaixaCentroDeCusto	CodUltRec 	CodigoCAX	CodigoCNF CodigoCliAVista CodigoImpFiscal ContFactoring 
ContPagFor 
ContPagTrn 
ContPagVen 
ContRecCli ContRecCliAnt ContRecServico ContTransfere ContaAbreCaixa ContaFechaCaixa ContaVerificaCaixa ControleTransacaoDaruma Deposito DiasLibVendaInadiplente Dias_Reserv DiretoImpFiscalEmpresa	EnviarSPC EstoqueDetalhadoEstoqueIdealNFEExportarGerarlogGrupoRepasse IgnorarChequesIgnorarDepositos	ImpCheque 	ImpFiscal 	Interbase�ItemAutomatico Laboratorio LeitoraCheque LimiteMediaVenda LocalCPD�MagazineMaquinaMaxItensNotaMaxLinhasImpA
MelhorData Montagem 	Orcamento PastaImagensC:\SACI\ImagensPastaSistemaC:\SACI	PastaSonsC:\SACI\Sons	PopupMenu PrdReferenciaUnicaQNT_DIAS_DEV QuantDiasSemCobran QuantDiasSemJuros QueryComandosQR_ComandosQueryConsultasQR_ConsultaSqlInterbase TempoOcioso TipoCobranca TipoDocumento VerificaEstoque 
VersaoBase VersaoIncluirOper LeftKTop�   TQueryQR_ConsultaDatabaseNamedbGuerraLeftjTop�   TQueryQR_ComandosDatabaseNamedbGuerraLeft� Top�   
TParametro
Parametro1DatabaseNamedbGuerraSQL.StringsSELECT PAR_CODIGOFROM PARAMETROWHERE TPR_CODIGO=80 AND PAR_DESCRICAO=:PAR_DESCRICAO CConfiguracaoConfiguracao1	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina	CodigoPAR 	CodigoTPR 
Informacao Situacao LeftjTopk	ParamDataDataTypeftStringNamePAR_DESCRICAO	ParamType	ptUnknown    	TMensagem	Mensagem1DatabaseNamedbGuerraSQL.StringsSELECT * FROM MENSAGEMWHERE MSG_CODIGO=-1 CConfiguracaoConfiguracao1	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaAlertadoApagadaAvisarLeitura	CodigoMSG 
DestinoCNC 
DestinoUSU PublicaSituacaoEnviar SituacaoReceber UrgenteLeft� Topk  TIdAntiFreezeIdAntiFreeze1Left,Top?  TIdFTPIdFTP1OnStatusIdFTP1Status	AutoLogin	ProxySettings.ProxyTypefpcmNoneProxySettings.Port Left,Top   