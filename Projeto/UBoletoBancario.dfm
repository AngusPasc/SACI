�
 TRPT_BOLETOBANCARIO 0�  TPF0Trpt_BoletoBancariorpt_BoletoBancarioLeft1Top� WidthHeightoCaptionrpt_BoletoBancarioColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	OnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight 	TSZReportreportLeft Top WidthnHeightColumnsColumnSpace DataSetTitulo_receber1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Margins.LeftMargins.TopMargins.Right Margins.Bottom Options.CopiesOptions.DestinationzrdLPT1Options.Escapes.BoldOnEGOptions.Escapes.BoldOffFHOptions.Escapes.ItalicsOn4Options.Escapes.ItalicsOff5Options.Escapes.UnderlineOn-1Options.Escapes.UnderlineOff-0Options.Escapes.SuperScriptOnSOptions.Escapes.SuperScriptOffTOptions.Escapes.SubScriptOnS Options.Escapes.SubScriptOffTOptions.PageLengthOptions.PageWidthnOptions.PaperTypezptSheet TSZRBandZRBand2LeftTopWidthmHeightBeforePrintZRBand2BeforePrintBandTyperbDetailForceNewColumnForceNewPage 
TSZRDBText	ZRDBText9Left TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
CLI_CODIGO  
TSZRDBText
ZRDBText12LeftTopWidth	Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
TRC_NUMERO  
TSZRDBText
ZRDBText13LeftTopWidth
HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldTRC_SEQUENCIA  
TSZRDBText
ZRDBText14Left_Top WidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldTRC_VENCIMENTO  
TSZRDBText	ZRDBText1LeftTopWidth;HeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataFieldCLI_RZ_SOCIAL  	TSZRLabelzrlDataEmissaoLeft TopWidth
HeightAlignToBand	FontStyle WordWrap	CaptionzrlDataEmissao  	TSZRLabel	SZRLabel3Left3TopWidthHeight	AlignmenttaCenterAlignToBand	FontStyle WordWrap	CaptionNAO  	TSZRLabelzrlDataLeft=TopWidth
HeightAlignToBand	FontStyle WordWrap	CaptionzrlData  	TSZRLabel	SZRLabel5LeftTopWidthHeightAlignToBand	FontStyle WordWrap	Caption-  	TSZRLabelzrlLocalPagamentoLeft Top WidthKHeightAlignToBand	FontStyle WordWrap	  
TSZRDBText
SZRDBText3Left'TopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
CLI_BAIRRO  
TSZRDBText
SZRDBText4Left<TopWidthHeightAlignToBand	FontStyle WordWrap	BlankIfZeroDataSetTitulo_receber1	DataField
CLI_CIDADE  	TSZRLabel	SZRLabel6Left TopWidthKHeightAlignToBand	FontStyle WordWrap	Caption.APOS O VENCIMENTO COBRAR JUROS DE 0,27% / DIA.  	TSZRLabel	SZRLabel7Left Top	WidthKHeightAlignToBand	FontStyle WordWrap	Caption,CONSERVE O SEU CREDITO PAGANDO PONTUALMENTE.  	TSZRLabel	SZRLabel8Left Top
WidthKHeightAlignToBand	FontStyle WordWrap	CaptionAATRAZO DE 05 DIAS SEU NOME SERA INCLUIDO AUTOMATICAMENTO NO SCPC.  	TSZRLabelzrlValorTituloLeft_TopWidthHeight	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	CaptionzrlValorTitulo  	TSZRLabel
SZRLabel10LeftTopWidthHeightAlignToBand	FontStyle WordWrap	Caption-  	TSZRLabel
SZRLabel11Left&TopWidthHeightAlignToBand	FontStyle WordWrap	Caption-  	TSZRLabel
SZRLabel12Left;TopWidthHeightAlignToBand	FontStyle WordWrap	Caption-  	TSZRLabel
SZRLabel13Left TopWidthKHeightAlignToBand	FontStyle WordWrap	CaptionTaxa Bancaria R$ 1,50  	TSZRLabel
SZRLabel14LeftATopWidth
Height	AlignmenttaRightJustifyAlignToBand	FontStyle WordWrap	Caption
SZRLabel14  	TSZRLabel
SZRLabel15Left TopWidth&HeightAlignToBand	FontStyle WordWrap	    TTitulo_receberTitulo_receber1DatabaseNameDBguerraFiltered	SQL.Strings:SELECT t1.*,t2.CLI_CODIGO,T2.CLI_RZ_SOCIAL, T2.CLI_CIDADE,?               T2.CLI_ENDERECO,T2.CLI_BAIRRO,T2.CLI_LOGRADOURO FROM     Titulo_a_receber T1,     Cliente T2WHERE$     (T1.CNC_CODIGO=:CNC_CODIGO) AND(     (T1.CLI_CODIGO = T2.CLI_CODIGO) AND'     (T2.CNC_CODIGO=T1.CNC_CLIENTE) AND      (T1.PDV_CODIGO=:PEDCOD) AND     (T1.TRC_SITUACAO=0)ORDER BY     T1.TRC_SEQUENCIA CConfiguracaoDM.Configuracao1	CNCOrigem CentroDeCusto	CodigoCNC 	CodigoUSU Mafalda Maquina	ChequeCNC ChequeDevolvido
ClienteCNC 	CodigoAGF 	CodigoBOL 	CodigoCCX CodigoCCXRecebimento 	CodigoCHQ 	CodigoCLI 	CodigoCPC 	CodigoFPE 	CodigoFUN 	CodigoMCC 	CodigoPDV 	CodigoTRC 	CodigoTRF FaturamentoCNC GerouMovimentoMovimentoContaCorrenteCNC PagamentoParcialProcesso 
Reabertura Situacao Tipo TipoPag 
TipoPedido 	TituloANT 	TituloORI 
Verificado VisitadoLeftSTop� 	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown DataType	ftIntegerNamePEDCOD	ParamType	ptUnknown    TQueryQuery1DatabaseNameDBguerraSQL.StringsSELECT * FROM CATRACAWHERE CNC_CODIGO=:CNC_CODIGO Left� Top� 	ParamDataDataType	ftIntegerName
CNC_CODIGO	ParamType	ptUnknown     