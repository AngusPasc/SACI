�
 TRPT_BOLETOBANCARIOLBM 0�  TPF0Trpt_BoletoBancarioLBMrpt_BoletoBancarioLBMLeft	Top� WidthHeight�Captionrpt_BoletoBancarioLBMColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeft Top WidthnHeightColumnsColumnSpace DataSetTitulo_receber1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.Left Margins.Top Margins.Right Margins.Bottom Options.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOn0Options.Escapes.BoldOffFHOptions.Escapes.ItalicsOn2Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthOptions.PageWidthnOptions.PaperTypezptSheet TSZRBand
zrlDetalheLeft Top WidthnHeightBeforePrintzrlDetalheBeforePrintBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText	ZRDBText9Left TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
CLI_CODIGO  
TSZRDBText
ZRDBText12LeftTopWidth	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
TRC_NUMERO  
TSZRDBText
ZRDBText13LeftTopWidth
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldTRC_SEQUENCIA  
TSZRDBText
ZRDBText14Left_Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldTRC_VENCIMENTO  
TSZRDBText	ZRDBText1LeftTopWidth2HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldCLI_RZ_SOCIAL  	TSZRLabelzrlEmissaoVendaLeft TopWidth
HeightAlignToBand	FontStyle WordWrap	CaptionzrlEmissaoVenda  	TSZRLabel	SZRLabel3Left'TopWidthHeight	AlignmenttaCenterAlignToBand	FontStyle WordWrap	CaptionOU  	TSZRLabel	SZRLabel5LeftTopWidthHeightAlignToBand	FontStyle WordWrap	Caption-  	TSZRLabelzrlLocalPagamentoLeftTop WidthKHeightAlignToBand	FontStyle WordWrap	  	TSZRLabel	SZRLabel6Left TopWidthKHeightAlignToBand	FontStyle WordWrap	Caption-- O pagamento no vencimento evita cobranca de  	TSZRLabel	SZRLabel7LeftTopWidthIHeightAlignToBand	FontStyle WordWrap	Caption(encargos e o envio do titulo a Cartorio.  	TSZRLabel	SZRLabel8Left TopWidthKHeightAlignToBand	FontStyle WordWrap	Caption3- O pagamento do principal do titulo nao implica na  	TSZRLabelzrlValorDocLeft_TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionzrlValorDoc  	TSZRLabel
SZRLabel10LeftTopWidthHeightAlignToBand	FontStyle WordWrap	Caption-  	TSZRLabel
SZRLabel11Left&TopWidthHeightAlignToBand	FontStyle WordWrap	Caption-  	TSZRLabel
SZRLabel12Left;TopWidthHeightAlignToBand	FontStyle WordWrap	Caption-  	TSZRLabel
SZRLabel13LeftTopWidthIHeightAlignToBand	FontStyle WordWrap	Captionquitacao dos encargos.  	TSZRLabel	SZRLabel2Left Top
WidthKHeightAlignToBand	FontStyle WordWrap	Caption-- Enviar para Cartorio apos 05 dias vencidos.  	TSZRLabel
SZRLabel16Left Top	WidthHeightAlignToBand	FontStyle WordWrap	Caption- Com. Permanencia: R$  	TSZRLabelzrlJurosLeftTop	WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	  	TSZRLabel
SZRLabel18Left Top	WidthHeightAlignToBand	FontStyle WordWrap	Captionao dia.  
TSZRDBText
SZRDBText1LeftATopWidth
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
PDV_CODIGO  	TSZRLabel
SZRLabel14Left;TopWidthHeightAlignToBand	FontStyle WordWrap	CaptionPed.:  	TSZRLabelzrlCNPJLeft	TopWidth#HeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlCGFLeft-TopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabel	SZRLabel4LeftKTopWidthHeightAlignToBand	FontStyle WordWrap	Caption/  	TSZRLabel
SZRLabel19LeftQTopWidthHeightAlignToBand	FontStyle WordWrap	CaptionCEP:  	TSZRLabelzrlReduzirAlturaLeft Top WidthHeightAlignToBand	FontStyleesBold WordWrap	Caption.  	TSZRLabelzrlRestaurarAlturaLeftmTopWidthHeight	AlignmenttaCenterAlignToBand	FontStyleesItalic WordWrap	Caption.  	TSZRLabelzrlEnderecoLeft TopWidth&HeightAlignToBand	FontStyle WordWrap	  	TSZRLabel	zrlBairroLeft'TopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabel	zrlCidadeLeft<TopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlUFLeftLTopWidthHeightAlignToBand	FontStyle WordWrap	  	TSZRLabelzrlCEPLeftVTopWidthHeightAlignToBand	FontStyle WordWrap	    TTitulo_receberTitulo_receber1DatabaseNameDBguerraFiltered	SQL.StringsDSELECT t1.*,t2.CLI_CODIGO,T2.CLI_RZ_SOCIAL, T2.CLI_CIDADE,T2.CLI_UF,J               T2.CLI_ENDERECO,T2.CLI_BAIRRO,T2.CLI_LOGRADOURO,T2.CLI_CEP $FROM Titulo_a_receber T1, Cliente T2WHERE (T1.TRC_SITUACAO<>5) AND$     (T1.CNC_CODIGO=:CNC_CODIGO) AND(     (T1.CLI_CODIGO = T2.CLI_CODIGO) AND'     (T2.CNC_CODIGO=T1.CNC_CLIENTE) AND     (T1.PDV_CODIGO=:PEDCOD) ORDER BY T1.TRC_SEQUENCIA CConfiguracaoDM.Configuracao1	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina	ChequeCNC ChequeDevolvido
ClienteCNC 	CodigoAGF 	CodigoBOL 	CodigoCCX CodigoCCXRecebimento 	CodigoCHQ 	CodigoCLI 	CodigoCPC 	CodigoFPE 	CodigoFUN 	CodigoMCC 	CodigoPDV 	CodigoTRC 	CodigoTRF FaturamentoCNC GerouMovimentoMovimentoContaCorrenteCNC PagamentoParcialProcesso 
Reabertura Situacao Tipo TipoPag 
TipoPedido 	TituloANT 	TituloORI 
Verificado VisitadoLeftqTop� 	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerNamePEDCOD	ParamType	ptUnknown    TQueryQuery1DatabaseNameDBguerraSQL.StringsSELECT * FROM CATRACAWHERE CNC_CODIGO=:CNC_CODIGO Left� Top� 	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown    TClienteCliente1DatabaseNameDBguerraSQL.StringsSELECT * FROM CLIENTEWHERE CNC_CODIGO=:CNC_CODIGOAND CLI_CODIGO=:CLI_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaCLIENTECLogradouro CRota Classificacao 	CodigoCLI Convenio ConvenioCNC 
Logradouro MensalNotaOrgao PessoaFisica	QuinzenalSPC Situacao Tipo LeftPTop� 	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
CLI_CODIGO	ParamType	ptUnknown    TInformacoesInformacoes1DatabaseNameDBguerraSQL.Strings$SELECT * FROM INFORMACOES_DE_CREDITOWHERE CNC_CODIGO=:CNC_CODIGOAND CLI_CODIGO=:CLI_CODIGO 	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda MaquinaTabelaINFORMACOES_DE_CREDITOAtrazo BoletoCampoInvalido 	CodigoAVL 	CodigoCLI 	CodigoFPG 	CodigoPRF LiberaInadiplencia
Logradouro ProibidoTempoTrabalho LeftLTop� 	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerName
CLI_CODIGO	ParamType	ptUnknown     