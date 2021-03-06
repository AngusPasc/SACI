unit MxSelTitulos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Buttons, ExtCtrls, DBCtrls, CentroCusto, Db, DBTables,
  SQuery, Vendedor, AgenteFin, Forma_de_Pagamento, Parametro,
  Conta_de_Caixa, Variants, Funcionario, SiacReport_TLB;

type
  TfMxSelTitulos = class(TForm)
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    mskDataINI: TMaskEdit;
    mskDataFIM: TMaskEdit;
    Panel3: TPanel;
    Vendedor1: TVendedor;
    DSVendedor1: TDataSource;
    CentroCusto1: TCentroCusto;
    DSCentroCusto1: TDataSource;
    Parametro1: TParametro;
    DSParametro1: TDataSource;
    Forma_de_Pagamento1: TForma_de_Pagamento;
    DSForma_de_Pagamento1: TDataSource;
    AgenteFin1: TAgenteFin;
    DSAgenteFin1: TDataSource;
    DSConta_de_Caixa1: TDataSource;
    Conta_de_Caixa1: TConta_de_Caixa;
    Parametro2: TParametro;
    DSParametro2: TDataSource;
    GroupBox1: TGroupBox;
    ckbCodigoCLI: TCheckBox;
    edtCodigoCLI: TEdit;
    dblCOdigoCNC: TDBLookupComboBox;
    ckbCodigoPedido: TCheckBox;
    edtCodigoPedido: TEdit;
    ckbTipoPag: TCheckBox;
    dblTipoPag: TDBLookupComboBox;
    ckbCodigoAGF: TCheckBox;
    dblCodigoAGF: TDBLookupComboBox;
    ckbCodigoTitulo: TCheckBox;
    edtCodigoTitulo: TEdit;
    ckbNumero: TCheckBox;
    edtNumero: TEdit;
    ckbCentroDeCusto: TCheckBox;
    ckbCodigoCCX: TCheckBox;
    dblCodigoCCX: TDBLookupComboBox;
    cmbCondicaoCodigoAGF: TComboBox;
    cmbTipoPag: TComboBox;
    dblGrupoCC: TDBLookupComboBox;
    ckbGrupo: TCheckBox;
    ckbCPFCNPJ: TCheckBox;
    edtCPFCNPJ: TEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    cmbOrdem: TComboBox;
    ckbSintetico: TCheckBox;
    ckbAgruparMes: TCheckBox;
    ckbAgruparAGF: TCheckBox;
    ckbEspacoExtra: TCheckBox;
    ckbAgruparDia: TCheckBox;
    ckbSaltarPagina: TCheckBox;
    ckbAgruparGrupo: TCheckBox;
    rdgVencimento: TRadioButton;
    rdgPagamento: TRadioButton;
    rdgEmissaoNota: TRadioButton;
    ckbObservacao: TCheckBox;
    edtObservacao: TEdit;
    ckbCodigoCCXRecebimento: TCheckBox;
    dblCodigoCCXRecebimento: TDBLookupComboBox;
    Conta_de_Caixa2: TConta_de_Caixa;
    DSConta_de_Caixa2: TDataSource;
    Label4: TLabel;
    ckbValorTitulo: TCheckBox;
    cmbValorTitulo: TComboBox;
    edtValorTitulo: TEdit;
    cmbTipoConta: TComboBox;
    rdgCadastro: TRadioButton;
    ckbExibirPedido: TCheckBox;
    ckbAgruparCLI: TCheckBox;
    GroupBox3: TGroupBox;
    ckbDataEnvioBoleto: TCheckBox;
    mskDataEnvio: TMaskEdit;
    ckbDataRecebimentoBoleto: TCheckBox;
    mskDataRecebimento: TMaskEdit;
    ckbMeiaFolha: TCheckBox;
    ckbSomenteVerificado: TCheckBox;
    ckbNaoVerificado: TCheckBox;
    rdgVerificado: TRadioButton;
    ckbNaoPagos: TCheckBox;
    ckbNaoExibirResumo: TCheckBox;
    ckbPagosChequePre: TCheckBox;
    cmbTipoGrupo: TComboBox;
    ckbCodigoCHQ: TCheckBox;
    edtCodigoCHQ: TEdit;
    ckbSuperSintetico: TCheckBox;
    rdgAlterado: TRadioButton;
    GroupBox4: TGroupBox;
    ckbVencimento: TCheckBox;
    mskVencimento: TMaskEdit;
    cmbVencimento: TComboBox;
    ckbLocal: TCheckBox;
    edtLocal: TEdit;
    rdgEntrega: TRadioButton;
    ckbCodigoFPE: TCheckBox;
    edtCodigoFPE: TEdit;
    dblCodigoFUN: TDBLookupComboBox;
    ckbCodigoFUN: TCheckBox;
    DSFuncionario1: TDataSource;
    Funcionario1: TFuncionario;
    ckbConsiderarOrigem: TCheckBox;
    ckbOficial: TCheckBox;
    ckbNaoOficial: TCheckBox;
    ckbPagosCredito: TCheckBox;
    ckbPagosSemCredito: TCheckBox;
    Parametro3: TParametro;
    Parametro4: TParametro;
    DSParametro3: TDataSource;
    DSParametro4: TDataSource;
    dblClassificacao: TDBLookupComboBox;
    ckbClassificacao: TCheckBox;
    dblTipo: TDBLookupComboBox;
    ckbTipo: TCheckBox;
    Bevel1: TBevel;
    ckbInadipencia: TCheckBox;
    cbxRelatorioGrafico: TCheckBox;
    cbxCobranca: TCheckBox;
    procedure ckbCodigoCLIClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ckbCentroDeCustoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoCLIKeyPress(Sender: TObject; var Key: Char);
    procedure ckbCodigoPedidoClick(Sender: TObject);
    procedure ckbTipoPagClick(Sender: TObject);
    procedure ckbCodigoAGFClick(Sender: TObject);
    procedure ckbCodigoTituloClick(Sender: TObject);
    procedure ckbNumeroClick(Sender: TObject);
    procedure ckbCodigoCCXClick(Sender: TObject);
    procedure ckbAgruparMesClick(Sender: TObject);
    procedure ckbAgruparAGFClick(Sender: TObject);
    procedure ckbEspacoExtraClick(Sender: TObject);
    procedure ckbOficialClick(Sender: TObject);
    procedure ckbNaoOficialClick(Sender: TObject);
    procedure ckbAgruparDiaClick(Sender: TObject);
    procedure ckbAgruparGrupoClick(Sender: TObject);
    procedure ckbCPFCNPJClick(Sender: TObject);
    procedure ckbObservacaoClick(Sender: TObject);
    procedure ckbCodigoCCXRecebimentoClick(Sender: TObject);
    procedure ckbValorTituloClick(Sender: TObject);
    procedure ckbPagosCreditoClick(Sender: TObject);
    procedure ckbPagosSemCreditoClick(Sender: TObject);
    procedure ckbAgruparCLIClick(Sender: TObject);
    procedure ckbGrupoClick(Sender: TObject);
    procedure ckbDataEnvioBoletoClick(Sender: TObject);
    procedure ckbDataRecebimentoBoletoClick(Sender: TObject);
    procedure ckbSomenteVerificadoClick(Sender: TObject);
    procedure ckbNaoVerificadoClick(Sender: TObject);
    procedure ckbCodigoCHQClick(Sender: TObject);
    procedure rdgEmissaoNotaClick(Sender: TObject);
    procedure ckbSinteticoClick(Sender: TObject);
    procedure ckbVencimentoClick(Sender: TObject);
    procedure ckbLocalClick(Sender: TObject);
    procedure ckbCodigoFPEClick(Sender: TObject);
    procedure ckbCodigoFUNClick(Sender: TObject);
    procedure ckbClassificacaoClick(Sender: TObject);
    procedure ckbTipoClick(Sender: TObject);
    procedure pShow;
    procedure ReportTitulo(filtrosSQL, filtros: string);
    procedure rdgVencimentoClick(Sender: TObject);
    procedure ReportTituloSintetico(filtrosSQL, filtros: string);
    procedure ReportTituloSuperSintetico(filtrosSQL, filtros: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMxSelTitulos: TfMxSelTitulos;

implementation

uses UDM, UVendasCliente, funcoes, MxSPediProd, UReceber,
  UBaixaRec, CdCliente, UPrevisaoReceita, MxGraficoTitulosVendedor,
  MxGraficoTitulosRecebidos, UExtratoCliente,
  URegistroDuplicata;

{$R *.DFM}

procedure TfMxSelTitulos.ckbCodigoCLIClick(Sender: TObject);
begin
  if ckbCodigoCLI.Checked then
  Begin
    edtCodigoCLI.Color:=clWindow;
    edtCodigoCLI.Enabled:=True;
    try
      edtCodigoCLI.SetFocus;
    except
    end;
  end
  else
  Begin
    edtCodigoCLI.Color:=AlteraCorComponentes;
    edtCodigoCLI.Clear;
    edtCodigoCLI.Enabled:=False;
  end;
end;

procedure TfMxSelTitulos.FormShow(Sender: TObject);
begin
  cbxCobranca.Visible := GetEmpresaComunicacao(DM.QR_Consultas) = '01';
  pShow;
end;

procedure TfMxSelTitulos.BitBtn1Click(Sender: TObject);
var
  mensagem,CNC,CNC2,CLI,PDV,PCP,TipoPG,TipoPG2,AGF,TRC,CdFPE,TPG,NUM,NUM2,CdFUN,CdFUN2,
    sGrupo,CCX,CCX2,CCXRec,CCXRec2,sOrdem,DataINI,DataFIM,DataINI2,DataFIM2,cOficial,
    cOficialTPG,sPagCredito,sCPFCNPJ,sObs,sObs2,sValorTitulo,sValorTitulo2,
    DataCHQINI, DataCHQFIM, DtEnvBoleto, DtRecBoleto, sVerificado, sNaoPagos,
    sNaoPagosTPG, sPagosChequePre, CHQ, sVencimento, sVencimento2, sLocal,
    SitCh, sClassificacao,sTipo, sAsterisco, sFiltros, sSQLQuery: String;
  iDiasAtrazo: integer;
begin
  CNC   := '';  CNC2    := '';
  CLI   := '';
  sClassificacao := '';
  sTipo := '';
  PDV   := '';  PCP     := '';
  TipoPG:= '';  TipoPG2 := '';
  CdFUN := '';  CdFUN2  := '';
  AGF   := '';
  TRC   := '';  TPG     := '';
  CdFPE := '';
  NUM   := '';  NUM2    := '';
  CCX   := '';  CCX2    := '';
  CCXRec:= '';  CCXRec2 := '';
  sObs  := '';  sObs2   := '';
  sLocal := '';
  CHQ   := '';
  sNaoPagos    := '';
  sNaoPagosTPG := '';
  DtEnvBoleto := '';
  DtRecBoleto := '';
  cOficial := '';
  cOficialTPG := '';
  sValorTitulo := '';
  sValorTitulo2 := '';
  sVerificado := '';
  sPagosChequePre := '';
  sFiltros := '';
  sPagCredito := '';
  sGrupo :='';
  sCPFCNPJ := '';
  DataCHQINI := '';
  DataINI    :='';
  DataINI2   :='';
  DataCHQFIM := '';
  DataFIM    := '';
  DataFIM2   := '';
  sAsterisco := '*';
  sOrdem := '';
  mensagem:='';
  if not VerificaData(mskDataINI.Text) then
    mensagem:=mensagem+'Data inicial digitada incorretamente!'+#13;
  if not VerificaData(mskDataFIM.Text) then
    mensagem:=mensagem+'Data final digitada incorretamente!'+#13;

  if mensagem<>'' then
    raise exception.Create(mensagem);

  if VerificaDataBranco(mskDataINI.Text)then
  Begin
    sFiltros := sFiltros + '(DtINI:'+mskDataINI.Text+')';
    DataCHQINI := ' AND (CHQ_DT_CADASTRO>='''+MesDia(mskDataINI.Text)+''' OR '+
                        'CHQ_DT_ALTERADO>='''+MesDia(mskDataINI.Text)+''' OR '+
                        'CHQ_DATA>='''+MesDia(mskDataINI.Text)+''') ';
    if rdgVencimento.Checked then
    Begin
      if ckbConsiderarOrigem.Checked then
        DataINI := ' AND (((T1.TRC_VENCIMENTO>='''+MesDia(mskDataINI.Text)+''') '+
          ' AND ((T1.TRC_DTORIGINAL>='''+MesDia(mskDataINI.Text)+''') '+
          ' OR (T1.TRC_DTORIGINAL IS NULL))) OR '+
          ' (T1.TRC_DTORIGINAL>='''+MesDia(mskDataINI.Text)+''')) '
      else
      Begin
        DataINI := ' AND (T1.TRC_VENCIMENTO>='''+MesDia(mskDataINI.Text)+''') ';
        if tag = 2 then
          DataINI2:= ' AND (T2.TPG_VENCIMENTO>='''+MesDia(mskDataINI.Text)+''') ';
      end;
    end
    else if rdgPagamento.Checked then
      DataINI := ' AND (T1.TRC_PAGAMENTO>='''+MesDia(mskDataINI.Text)+''') '
    else if rdgEmissaoNota.Checked then //Data Emiss�o Nota
    Begin
      DataINI := ' AND (N1.NTF_DT_EMISSAO>='''+MesDia(mskDataINI.Text)+''') ';
      if tag in [7,8] then //Extrato de Cliente ou Registro de Duplicatas
        DataINI := ' AND (EXISTS (SELECT PDV_DT_EMISSAO_VENDA FROM PEDIDO_DE_VENDA '+
          ' WHERE PDV_DT_EMISSAO_VENDA>='''+MesDia(mskDataINI.Text)+''' '+
          ' AND PDV_CODIGO=T1.PDV_CODIGO '+
          ' AND CNC_CODIGO=T1.CNC_CODIGO) '+
          ' OR EXISTS (SELECT PCT_DT_EMISSAO_VENDA FROM PACOTE_DE_VENDA '+
          ' WHERE PCT_DT_EMISSAO_VENDA>='''+MesDia(mskDataINI.Text)+''' '+
          ' AND PDV_CODIGO=T1.PDV_CODIGO '+
          ' AND CNC_CODIGO=T1.CNC_CODIGO)) ';
    end
    else if rdgCadastro.Checked then //Data Cadastro
      DataINI := ' AND (T1.TRC_DT_CADASTRO>='''+MesDia(mskDataINI.Text)+''') '
    else if rdgAlterado.Checked then //Data Alterado
      DataINI := ' AND (T1.TRC_DT_ALTERADO>='''+MesDia(mskDataINI.Text)+''') '
    else if rdgVerificado.Checked then //Data Verificado
      DataINI := ' AND (T1.TRC_DT_VERIFICADO>='''+MesDia(mskDataINI.Text)+''') '
    else if rdgEntrega.Checked then //Data Entrega Pedido
      DataINI := ' AND (EXISTS (SELECT PDV_DT_ENTREGA FROM PEDIDO_DE_VENDA '+
        ' WHERE PDV_DT_EMISSAO_VENDA>='''+MesDia(mskDataINI.Text)+''' '+
        ' AND PDV_CODIGO=T1.PDV_CODIGO '+
        ' AND CNC_CODIGO=T1.CNC_CODIGO) '+
        ' OR EXISTS (SELECT PCT_DT_CADASTRO FROM PACOTE_DE_VENDA '+
        ' WHERE PCT_DT_CADASTRO>='''+MesDia(mskDataINI.Text)+''' '+
        ' AND PDV_CODIGO=T1.PDV_CODIGO '+
        ' AND CNC_CODIGO=T1.CNC_CODIGO) '+
        ' OR EXISTS (SELECT PCR_DT_CADASTRO FROM PACOTE_DE_CREDITO '+
        ' WHERE PCR_DT_CADASTRO>='''+MesDia(mskDataINI.Text)+''' '+
        ' AND PCR_CODIGO=T1.PDV_CODIGO '+
        ' AND CNC_CODIGO=T1.CNC_CODIGO)) ';
  end;

  if VerificaDataBranco(mskDataFIM.Text)then
  Begin
    sFiltros := sFiltros + '(DtFIM:'+mskDataFIM.Text+')';
    DataCHQFIM := ' AND (CHQ_DT_CADASTRO<'''+MesDia(StrToDate(mskDataFIM.Text)+1)+''' OR '+
                  '      CHQ_DT_ALTERADO<'''+MesDia(StrToDate(mskDataFIM.Text)+1)+''' OR '+
                  '      CHQ_DATA<'''+MesDia(StrToDate(mskDataFIM.Text)+1)+''') ';
    if rdgVencimento.Checked then
    Begin
      if ckbConsiderarOrigem.Checked then
        DataFIM := ' AND (((T1.TRC_VENCIMENTO<'''+MesDia(StrToDate(mskDataFIM.Text)+1)+''') '+
          ' AND ((T1.TRC_DTORIGINAL<'''+MesDia(StrToDate(mskDataFIM.Text)+1)+''') '+
          ' OR (T1.TRC_DTORIGINAL IS NULL))) OR '+
          ' (T1.TRC_DTORIGINAL<'''+MesDia(StrToDate(mskDataFIM.Text)+1)+''')) '
      else
      Begin
        DataFIM := ' AND (T1.TRC_VENCIMENTO<'''+MesDia(StrToDate(mskDataFIM.Text)+1)+''') ';
        if tag = 2 then
          DataFIM2:= ' AND (T2.TPG_VENCIMENTO<'''+MesDia(StrToDate(mskDataFIM.Text)+1)+''') '
      end;
    end
    else if rdgPagamento.Checked then
      DataFIM := ' AND (T1.TRC_PAGAMENTO<'''+MesDia(StrToDate(mskDataFIM.Text)+1)+''') '
    else if rdgEmissaoNota.Checked then //Emissao da Nota
    Begin
      DataFIM := ' AND (N1.NTF_DT_EMISSAO<'''+MesDia(StrToDate(mskDataFIM.Text)+1)+''') ';
      if tag in [7,8] then //Extrato de Cliente ou Registro de Duplicatas
        DataFIM := ' AND (EXISTS (SELECT PDV_DT_EMISSAO_VENDA FROM PEDIDO_DE_VENDA '+
          ' WHERE PDV_DT_EMISSAO_VENDA<'''+MesDia(StrToDate(mskDataFIM.Text)+1)+''' '+
          ' AND PDV_CODIGO=T1.PDV_CODIGO '+
          ' AND CNC_CODIGO=T1.CNC_CODIGO) '+
          ' OR EXISTS (SELECT PCT_DT_EMISSAO_VENDA FROM PACOTE_DE_VENDA '+
          ' WHERE PCT_DT_EMISSAO_VENDA<'''+MesDia(StrToDate(mskDataFIM.Text)+1)+''' '+
          ' AND PDV_CODIGO=T1.PDV_CODIGO '+
          ' AND CNC_CODIGO=T1.CNC_CODIGO)) ';
    end
    else if rdgCadastro.Checked then //Data Cadastro
      DataFIM := ' AND (T1.TRC_DT_CADASTRO<'''+MesDia(StrToDate(mskDataFIM.Text)+1)+''') '
    else if rdgAlterado.Checked then //Data Alterado
      DataFIM := ' AND (T1.TRC_DT_ALTERADO<'''+MesDia(StrToDate(mskDataFIM.Text)+1)+''') '
    else if rdgVerificado.Checked then //Data Verificado
      DataFIM := ' AND (T1.TRC_DT_VERIFICADO<'''+MesDia(StrToDate(mskDataFIM.Text)+1)+''') '
    else if rdgEntrega.Checked then //Data Entrega Pedido
      DataFIM := ' AND (EXISTS (SELECT PDV_DT_ENTREGA FROM PEDIDO_DE_VENDA '+
        ' WHERE PDV_DT_EMISSAO_VENDA<'''+MesDia(mskDataFIM.Text)+''' '+
        ' AND PDV_CODIGO=T1.PDV_CODIGO '+
        ' AND CNC_CODIGO=T1.CNC_CODIGO) '+
        ' OR EXISTS (SELECT PCT_DT_CADASTRO FROM PACOTE_DE_VENDA '+
        ' WHERE PCT_DT_CADASTRO<'''+MesDia(mskDataFIM.Text)+''' '+
        ' AND PDV_CODIGO=T1.PDV_CODIGO '+
        ' AND CNC_CODIGO=T1.CNC_CODIGO) '+
        ' OR EXISTS (SELECT PCR_DT_CADASTRO FROM PACOTE_DE_CREDITO '+
        ' WHERE PCR_DT_CADASTRO<'''+MesDia(mskDataFIM.Text)+''' '+
        ' AND PCR_CODIGO=T1.PDV_CODIGO '+
        ' AND CNC_CODIGO=T1.CNC_CODIGO)) ';
  end;

  if ckbConsiderarOrigem.Checked then
    sFiltros := sFiltros + '(DtOrigem)';

  if ckbCodigoCLI.Checked then
    if not VerificaInteiroBranco(edtCodigoCLI.Text) then
      raise Exception.Create('C�digo do Cliente inv�lido!')
    else
    Begin
      CLI:=' AND (T1.CLI_CODIGO='+edtCodigoCLI.Text+') ';
      sFiltros := sFiltros + '(CLI:'+edtCodigoCLI.Text+')';
    end;

  if ckbClassificacao.Checked then
  Begin
    sAsterisco := '';
    if dblClassificacao.Text = '' then
    Begin
      sClassificacao := ' AND T1.CLI_CODIGO IN '+
        ' (SELECT CLI_CODIGO FROM CLIENTE '+
        ' WHERE CLI_CLASSIFICACAO=0 '+
        ' AND CNC_CODIGO=T1.CNC_CLIENTE) ';
      sFiltros := sFiltros + '(Claf=0)';
    end
    else
    Begin
      sClassificacao := ' AND T1.CLI_CODIGO IN '+
        ' (SELECT CLI_CODIGO FROM CLIENTE '+
        ' WHERE CLI_CLASSIFICACAO='+IntToStr(dblClassificacao.KeyValue)+
        ' AND CNC_CODIGO=T1.CNC_CLIENTE) ';
      sFiltros := sFiltros + '(Claf='+dblClassificacao.Text+')';
    end;
  end;

  if ckbTipo.Checked then
  Begin
    sAsterisco := '';
    if dblTipo.Text = '' then
    Begin
      sTipo := ' AND T1.CLI_CODIGO IN '+
        ' (SELECT CLI_CODIGO FROM CLIENTE '+
        ' WHERE CLI_TIPO=0 '+
        ' AND CNC_CODIGO=T1.CNC_CLIENTE) ';
      sFiltros := sFiltros + '(Tipo=0)';
    end
    else
    Begin
      sTipo := ' AND T1.CLI_CODIGO IN '+
        ' (SELECT CLI_CODIGO FROM CLIENTE '+
        ' WHERE CLI_TIPO='+IntToStr(dblTipo.KeyValue)+
        ' AND CNC_CODIGO=T1.CNC_CLIENTE) ';
      sFiltros := sFiltros + '(Tipo='+dblTipo.Text+')';
    end;
  end;

  if ckbCodigoCHQ.Checked then
    if not VerificaInteiroBranco(edtCodigoCHQ.Text) then
      raise Exception.Create('C�digo do Cheque inv�lido!')
    else
    Begin
      CHQ:=' AND (T1.CHQ_CODIGO='+edtCodigoCHQ.Text+') ';
      sFiltros := sFiltros + '(CHQ:'+edtCodigoCHQ.Text+')';
    end;

  if ckbCPFCNPJ.Checked then
    if not VerificaInteiroBranco(edtCPFCNPJ.Text) then
      raise Exception.Create('Digite o CPF/CNPJ sem m�scara!')
    else
    Begin
      sCPFCNPJ:=' AND T1.CLI_CODIGO IN '+
        ' (SELECT CLI_CODIGO FROM CLIENTE '+
        ' WHERE CLI_CGC_CPF LIKE ''%'+edtCPFCNPJ.Text+'%'' '+
        ' AND CNC_CODIGO=T1.CNC_CLIENTE) ';
      sFiltros := sFiltros + '(CPF/CNPJ:'+edtCPFCNPJ.Text+')';
      sAsterisco := '';
    end;

  if ckbCodigoTitulo.Checked then
    if not VerificaInteiroBranco(edtCodigoTitulo.Text) then
      raise Exception.Create('C�digo do T�tulo inv�lido!')
    else
    Begin
      TRC :=' AND (T1.TRC_CODIGO='+edtCodigoTitulo.Text+') ';
      TPG :=' AND (T2.TPG_CODIGO='+edtCodigoTitulo.Text+') ';
      sFiltros := sFiltros + '(Titulo:'+edtCodigoTitulo.Text+')';
    end;

    //CodigoFPE
  if ckbcodigoFPE.Checked then
  Begin
    if not VerificaInteiroBranco(edtCodigoFPE.Text) then
      Raise exception.Create('CodigoFPE inv�lido!');
    CdFPE := ' AND T1.FPE_CODIGO='+edtCodigoFPE.Text;
    sFiltros := sFiltros + '(FPE:'+edtCodigoFPE.Text+')';
  end;


  if ckbNumero.Checked then
  Begin
    if edtNumero.Text = '' then
      Raise Exception.Create('N�mero do Documento inv�lido!')
    else
    Begin
      NUM:=' AND (T1.TRC_NUMERO LIKE ''%'+Trim(edtNumero.Text)+'%'') ';
      if tag = 2 then
        NUM2:=' AND (T2.TPG_NUMERO LIKE ''%'+Trim(edtNumero.Text)+'%'') ';
      sFiltros := sFiltros + '(Num:'+edtNumero.Text+')';
    end;
  end;

  if ckbCodigoPedido.Checked then
    if not VerificaInteiroBranco(edtCodigoPedido.Text) then
      raise Exception.Create('C�digo do pedido inv�lido!')
    else
    Begin
      PDV:=' AND (T1.PDV_CODIGO='+edtCodigoPedido.Text+') ';
      if tag = 2 then
        PCP:=' AND (T2.PCP_CODIGO='+edtCodigoPedido.Text+') ';
      sFiltros := sFiltros + '(Pedido:'+edtCodigoPedido.Text+')';
    end;

  if ckbCodigoCCX.Checked then
    if dblCodigoCCX.Text = '' then
      raise Exception.Create('Conta de Caixa inv�lida!')
    else
    Begin
      case cmbTipoConta.ItemIndex of
        0: Begin
             CCX:=' AND (T1.CCX_CODIGO='+IntToStr(dblCodigoCCX.KeyValue)+') ';
             if tag = 2 then
               CCX2:=' AND (T2.CCX_CODIGO='+IntToStr(dblCodigoCCX.KeyValue)+') ';
             sFiltros := sFiltros + '(CCX:='+dblCodigoCCX.Text+')';
           end;
        1: Begin
             CCX:=' AND (T1.CCX_CODIGO<>'+IntToStr(dblCodigoCCX.KeyValue)+') ';
             if tag = 2 then
               CCX2:=' AND (T2.CCX_CODIGO<>'+IntToStr(dblCodigoCCX.KeyValue)+') ';
             sFiltros := sFiltros + '(CCX:<>'+dblCodigoCCX.Text+')';
           end;
        else
          Raise exception.Create('Condi��o de Tipo de Conta inv�lido!');
      end;
    end;

  if ckbCodigoCCXRecebimento.Checked then
    if dblCodigoCCXRecebimento.Text = '' then
      raise Exception.Create('Conta Recebimento inv�lida!')
    else
    Begin
      CCXRec:=' AND (T1.CCX_CODIGO_REC='+IntToStr(dblCodigoCCXRecebimento.KeyValue)+') ';
      if tag = 2 then
        CCXRec2:=' AND (T2.CCX_CODIGO_REC='+IntToStr(dblCodigoCCXRecebimento.KeyValue)+') ';
      sFiltros := sFiltros + '(CCXRec:'+dblCodigoCCXRecebimento.Text+')';
    end;

  if ckbGrupo.Checked then
    if dblGrupoCC.Text = '' then
      raise Exception.Create('Grupo de Conta de Caixa inv�lida!')
    else
    Begin
      case cmbTipoGrupo.ItemIndex of
        0: Begin
             sGrupo:=' AND (T5.CCX_GRUPO='+IntToStr(dblGrupoCC.KeyValue)+') ';
             sFiltros := sFiltros + '(GRUPO CCX:='+dblGrupoCC.Text+')';
           end;
        1: Begin
             sGrupo:=' AND (T5.CCX_GRUPO<>'+IntToStr(dblGrupoCC.KeyValue)+') ';
             sFiltros := sFiltros + '(GRUPO CCX:<>'+dblGrupoCC.Text+')';
           end;
        else
          Raise exception.Create('Condi��o de Tipo de Pagamento inv�lido!');
      end;
    end;

  if ckbTipoPag.Checked then
    if dblTipoPag.Text = '' then
      raise Exception.Create('Tipo de Pagamento inv�lido!')
    else
    Begin
      case cmbTipoPag.ItemIndex of
        0: Begin
             TipoPG:=' AND (T1.TRC_TIPO_PAG='+IntToStr(dblTipoPag.KeyValue)+') ';
             if tag = 2 then
               TipoPG:=' AND (T2.TRC_TIPO_PAG='+IntToStr(dblTipoPag.KeyValue)+') ';
             sFiltros := sFiltros + '(TipoPag:='+dblTipoPag.Text+')';
           end;
        1: Begin
             TipoPG:=' AND (T1.TRC_TIPO_PAG<>'+IntToStr(dblTipoPag.KeyValue)+') ';
             if tag = 2 then
               TipoPG:=' AND (T2.TRC_TIPO_PAG<>'+IntToStr(dblTipoPag.KeyValue)+') ';
             sFiltros := sFiltros + '(TipoPag:<>'+dblTipoPag.Text+')';
           end;
        else
          Raise exception.Create('Condi��o de Tipo de Pagamento inv�lido!');
      end;
    end;

  if ckbCodigoAGF.Checked then
    if not (dblCodigoAGF.KeyValue > 0) then
      ShowMessage('Agente Financeiro inv�lido!')
    else
    Begin
      case cmbCondicaoCodigoAGF.ItemIndex of
        0: Begin
             AGF:=' AND (T1.AGF_CODIGO='+IntToStr(dblCodigoAGF.KeyValue)+') ';
             sFiltros := sFiltros + '(AGF:='+dblCodigoAGF.Text+')';
           end;
        1: Begin
             AGF:=' AND (T1.AGF_CODIGO<>'+IntToStr(dblCodigoAGF.KeyValue)+') ';
             sFiltros := sFiltros + '(AGF:<>'+dblCodigoAGF.Text+')';
           end;
        else
          Raise exception.Create('Condi��o de Agente Financeiro inv�lido!');
      end;
    end;

  if ckbValorTitulo.Checked then
  Begin
    if not VerificaFloatBranco(edtValorTitulo.Text) then
    Begin
      edtValorTitulo.SetFocus;
      Raise Exception.Create('Valor do T�tulo inv�lido!');
    end
    else
      case cmbValorTitulo.ItemIndex of
        0: Begin
             sValorTitulo :=' AND (T1.TRC_VALOR < '+VirgPonto(edtValorTitulo.Text)+') ';
             sValorTitulo2:=' AND (T1.TPG_VALOR < '+VirgPonto(edtValorTitulo.Text)+') ';
             sFiltros := sFiltros + '(Valor:<'+edtValorTitulo.Text+') ';
           end;
        1: Begin
             sValorTitulo :=' AND (T1.TRC_VALOR = '+VirgPonto(edtValorTitulo.Text)+') ';
             sValorTitulo2:=' AND (T1.TPG_VALOR = '+VirgPonto(edtValorTitulo.Text)+') ';
             sFiltros := sFiltros + '(Valor:='+edtValorTitulo.Text+') ';
           end;
        2: Begin
             sValorTitulo :=' AND (T1.TRC_VALOR > '+VirgPonto(edtValorTitulo.Text)+') ';
             sValorTitulo2:=' AND (T1.TPG_VALOR > '+VirgPonto(edtValorTitulo.Text)+') ';
             sFiltros := sFiltros + '(Valor:>'+edtValorTitulo.Text+') ';
           end;
        3: Begin
             sValorTitulo :=' AND (T1.TRC_VALOR <='+VirgPonto(edtValorTitulo.Text)+') ';
             sValorTitulo2:=' AND (T1.TPG_VALOR <= '+VirgPonto(edtValorTitulo.Text)+') ';
             sFiltros := sFiltros + '(Valor:<='+edtValorTitulo.Text+') ';
           end;
        4: Begin
             sValorTitulo :=' AND (T1.TRC_VALOR >='+VirgPonto(edtValorTitulo.Text)+') ';
             sValorTitulo2:=' AND (T1.TPG_VALOR >= '+VirgPonto(edtValorTitulo.Text)+') ';
             sFiltros := sFiltros + '(Valor:>='+edtValorTitulo.Text+') ';
           end;
      end;
  end;

  if ckbCentroDeCusto.Checked then
    if dblCOdigoCNC.Text = '' then
      Raise Exception.Create('Centro de Custo inv�lido!')
    else
    Begin
      CNC:=' AND (T1.CNC_CODIGO='+IntToStr(dblCOdigoCNC.KeyValue)+') ';
      if tag = 2 then
        CNC2:=' AND (T2.CNC_CODIGO='+IntToStr(dblCOdigoCNC.KeyValue)+') ';
      sFiltros := sFiltros + '(CNC:'+IntToStr(dblCOdigoCNC.KeyValue)+')';
    end;

  if ckbCodigoFUN.Checked then
  begin
    if dblCodigoFUN.Text = '' then
    Begin
      CdFUN := ' AND T1.FUN_CODIGO=0 ';
      CdFUN2:= ' AND T2.FUN_CODIGO=0 ';
    end
    else
    Begin
      CdFUN:=' AND T1.FUN_CODIGO='+IntToStr(dblCOdigoFUN.KeyValue);
      if tag = 2 then
        CdFUN2:=' AND (T2.FUN_CODIGO='+IntToStr(dblCodigoFUN.KeyValue)+') ';
      sFiltros := sFiltros + '(FUN:'+IntToStr(dblCodigoFUN.KeyValue)+')';
    end;
  end;

  if ( ckbCodigoFUN.Checked ) and (dblCodigoFUN.Text <> '') and (ckbInadipencia.Checked) then
    CdFUN := ' AND (EXISTS (SELECT IPV.FUN_CODIGO FROM PEDIDO_DE_VENDA PDV, ITEM_DE_PEDIDO_DE_VENDA IPV '+
             ' WHERE PDV.PDV_CODIGO = IPV.PDV_CODIGO AND PDV.CNC_CODIGO = IPV.CNC_CODIGO '+
             ' AND IPV.FUN_CODIGO = '+IntToStr(dblCodigoFUN.KeyValue)+
             ' AND T1.PDV_CODIGO = PDV.PDV_CODIGO AND T1.CNC_CODIGO = PDV.CNC_CODIGO))';

  if ckbLocal.Checked then
  Begin
    sLocal:=' AND (T1.TRC_LOCAL LIKE ''%'+Trim(edtLocal.Text)+'%'') ';
    sFiltros := sFiltros + '(Local:'+edtLocal.Text+')';
  end;

  if ckbObservacao.Checked then
  Begin
    sObs:=' AND (T1.TRC_OBSERVACAO LIKE ''%'+Trim(edtObservacao.Text)+'%'') ';
    if tag = 2 then
      sObs2:=' AND (T2.TPG_OBSERVACAO LIKE ''%'+Trim(edtObservacao.Text)+'%'') ';
    sFiltros := sFiltros + '(Obs:'+edtObservacao.Text+')';
  end;

  if ckbNaoPagos.Checked then
  Begin
    sNaoPagos    := ' AND T1.TRC_SITUACAO <> 2 ';
    sNaoPagosTPG := ' AND T1.TPG_SITUACAO <> 1 ';
    sFiltros := sFiltros + '(NaoPagos)';
  end;

  if ckbPagosCredito.Checked then
  Begin
    sPagCredito := ' AND (TRC_CRED_CLI>0) ';
    sFiltros := sFiltros + '(C/CREDITO)';
  end
  else if ckbPagosSemCredito.Checked then
  Begin
    sPagCredito := ' AND (TRC_CRED_CLI=0) ';
    sFiltros := sFiltros + '(S/CREDITO)';
  end;

  if ckbOficial.Checked then
  Begin
    cOficial    := ' AND T1.TRC_NUMERO<>'''' AND TRC_NUMERO IS NOT NULL ';
    cOficialTPG := ' AND T1.TPG_NUMERO<>'''' AND TPG_NUMERO IS NOT NULL ';
    sFiltros := sFiltros + '(Ofi.)';
  end
  else if ckbNaoOficial.Checked then
  Begin
    cOficial    := ' AND (T1.TRC_NUMERO='''' OR T1.TRC_NUMERO IS NULL) ';
    cOficialTPG := ' AND (T1.TPG_NUMERO='''' OR T1.TPG_NUMERO IS NULL) ';
    sFiltros := sFiltros + '(N.Ofi.)';
  end;

  if ckbDataEnvioBoleto.Checked then
  Begin
    if not VerificaDataBranco(mskDataEnvio.Text) then
      Raise exception.Create('Data de envio ao banco inv�lida!');
    DtEnvBoleto := ' AND DATEPART(dd,T1.TRC_DT_EMISSAO_BOLETO)='+Copy(mskDataEnvio.Text,1,2)+
                   ' AND DATEPART(mm,T1.TRC_DT_EMISSAO_BOLETO)='+Copy(mskDataEnvio.Text,4,2)+
                   ' AND DATEPART(yyyy,T1.TRC_DT_EMISSAO_BOLETO)='+Copy(mskDataEnvio.Text,7,4);
    sFiltros := sFiltros + '(DtEnvio='+mskDataEnvio.Text+')';
  end;

  if ckbDataRecebimentoBoleto.Checked then
  Begin
    if not VerificaDataBranco(mskDataRecebimento.Text) then
      Raise exception.Create('Data de retorno ao banco inv�lida!');
    DtRecBoleto := ' AND DATEPART(dd,T1.TRC_DT_RECEBIMENTO_BOLETO)='+Copy(mskDataRecebimento.Text,1,2)+
                   ' AND DATEPART(mm,T1.TRC_DT_RECEBIMENTO_BOLETO)='+Copy(mskDataRecebimento.Text,4,2)+
                   ' AND DATEPART(yyyy,T1.TRC_DT_RECEBIMENTO_BOLETO)='+Copy(mskDataRecebimento.Text,7,4);
    sFiltros := sFiltros + '(DtRetorno='+mskDataRecebimento.Text+')';
  end;

  if ckbSomenteVerificado.Checked then
  Begin
    sVerificado := ' AND T1.TRC_VERIFICADO>0 ';
    sFiltros := sFiltros + '(Verificado)';
  end
  else if ckbNaoVerificado.Checked then
  Begin
    sVerificado := ' AND T1.TRC_VERIFICADO=0 ';
    sFiltros := sFiltros + '(Nao Verificado)';
  end;

  if ckbVencimento.Checked then
  Begin
    if not VerificaDataBranco(mskVencimento.Text) then
    Begin
      mskVencimento.SetFocus;
      Raise Exception.Create('Vencimento do T�tulo inv�lido!');
    end
    else
      case cmbVencimento.ItemIndex of
        0: Begin
             sVencimento  :=' AND (T1.TRC_VENCIMENTO<'''+MesDia(mskVencimento.Text)+''') ';
             sVencimento2 :=' AND (T2.TPG_VENCIMENTO<'''+MesDia(mskVencimento.Text)+''') ';
             sFiltros := sFiltros + '(Vencimento:<'+mskVencimento.Text+') ';
           end;
        1: Begin
             sVencimento  :=' AND (T1.TRC_VENCIMENTO='''+MesDia(mskVencimento.Text)+''') ';
             sVencimento2 :=' AND (T2.TPG_VENCIMENTO='''+MesDia(mskVencimento.Text)+''') ';
             sFiltros := sFiltros + '(Vencimento:='+mskVencimento.Text+') ';
           end;
        2: Begin
             sVencimento  :=' AND (T1.TRC_VENCIMENTO>'''+MesDia(mskVencimento.Text)+''') ';
             sVencimento2 :=' AND (T2.TPG_VENCIMENTO>'''+MesDia(mskVencimento.Text)+''') ';
             sFiltros := sFiltros + '(Vencimento:>'+mskVencimento.Text+') ';
           end;
        3: Begin
             sVencimento  :=' AND (T1.TRC_VENCIMENTO<='''+MesDia(mskVencimento.Text)+''') ';
             sVencimento2 :=' AND (T2.TPG_VENCIMENTO<='''+MesDia(mskVencimento.Text)+''') ';
             sFiltros := sFiltros + '(Vencimento:<='+mskVencimento.Text+') ';
           end;
        4: Begin
             sVencimento  :=' AND (T1.TRC_VENCIMENTO>='''+MesDia(mskVencimento.Text)+''') ';
             sVencimento2 :=' AND (T2.TPG_VENCIMENTO>='''+MesDia(mskVencimento.Text)+''') ';
             sFiltros := sFiltros + '(Vencimento:>='+mskVencimento.Text+') ';
           end;
      end;
  end;

  if DM.Configuracao1.Empresa = empMotical then
    SitCh := '0,'
  else
    SitCh := '';

  if ckbAgruparGrupo.Checked then
    sOrdem := ' T5.CCX_GRUPO,';

  case cmbOrdem.ItemIndex of
    0 : sOrdem := sOrdem + ' T1.CNC_CLIENTE,T2.CLI_RZ_SOCIAL,ORDEM,T1.TRC_VENCIMENTO,T1.TRC_SEQUENCIA ASC ';
    1 : sOrdem := sOrdem + ' T1.TRC_CODIGO,T1.TRC_SEQUENCIA ASC ';
    2 : sOrdem := sOrdem + ' T1.PDV_CODIGO,T1.TRC_SEQUENCIA ASC ';
    3 : sOrdem := sOrdem + ' T1.TRC_VENCIMENTO,T1.TRC_SEQUENCIA ASC ';
    4 : sOrdem := sOrdem + ' T1.TRC_PAGAMENTO,T1.TRC_SEQUENCIA ASC ';
    5 : sOrdem := sOrdem + ' T1.TRC_VALOR ASC ';
    6 : sOrdem := sOrdem + ' T1.TRC_DT_CADASTRO ASC ';
    7 : sOrdem := sOrdem + ' T1.TRC_NUMERO ASC ';
    8 : sOrdem := sOrdem + ' T1.TRC_DT_ALTERADO ASC ';    
  end;

  if DM.Configuracao1.Empresa IN [3,4] then
    if tag = 8 then
      sOrdem := ' ORDER BY T1.CNC_CODIGO,'+sOrdem
    else
      sOrdem := ' ORDER BY '+sOrdem
  else
    sOrdem := ' ORDER BY T1.CNC_CODIGO, '+sOrdem;

  if rdgVencimento.Checked then
    sFiltros := '(Ven)' + sFiltros
  else if rdgPagamento.Checked then
    sFiltros := '(Pag)' + sFiltros
  else if rdgEmissaoNota.Checked then
    sFiltros := '(Emi)' + sFiltros
  else if rdgCadastro.Checked then
    sFiltros := '(Cad)' + sFiltros
  else if rdgAlterado.Checked then
    sFiltros := '(Alt)' + sFiltros
  else if rdgVerificado.Checked then
    sFiltros := '(Ver)' + sFiltros
  else if rdgEntrega.Checked then
    sFiltros := '(EntPed)' + sFiltros;

  if tag = 0 then //Relat�rio de T�tulos a Receber SQL-Server
  Begin
    Application.CreateForm(Trpt_receber,rpt_receber);
    with rpt_receber do
    Begin
      if ckbMeiaFolha.Checked then
        report.Options.PageLength := 32;

      zrlFiltros.Caption := sFiltros;

      if ckbExibirPedido.Checked then
        zrlDescOrigem.Caption := 'Pedido';

      if ckbSaltarPagina.Checked then
        zrbGrupo.ForceNewPage := True;

      if (not ckbCentroDeCusto.Checked) and
         (DM.Configuracao1.Empresa = empLBM) then
      Begin
        zrbGrupoCodigoCNC.Expression := '';
        zrbGrupoCodigoCNC.Height := 0;
      end;
      if ckbSintetico.Checked then
      Begin
        if ckbEspacoExtra.Checked then
        Begin
          zrbRodapeDia.Height := zrbRodapeDia.Height + 1;
          zrbRodapeGrupo.Height := zrbRodapeGrupo.Height + 1;
        end;
        if ckbSuperSintetico.Checked then
        Begin
          zrlLinhaRodapeDia.Enabled := False;
          zrbDetalhe.Height:=0;
          zrlDescCodigo.Enabled:=False;
          zrlDescNumero.Enabled:=False;
          zrlDescSeq.Enabled:=False;
          zrlDescCliente.Enabled:=False;
          zrlDescAgente.Enabled:=False;
          zrlDescOrigem.Enabled:=False;
          zrlDescVencimento.Enabled:=False;
          zrlDescVendedor.Enabled:=False;
          zrlDescTotPedido.Enabled:=False;
          SZRLabel13.Enabled:=False;
        end
        else if ckbEspacoExtra.Checked then
        Begin
          zrbDetalhe.Height := 2;
          //Limpar a segunda Linha
          zrlContaAgendada.Enabled := False;
          zrlObservacao.Enabled := False;
        end
        else
          zrbDetalhe.Height := 1;
      end
      else if ckbEspacoExtra.Checked then
        zrbDetalhe.Height := 3;

      if ckbAgruparMes.Checked then
      Begin
        zrbGrupo.Expression := 'MES+ANO';
        if rdgVencimento.Checked then
          SZRLabel21.Caption := 'Vencimento'
        else if rdgPagamento.Checked then
          SZRLabel21.Caption := 'Pagamento'
        else if rdgEmissaoNota.Checked then
          SZRLabel21.Caption := 'Emissao Nota'
        else if rdgCadastro.Checked then
          SZRLabel21.Caption := 'Cadastro'
        else if rdgAlterado.Checked then
          SZRLabel21.Caption := 'Alterado'
        else if rdgVerificado.Checked then
          SZRLabel21.Caption := 'Verificado'
        else if rdgEntrega.Checked then
          SZRLabel21.Caption := 'Entrega';
      end
      else if ckbAgruparDia.Checked then
      Begin
        zrbGrupo.Expression := 'DIA+MES+ANO';
        if rdgVencimento.Checked then
          SZRLabel21.Caption := 'Vencimento'
        else if rdgPagamento.Checked then
          SZRLabel21.Caption := 'Pagamento'
        else if rdgEmissaoNota.Checked then
          SZRLabel21.Caption := 'Emissao Nota'
        else if rdgCadastro.Checked then
          SZRLabel21.Caption := 'Cadastro'
        else if rdgAlterado.Checked then
          SZRLabel21.Caption := 'Alterado'
        else if rdgVerificado.Checked then
          SZRLabel21.Caption := 'Verificado'
        else if rdgEntrega.Checked then
          SZRLabel21.Caption := 'Entrega';
      end
      else
      Begin
        zrbGrupo.Expression := '';
        zrbGrupo.Height := 0;
        zrbRodapeDia.Height := 0;
      end;
      if ckbAgruparGrupo.Checked then
        zrbGrupoCaixa.Expression := 'CCX_GRUPO'
      else if ckbAgruparCLI.Checked then
      Begin
        zrbDetalhe.Width := 3;
        zrbGrupoCaixa.Expression := 'CLI_RZ_SOCIAL';
        zrbGrupoCaixa.Height := 0;
        vNaoExibirNomePublico := True;
        zrlDescCliente.Left := 0;
        zrlCliente.Left     := 0;
        zrlCliente.Width    := 61;
        zrlDescCodigo.Left  := 62;
        zrdCodigoTRC.Left   := 62;
        zrlDescSeq.Left     := 70;
        zrdSequencia.Left   := 70;
        zrlDescNumero.Left  := 75;
        zrdNumero.Left      := 75;
        zrlDescAgente.Left  := 85;
        zrlAgenteFin.Left   := 85;
        zrlAgenteFin.Width  := 17;
        zrlDescOrigem.Left     := 103;
        zrlDataOrigem.Left     := 103;
        zrlDescVencimento.Left := 114;
        zrdVencimento.Left     := 114;
        zrlDescValor.Left     := 126;
        zreValor.Left         := 126;
        zrlSubTotalGrupo.Left := 126;
        zrlSubTotalDia.Left   := 126;
        zrlTotalValorCNC.Left := 126;
        zrlTotal.Left         := 126;
        zrlDescVendedor.Enabled := False;
        zrlCodigoFUN.Enabled := False;
        zrlDescTotPedido.Enabled := False;
        zrlTotalPedido.Enabled := False;
        zrlDescComJuros.Enabled := False;
        zrlValorComJuros.Enabled := False;
        zrlSubTotalGrupoJuros.Enabled := False;
        zrlSubTotalDiaJuros.Enabled := False;
        zrlTotalComJurosCNC.Enabled := False;
        zrlTotalJuros.Enabled := False;
      end
      else
      Begin
        zrbGrupoCaixa.Expression := '';
        zrbGrupoCaixa.Height := 0;
        zrbRodapeGrupoGrupoConta.Height := 0;
      end;

      //Selecionar T�tulo pagos com cheque Pr�-Datado
      if ckbPagosChequePre.Checked then
      Begin
        if not ckbExibirPedido.Checked then
          zrlDescOrigem.Caption := 'Emissao';
        if not VerificaDataBranco(mskDataFIM.Text) then
          sPagosChequePre := ' OR (TRC_SITUACAO=2 '+
                             ' AND TRC_TIPO_PAG=6 '+
                             ' AND TRC_PAGAMENTO>'''+MesDia(DM.Configuracao1.Data)+''') '
        else
          sPagosChequePre := ' OR (TRC_SITUACAO=2 '+
                             ' AND TRC_TIPO_PAG=6 '+
                             ' AND TRC_PAGAMENTO>'''+MesDia(mskDataFIM.Text)+''') ';
      end;

      Titulo_receber1.Close;
      if not rdgEmissaoNota.Checked then
      Begin
        sSQLQuery := '';
        if ckbInadipencia.Checked then
        begin
          sFiltros := sFiltros + '(atrasados)';
          sSQLQuery := ' AND (T1.TRC_VALOR_PAGO = 0 OR T1.TRC_VALOR_PAGO IS NULL )'+
                       ' AND T1.TRC_VENCIMENTO<'''+MesDia(DM.Configuracao1.DataHora)+''' ' +
                       ' AND (T1.TRC_SITUACAO IN (0,1,8,9) '+sPagosChequePre+')'+
                       CdFUN+CNC+CLI+sClassificacao+sTipo+CHQ+PDV+TipoPG+AGF+TRC+CdFPE+NUM+CCX+CCXRec+sGrupo+DataINI+DataFIM+
                       sValorTitulo+cOficial+sCPFCNPJ+sObs+sLocal+DtEnvBoleto+DtRecBoleto+sVerificado+sNaoPagos+sVencimento+
                       ' AND (T1.CCX_CODIGO=T5.CCX_CODIGO) '+
                       ' AND T1.CNC_CODIGO = T6.CNC_CODIGO ' +
                       ' AND (T1.CLI_CODIGO'+sAsterisco+'=T2.CLI_CODIGO) '+
                       ' AND (T1.CNC_CLIENTE'+sAsterisco+'=T2.CNC_CODIGO) ';
        end
        else
        begin
          sSQLQuery := ' AND (T1.TRC_SITUACAO IN (0,1,8,9) '+sPagosChequePre+')'+
                        CdFUN+CNC+CLI+sClassificacao+sTipo+CHQ+PDV+TipoPG+AGF+TRC+CdFPE+NUM+CCX+CCXRec+sGrupo+DataINI+DataFIM+
                        sValorTitulo+cOficial+sCPFCNPJ+sObs+sLocal+DtEnvBoleto+DtRecBoleto+sVerificado+sNaoPagos+sVencimento+
                        ' AND (T1.CCX_CODIGO=T5.CCX_CODIGO) '+
                        ' AND T1.CNC_CODIGO = T6.CNC_CODIGO ' +
                        ' AND (T1.CLI_CODIGO'+sAsterisco+'=T2.CLI_CODIGO) '+
                        ' AND (T1.CNC_CLIENTE'+sAsterisco+'=T2.CNC_CODIGO) ';
        end;

        Titulo_receber1.SQL.Text:='SELECT '+
          ' T1.CNC_CODIGO '+
          ',T1.PDV_CODIGO '+
          ',T1.TRC_DT_CADASTRO '+
          ',T1.AGF_CODIGO '+
          ',T1.CLI_CODIGO '+
          ',T1.CNC_CLIENTE '+
          ',T1.TRC_CODIGO '+
          ',T1.TRC_NUMERO '+
          ',T1.TRC_SEQUENCIA '+
          ',T1.TRC_VENCIMENTO '+
          ',T1.TRC_VALOR '+
          ',T1.TRC_VALOR_PAGO '+
          ',T1.TRC_SITUACAO '+
          ',T1.TRC_OBSERVACAO '+
          ',T1.TRC_TIPO_DOC '+
          ',T1.TRC_TIPO_PAG '+
          ',T1.CNC_CHEQUE '+
          ',T1.CHQ_CODIGO '+
          ',T1.TRC_CHEQUE_DEVOLVIDO '+
          ',T1.TRC_DTORIGINAL '+
          ',T1.FPE_CODIGO '+
          ',T1.TRC_TIPO_PEDIDO '+
          ',T1.TRC_DT_EMISSAO_BOLETO '+
          ',T1.TRC_DT_RECEBIMENTO_BOLETO '+
          ',T1.TRC_VERIFICADO '+
          ',T1.TRC_DT_VERIFICADO '+
          ',T1.TRC_PAGAMENTO '+
          ',T1.CCX_CODIGO '+
          ',T2.CLI_RZ_SOCIAL '+
          ',T5.CCX_GRUPO '+
          ',DATEPART(day, T1.TRC_VENCIMENTO) AS Dia '+
          ',DATEPART(month, T1.TRC_VENCIMENTO) AS Mes '+
          ',DATEPART(year, T1.TRC_VENCIMENTO) AS Ano '+
          //',T3.PDV_CLASSIFICACAO '+

          //Para relatorio gr�fico
          ',  T6.CNC_RZ_SOCIAL '+
          ',  T2.CLI_RZ_SOCIAL AS CLI_NOME '+
          ',  T2.CLI_ENDERECO '+
          ',  T2.CLI_BAIRRO '+
          ',  T2.CLI_CIDADE '+
          ',  T2.CLI_UF '+
          ',  T2.CLI_FONE '+

          ' ,T1.TRC_VALOR AS TRC_VALOR_COM_JUROS '+
          ' ,0 AS TRC_MULTA ' +




          ',1 AS ORDEM '+
          ' FROM Titulo_a_receber T1, Cliente T2, CONTA_DE_CAIXA T5, CENTRO_DE_CUSTO T6 '+
          ' WHERE 1=1 ' + sSQLQuery;

        if CkbCodigoCli.Checked then
        Begin
          Titulo_receber1.SQL.Text := Titulo_receber1.SQL.Text + ' UNION '+
            'SELECT T1.CNC_CODIGO '+
            ',0 AS PDV_CODIGO '+
            ',T1.CHQ_DT_CADASTRO '+
            ',0 AS AGF_CODIGO '+
            ',T1.CLI_CODIGO '+
            ',T1.CNC_CLIENTE '+
            ',T1.CHQ_CODIGO AS TRC_CODIGO '+
            ',T1.CHQ_NUMERO AS TRC_NUMERO '+
            ',''CH'' AS TRC_SEQUENCIA '+
            ',T1.CHQ_DATA AS TRC_VENCIMENTO '+
            ',T1.CHQ_VALOR AS TRC_VALOR '+
            ',0 AS TRC_VALOR_PAGO '+
            ',0 AS TRC_SITUACAO '+
            ',T1.CHQ_OBSERVACAO AS TRC_OBSERVACAO '+
            ',0 AS TRC_TIPO_DOC '+
            ',0 AS TRC_TIPO_PAG '+
            ',T1.CNC_CODIGO '+
            ',T1.CHQ_CODIGO '+
            ',0 AS TRC_CHEQUE_DEVOLVIDO '+
            ',0 AS TRC_DTORIGINAL '+
            ',0 AS FPE_CODIGO '+
            ',0 AS TRC_TIPO_PEDIDO '+
            ',0 AS TRC_DT_EMISSAO_BOLETO '+
            ',0 AS TRC_DT_RECEBIMENTO_BOLETO '+
            ',0 AS TRC_VERIFICADO '+
            ',0 AS TRC_DT_VERIFICADO '+
            ',0 AS TRC_PAGAMENTO '+
            ',0 AS CCX_CODIGO '+
            ',T5.CLI_RZ_SOCIAL '+
            ',0 AS CCX_GRUPO '+
            ',DATEPART(day, T1.CHQ_DATA) AS Dia  '+
            ',DATEPART(month, T1.CHQ_DATA) AS Mes  '+
            ',DATEPART(year, T1.CHQ_DATA) AS Ano '+

            '  NULL AS CNC_RZ_SOCIAL, '+
            '  NULL AS CLI_NOME, '+
            '  NULL AS CLI_ENDERECO, '+
            '  NULL AS CLI_BAIRRO, '+
            '  NULL AS CLI_CIDADE, '+
            '  NULL AS CLI_UF, '+
            '  NULL AS CLI_FONE, '+

            ' T1.TRC_VALOR AS TRC_VALOR_COM_JUROS, '+
            ' 0 AS TRC_MULTA, ' +

            //',0 AS PDV_CLASSIFICACAO '+
            ' 0 AS ORDEM '+                             //Para colocar os cheques antes dos t�tulos
            ' FROM CHEQUE T1, CLIENTE T5 '+
            ' WHERE T1.CHQ_ER=''R'' '+
            ' AND (T1.CHQ_SITUACAO IN ('+SitCh+'3,4,5)) '+
            CdFUN+CNC+CLI+sClassificacao+sTipo+DataCHQINI+DataCHQFIM+
            ' AND T1.CLI_CODIGO=T5.CLI_CODIGO '+
            ' AND T1.CNC_CLIENTE=T5.CNC_CODIGO ';
            //+CHQ+PDV+TipoPG+AGF+TRC+CdFPE+NUM+CCX+CCXRec+sGrupo+DataINI+DataFIM+
            //sValorTitulo+cOficial+sCPFCNPJ+sObs+sLocal+DtEnvBoleto+DtRecBoleto+sVerificado+sNaoPagos+sVencimento;
        end;
        Titulo_receber1.SQL.Text := Titulo_receber1.SQL.Text + sOrdem;
      end
      else
        Titulo_receber1.SQL.Text:='SELECT T1.CNC_CODIGO, T1.PDV_CODIGO,T1.AGF_CODIGO,T1.CLI_CODIGO,T1.CNC_CLIENTE,T1.TRC_CODIGO, T1.TRC_NUMERO, T1.TRC_SEQUENCIA, '+
          ' T1.TRC_VENCIMENTO,T1.TRC_VALOR,T1.TRC_VALOR_PAGO,T1.TRC_SITUACAO,T1.TRC_OBSERVACAO, T1.TRC_TIPO_DOC, T1.TRC_TIPO_PAG, T2.CLI_RZ_SOCIAL, T5.CCX_GRUPO, '+
          ' DATEPART(dd, N1.NTF_DT_EMISSAO) AS Dia, '+
          ' DATEPART(mm, N1.NTF_DT_EMISSAO) AS Mes, '+
          ' DATEPART(yyyy, N1.NTF_DT_EMISSAO) AS Ano, '+
          ' 1 AS ORDEM '+
          ' FROM Titulo_a_receber T1, Cliente T2, PEDIDO_DE_VENDA P1, NOTA_FISCAL N1, CONTA_DE_CAIXA T5'+
          ' WHERE (T1.TRC_SITUACAO IN (0,1,8,9) '+sPagosChequePre+')'+
          CdFUN+CNC+CLI+sClassificacao+sTipo+CHQ+PDV+TipoPG+AGF+TRC+CdFPE+NUM+CCX+CCXRec+sGrupo+DataINI+DataFIM+cOficial+sNaoPagos+sVencimento+
          sValorTitulo+sCPFCNPJ+sObs+sLocal+DtEnvBoleto+DtRecBoleto+sVerificado+
          ' AND (T1.CCX_CODIGO=T5.CCX_CODIGO) '+
          ' AND (T1.CLI_CODIGO'+sAsterisco+'=T2.CLI_CODIGO) '+
          ' AND (T1.CNC_CLIENTE'+sAsterisco+'=T2.CNC_CODIGO) '+
          ' AND N1.NTF_TIPO_NOTA=361 '+
          ' AND T1.PDV_CODIGO=P1.PDV_CODIGO AND T1.CNC_CODIGO=P1.CNC_CODIGO '+
          ' AND P1.PDV_CODIGO=N1.NTF_PEDIDO AND P1.CNC_CODIGO=N1.CNC_PEDIDO '+
          sOrdem;

//showmessage(Titulo_receber1.SQL.Text);

      if ( cbxRelatorioGrafico.Checked ) and ( not rdgEmissaoNota.Checked ) and (cbxCobranca.Checked) then
      begin
        ReportTitulo(Titulo_receber1.SQL.Text, sFiltros);
        Titulo_receber1.Close;
        report.Free;
      end
      else
      begin

        if ( cbxRelatorioGrafico.Checked ) {and ( ckbSintetico.Checked )} and ( not ckbSuperSintetico.Checked ) then
        begin
          ReportTituloSintetico(Titulo_receber1.SQL.Text, sFiltros);
          Titulo_receber1.Close;
          report.Free;
        end
        else if ( cbxRelatorioGrafico.Checked ) {and ( ckbSintetico.Checked )} and ( ckbSuperSintetico.Checked ) then
        begin
          ReportTituloSuperSintetico(Titulo_receber1.SQL.Text, sFiltros);
          Titulo_receber1.Close;
          report.Free;
        end
        else
        begin
          Titulo_receber1.Active:=True;
          if Titulo_receber1.IsEmpty then
            Raise Exception.Create('Consulta Vazia!');
          if (report.Height > DM.Configuracao1.MaxLinhasImp) and
             (DM.Configuracao1.MaxLinhasImp <> 65) then
            report.Height := DM.Configuracao1.MaxLinhasImp;

          report.Preview;
          Titulo_receber1.Close;
          Close;
        end;
      end;
    end;
  end
  else if tag = 1 then //T�tulos Recebidos SQL-Server
  Begin
    Application.CreateForm(Trpt_BaixaRec,rpt_BaixaRec);
    with rpt_BaixaRec do
    Begin
      if ckbMeiaFolha.Checked then
        report.Options.PageLength := 32;

      zrlFiltros.Caption := sFiltros;

      if ckbSaltarPagina.Checked then
        zrbGrupo.ForceNewPage := True;
      if ckbSintetico.Checked then
      Begin
        if ckbSuperSintetico.Checked then
        Begin
          if ckbEspacoExtra.Checked then
            zrbRodapeGrupo.Height := zrbRodapeGrupo.Height + 1;
          zrbDetalhe.Height := 0;
          zrlDescCodigo.Enabled:=False;
          zrlDescPedido.Enabled:=False;
          zrlDescNumero.Enabled:=False;
          zrlDescSeq.Enabled:=False;
          zrlDescCliente.Enabled:=False;
          zrlDescVencimento.Enabled:=False;
        end
        else
          zrbDetalhe.Height := 1;

        zrlLinhaCabecalho.Top := zrlLinhaCabecalho.Top - 1;
        zrbCabecalhoPagina.Height := 6;
        zrlDescTipoPag.Enabled:=False;
        zrlDescValorDoc.Top := zrlDescValorDoc.Top - 1;
        zrlDescValorPag.Top := zrlDescValorPag.Top - 1;
        zrlValorDoc.Top     := zrlValorDoc.Top - 1;
        zrlValorPago.Top    := zrlValorPago.Top - 1;
        zrlDescDesconto.Top := zrlDescDesconto.Top - 1;
        zrlDesconto.Top     := zrlDesconto.Top - 1;
        zrlDescJuros.Top    := zrlDescJuros.Top - 1;
        zrlJuros.Top        := zrlJuros.Top - 1;

        zrlLinhaSubTotal.Enabled:=False //Linha SubTotal
      end
      else if ckbEspacoExtra.Checked then
        zrbDetalhe.Height:=3
      else
        zrbDetalhe.Height:=2;
      if ckbAgruparMes.Checked then
      Begin
        zrbGrupo.Expression := 'MES+ANO';
        if rdgVencimento.Checked then
          SZRLabel5.Caption := 'Vencimento'
        else if rdgPagamento.Checked then
          SZRLabel5.Caption := 'Pagamento'
        else if rdgEmissaoNota.Checked then
          SZRLabel5.Caption := 'Emissao Nota'
        else if rdgCadastro.Checked then
          SZRLabel5.Caption := 'Cadastro'
        else if rdgAlterado.Checked then
          SZRLabel5.Caption := 'Alterado'
        else if rdgVerificado.Checked then
          SZRLabel5.Caption := 'Verificado'
        else if rdgEntrega.Checked then
          SZRLabel5.Caption := 'Entrega';

      end
      else if ckbAgruparDia.Checked then
      Begin
        zrbGrupo.Expression := 'DIA+MES+ANO';
        if rdgVencimento.Checked then
          SZRLabel5.Caption := 'Vencimento'
        else if rdgPagamento.Checked then
          SZRLabel5.Caption := 'Pagamento'
        else if rdgEmissaoNota.Checked then
          SZRLabel5.Caption := 'Emissao Nota'
        else if rdgCadastro.Checked then
          SZRLabel5.Caption := 'Cadastro'
        else if rdgAlterado.Checked then
          SZRLabel5.Caption := 'Alterado'
        else if rdgVerificado.Checked then
          SZRLabel5.Caption := 'Verificado'
        else if rdgEntrega.Checked then
          SZRLabel5.Caption := 'Entrega';
      end
      else
      Begin
        zrbGrupo.Expression := '';
        zrbGrupo.Height := 0;
        zrbRodapeGrupo.Height := 0;
      end;

      if ckbAgruparGrupo.Checked then
        zrbGrupoCaixa.Expression := 'CCX_GRUPO'
      else if ckbAgruparCLI.Checked then
      Begin
        zrbGrupoCaixa.Expression := 'CNC_CLIENTE+CLI_RZ_SOCIAL';
        zrbGrupoCaixa.Height := 0;
//        zrbRodapeGrupoGrupoConta.Height := 3;
      end
      else
      Begin
        zrbGrupoCaixa.Expression := '';
        zrbGrupoCaixa.Height := 0;
//        zrbRodapeGrupoGrupoConta.Height := 0;
      end;

      Titulo_receber1.Close;
      if rdgVencimento.Checked then
        Titulo_receber1.SQL.Text:='SELECT DISTINCT T1.*, T2.CLI_RZ_SOCIAL, T5.CCX_GRUPO,'+
          ' DATEPART(dd, T1.TRC_VENCIMENTO) AS Dia, '+
          ' DATEPART(mm, T1.TRC_VENCIMENTO) AS Mes, '+
          ' DATEPART(yyyy, T1.TRC_VENCIMENTO) AS Ano, '+
          ' 1 AS ORDEM '+

          ' FROM Titulo_a_receber T1, Cliente T2, CONTA_DE_CAIXA T5 '+ //coment

          {',T3.PDV_CLASSIFICACAO '+
          ' FROM Titulo_a_receber T1, Cliente T2, CONTA_DE_CAIXA T5 '+
          ',PEDIDO_DE_VENDA T3 '
          ' WHERE (T1.PDV_CODIGO = T2.PDV_CODIGO) AND '+
          ' T1.TRC_SITUACAO IN (2,3) '+}

          ' WHERE T1.TRC_SITUACAO IN (2,3) '+ //coment

          CdFUN+CNC+CLI+sClassificacao+sTipo+CHQ+PDV+TipoPG+AGF+TRC+CdFPE+NUM+DataINI+DataFIM+CCX+CCXRec+sGrupo+cOficial+sNaoPagos+sVencimento+
          sValorTitulo+sPagCredito+sCPFCNPJ+sObs+sLocal+DtEnvBoleto+DtRecBoleto+sVerificado+
          ' AND T1.CCX_CODIGO*=T5.CCX_CODIGO '+
          ' AND T1.CNC_CLIENTE'+sAsterisco+'=T2.CNC_CODIGO '+
          ' AND T1.CLI_CODIGO'+sAsterisco+'=T2.CLI_CODIGO '+
          sOrdem
      else if rdgPagamento.Checked then
        Titulo_receber1.SQL.Text:='SELECT DISTINCT T1.*, T2.CLI_RZ_SOCIAL, T5.CCX_GRUPO,'+
          ' DATEPART(dd, T1.TRC_PAGAMENTO) AS Dia, '+
          ' DATEPART(mm, T1.TRC_PAGAMENTO) AS Mes, '+
          ' DATEPART(yyyy, T1.TRC_PAGAMENTO) AS Ano, '+
          ' 1 AS ORDEM '+
          ' FROM Titulo_a_receber T1, Cliente T2, CONTA_DE_CAIXA T5 '+
          ' WHERE T1.TRC_SITUACAO IN (2,3) '+
          CdFUN+CNC+CLI+sClassificacao+sTipo+CHQ+PDV+TipoPG+AGF+TRC+CdFPE+NUM+DataINI+DataFIM+CCX+CCXRec+sGrupo+cOficial+sNaoPagos+sVencimento+
          sValorTitulo+sPagCredito+sCPFCNPJ+sObs+sLocal+DtEnvBoleto+DtRecBoleto+sVerificado+
          ' AND T1.CCX_CODIGO*=T5.CCX_CODIGO '+
          ' AND T1.CNC_CLIENTE'+sAsterisco+'=T2.CNC_CODIGO '+
          ' AND T1.CLI_CODIGO'+sAsterisco+'=T2.CLI_CODIGO '+
          sOrdem
      else if rdgEmissaoNota.Checked then
        Titulo_receber1.SQL.Text:='SELECT DISTINCT T1.*, T2.CLI_RZ_SOCIAL, T5.CCX_GRUPO,'+
          ' DATEPART(dd, N1.NTF_DT_EMISSAO) AS Dia, '+
          ' DATEPART(mm, N1.NTF_DT_EMISSAO) AS Mes, '+
          ' DATEPART(yyyy, N1.NTF_DT_EMISSAO) AS Ano, '+
          ' 1 AS ORDEM '+
          ' FROM Titulo_a_receber T1, Cliente T2, PEDIDO_DE_VENDA P1, NOTA_FISCAL N1, CONTA_DE_CAIXA T5 '+
          ' WHERE T1.TRC_SITUACAO IN (2,3) '+
          CdFUN+CNC+CLI+sClassificacao+sTipo+CHQ+PDV+TipoPG+AGF+TRC+CdFPE+NUM+DataINI+DataFIM+CCX+CCXRec+sGrupo+cOficial+sNaoPagos+sVencimento+
          sValorTitulo+sPagCredito+sCPFCNPJ+sObs+sLocal+DtEnvBoleto+DtRecBoleto+sVerificado+
          ' AND T1.CCX_CODIGO=T5.CCX_CODIGO '+
          ' AND T1.CNC_CLIENTE'+sAsterisco+'=T2.CNC_CODIGO '+
          ' AND T1.CLI_CODIGO'+sAsterisco+'=T2.CLI_CODIGO '+
          ' AND N1.NTF_TIPO_NOTA=361 '+
          ' AND T1.PDV_CODIGO=P1.PDV_CODIGO '+
          ' AND T1.CNC_CODIGO=P1.CNC_CODIGO '+
          ' AND P1.PDV_CODIGO=N1.NTF_PEDIDO '+
          ' AND P1.CNC_CODIGO=N1.CNC_PEDIDO '+
          sOrdem
      else if rdgCadastro.Checked then
        Titulo_receber1.SQL.Text:='SELECT DISTINCT T1.*, T2.CLI_RZ_SOCIAL, T5.CCX_GRUPO,'+
          ' DATEPART(dd, T1.TRC_DT_CADASTRO) AS Dia, '+
          ' DATEPART(mm, T1.TRC_DT_CADASTRO) AS Mes, '+
          ' DATEPART(yyyy, T1.TRC_DT_CADASTRO) AS Ano, '+
          ' 1 AS ORDEM '+
          ' FROM Titulo_a_receber T1, Cliente T2, CONTA_DE_CAIXA T5 '+
          ' WHERE T1.TRC_SITUACAO IN (2,3) '+
          CdFUN+CNC+CLI+sClassificacao+sTipo+CHQ+PDV+TipoPG+AGF+TRC+CdFPE+NUM+DataINI+DataFIM+CCX+CCXRec+sGrupo+cOficial+sNaoPagos+sVencimento+
          sValorTitulo+sPagCredito+sCPFCNPJ+sObs+sLocal+DtEnvBoleto+DtRecBoleto+sVerificado+
          ' AND T1.CCX_CODIGO=T5.CCX_CODIGO '+
          ' AND T1.CNC_CLIENTE'+sAsterisco+'=T2.CNC_CODIGO '+
          ' AND T1.CLI_CODIGO'+sAsterisco+'=T2.CLI_CODIGO '+
          sOrdem
      else if rdgAlterado.Checked then
        Titulo_receber1.SQL.Text:='SELECT DISTINCT T1.*, T2.CLI_RZ_SOCIAL, T5.CCX_GRUPO,'+
          ' DATEPART(dd, T1.TRC_DT_ALTERADO) AS Dia, '+
          ' DATEPART(mm, T1.TRC_DT_ALTERADO) AS Mes, '+
          ' DATEPART(yyyy, T1.TRC_DT_ALTERADO) AS Ano, '+
          ' 1 AS ORDEM '+
          ' FROM Titulo_a_receber T1, Cliente T2, CONTA_DE_CAIXA T5 '+
          ' WHERE T1.TRC_SITUACAO IN (2,3) '+
          CdFUN+CNC+CLI+sClassificacao+sTipo+CHQ+PDV+TipoPG+AGF+TRC+CdFPE+NUM+DataINI+DataFIM+CCX+CCXRec+sGrupo+cOficial+sNaoPagos+sVencimento+
          sValorTitulo+sPagCredito+sCPFCNPJ+sObs+sLocal+DtEnvBoleto+DtRecBoleto+sVerificado+
          ' AND T1.CCX_CODIGO=T5.CCX_CODIGO '+
          ' AND T1.CNC_CLIENTE'+sAsterisco+'=T2.CNC_CODIGO '+
          ' AND T1.CLI_CODIGO'+sAsterisco+'=T2.CLI_CODIGO '+
          sOrdem
      else if rdgVerificado.Checked then
        Titulo_receber1.SQL.Text:='SELECT DISTINCT T1.*, T2.CLI_RZ_SOCIAL, T5.CCX_GRUPO,'+
          ' DATEPART(dd, T1.TRC_DT_VERIFICADO) AS Dia, '+
          ' DATEPART(mm, T1.TRC_DT_VERIFICADO) AS Mes, '+
          ' DATEPART(yyyy, T1.TRC_DT_VERIFICADO) AS Ano, '+
          ' 1 AS ORDEM '+
          ' FROM Titulo_a_receber T1, Cliente T2, CONTA_DE_CAIXA T5 '+
          ' WHERE T1.TRC_SITUACAO IN (2,3) '+
          CdFUN+CNC+CLI+sClassificacao+sTipo+CHQ+PDV+TipoPG+AGF+TRC+CdFPE+NUM+DataINI+DataFIM+CCX+CCXRec+sGrupo+cOficial+sNaoPagos+sVencimento+
          sValorTitulo+sPagCredito+sCPFCNPJ+sObs+sLocal+DtEnvBoleto+DtRecBoleto+sVerificado+
          ' AND T1.CCX_CODIGO=T5.CCX_CODIGO '+
          ' AND T1.CNC_CLIENTE'+sAsterisco+'=T2.CNC_CODIGO '+
          ' AND T1.CLI_CODIGO'+sAsterisco+'=T2.CLI_CODIGO '+
          sOrdem
      else if rdgEntrega.Checked then
        Raise exception.Create('Filtro n�o permitido para esse relat�rio!');

      Titulo_receber1.Open;
      if Titulo_receber1.IsEmpty then
        Raise Exception.Create('Consulta Vazia!');
      if (report.Height > DM.Configuracao1.MaxLinhasImp) and
         (DM.Configuracao1.MaxLinhasImp <> 65) then
        report.Height := DM.Configuracao1.MaxLinhasImp;
      report.Preview;
      Close;
    end;
  end
  else if tag = 2 then  //Previs�o de Receitas
  Begin
    Application.CreateForm(Trpt_PrevisaoReceita,rpt_PrevisaoReceita);
    with rpt_PrevisaoReceita do
    Begin
      if ckbMeiaFolha.Checked then
        report.Options.PageLength := 32;

      if ckbSaltarPagina.Checked then
        zrbGrupo.ForceNewPage := True;
      CreditoTotal := 0;
      DebitoTotal  := 0;
      if ckbSintetico.Checked then
      Begin
        if ckbAgruparDia.Checked then
          zrbGrupo.Height := 0;
        if ckbEspacoExtra.Checked then
          zrbRodapeGrupo.Height := zrbRodapeGrupo.Height + 1;
        ZRBand2.Height:=0;
        ZRLabel13.Enabled:=False; //Descricao ''Codigo''
        SZRLabel4.Enabled:=False; //Descricao ''Pedido''
        ZRLabel11.Enabled:=False; //Descricao ''Sequencia''
      end
      else if ckbEspacoExtra.Checked then
        ZRBand2.Height:=2
      else
        ZRBand2.Height:=1;
      Titulo_receber1.Close;
      Titulo_receber1.SQL.Text:='SELECT '+
        ' CNC_CODIGO     AS CNC_CODIGO,'+
        ' TRC_CODIGO     AS CODIGO,'+
        ' TRC_VENCIMENTO AS VENCIMENTO,'+
        ' TRC_SEQUENCIA  AS SEQUENCIA,'+
        ' TRC_VALOR      AS CREDITO,'+
        ' 0              AS DEBITO, '+
        ' PDV_CODIGO     AS PEDIDO '+
        ' FROM Titulo_a_receber T1 '+
        ' WHERE (T1.TRC_SITUACAO IN (0,1)) '+
        CdFUN+CNC+CLI+sClassificacao+sTipo+CHQ+PDV+TipoPG+AGF+TRC+CdFPE+NUM+DataINI+DataFIM+CCX+CCXRec+cOficial+sNaoPagos+sVencimento+
        sValorTitulo+sCPFCNPJ+sObs+sLocal+DtEnvBoleto+DtRecBoleto+sVerificado+
        ' UNION '+
        ' SELECT '+
        ' CNC_CODIGO     AS CNC_CODIGO,'+
        ' TPG_CODIGO     AS CODIGO,'+
        ' TPG_VENCIMENTO AS VENCIMENTO,'+
        ' TPG_SEQUENCIA  AS SEQUENCIA,'+
        ' 0              AS CREDITO,'+
        ' TPG_VALOR      AS DEBITO,'+
        ' PCP_CODIGO     AS PEDIDO '+
        ' FROM TITULO_A_PAGAR T2 '+
        ' WHERE (T2.TPG_SITUACAO  = 0) '+
        CdFUN2+CNC2+PCP+TipoPG2+TPG+NUM2+DataINI2+DataFIM2+CCX2+CCXRec2+cOficialTPG+sNaoPagosTPG+sVencimento2+
        sValorTitulo2+sObs2+
        ' ORDER BY VENCIMENTO, SEQUENCIA';
      Titulo_receber1.Open;
      if Titulo_receber1.IsEmpty then
        Raise Exception.Create('Consulta Vazia!');
      if (report.Height > DM.Configuracao1.MaxLinhasImp) and
         (DM.Configuracao1.MaxLinhasImp <> 65) then
        report.Height := DM.Configuracao1.MaxLinhasImp;        
      report.Preview;
      Close;
    end;
  end
  else if tag = 3 then //Gr�fico T�tulos Por Vendedor
  Begin
    Application.CreateForm(TfMxGraficoTitulosVendedor, fMxGraficoTitulosVendedor);
    with fMxGraficoTitulosVendedor do
    Begin
      tag := 0;
      Query1.SQL.Text:='SELECT T3.FUN_APELIDO AS DESCRICAO,'+
        ' SUM(T1.TRC_VALOR_PAGO) AS TOTAL '+
        ' FROM TITULO_A_RECEBER T1, PEDIDO_DE_VENDA T2, FUNCIONARIO T3 '+
        ' WHERE T1.CNC_CODIGO=T2.CNC_CODIGO AND T1.CNC_CODIGO=T3.CNC_CODIGO '+
        ' AND (T3.FUN_SITUACAO<>1 OR T3.FUN_SITUACAO IS NULL) '+
        ' AND T1.PDV_CODIGO=T2.PDV_CODIGO '+
        ' AND T1.TRC_SITUACAO=2 AND T2.PDV_SITUACAO=4 '+
        CdFUN+CNC+CLI+sClassificacao+sTipo+CHQ+PDV+TipoPG+AGF+TRC+CdFPE+NUM+DataINI+DataFIM+CCX+CCXRec+cOficial+sNaoPagos+sVencimento+
        sValorTitulo+sCPFCNPJ+sObs+sLocal+DtEnvBoleto+DtRecBoleto+sVerificado+
        ' AND T2.PDV_CODIGO IN '+
        ' (SELECT PDV_CODIGO FROM ITEM_DE_PEDIDO_DE_VENDA T30 '+
        ' WHERE T30.PDV_CODIGO=T2.PDV_CODIGO AND T30.CNC_CODIGO=T2.CNC_CODIGO AND '+
        ' T30.FUN_CODIGO=T3.FUN_CODIGO) '+
        ' GROUP BY T3.FUN_APELIDO '+
        ' HAVING SUM(T1.TRC_VALOR_PAGO) > 0 '+
        ' ORDER BY T3.FUN_APELIDO ';
      ShowModal;
    end;
  end
  else if tag = 6 then //Gr�fico T�tulos Por Conta de Caixa ou por AGF
  Begin
    Application.CreateForm(TfMxGraficoTitulosRecebidos, fMxGraficoTitulosRecebidos);
    with fMxGraficoTitulosRecebidos do
    Begin
      tag := 0;
      if not ckbAgruparAGF.Checked then
      Begin
        if (CCX <> '') or (CCXRec <> '') then
          Query1.SQL.Text:='SELECT UPPER(T1.TRC_CODIGO) AS DESCRICAO,'+
            'SUM(T1.TRC_VALOR_PAGO) AS TOTAL '+
            'FROM TITULO_A_RECEBER T1, CONTA_DE_CAIXA T2 '+
            'WHERE T1.TRC_SITUACAO=2 '+
            CdFUN+CNC+CLI+sClassificacao+sTipo+CHQ+TipoPG+AGF+TRC+CdFPE+NUM+DataINI+DataFIM+CCX+CCXRec+cOficial+sNaoPagos+sVencimento+
            sValorTitulo+sCPFCNPJ+sObs+sLocal+DtEnvBoleto+DtRecBoleto+sVerificado+
            ' AND T1.CCX_CODIGO=T2.CCX_CODIGO '+
            'GROUP BY T1.TRC_CODIGO '+
            'HAVING SUM(T1.TRC_VALOR_PAGO) > 0 '+
            'ORDER BY T1.TRC_CODIGO '
        else
          Query1.SQL.Text:='SELECT T2.CCX_DESCRICAO AS DESCRICAO,'+
            'SUM(T1.TRC_VALOR_PAGO) AS TOTAL '+
            'FROM TITULO_A_RECEBER T1, CONTA_DE_CAIXA T2 '+
            'WHERE  T1.TRC_SITUACAO=2 '+
            CdFUN+CNC+CLI+sClassificacao+sTipo+CHQ+TipoPG+AGF+TRC+CdFPE+NUM+DataINI+DataFIM+cOficial+sNaoPagos+sVencimento+
            sValorTitulo+sCPFCNPJ+sObs+sLocal+DtEnvBoleto+DtRecBoleto+sVerificado+
            ' AND T1.CCX_CODIGO=T2.CCX_CODIGO '+
            'GROUP BY T2.CCX_DESCRICAO '+
            'HAVING SUM(T1.TRC_VALOR_PAGO) > 0 '+
            'ORDER BY T2.CCX_DESCRICAO ';
      end
      else
      Begin
        if (CCX <> '') or (CCXRec <> '') then
          Query1.SQL.Text:='SELECT UPPER(T3.AGF_DESCRICAO) AS DESCRICAO,'+
            ' SUM(T1.TRC_VALOR_PAGO) AS TOTAL '+
            ' FROM TITULO_A_RECEBER T1, CONTA_DE_CAIXA T2, AGENTE_FINANCEIRO T3 '+
            ' WHERE T1.TRC_SITUACAO=2 '+
            CdFUN+CNC+CLI+sClassificacao+sTipo+CHQ+TipoPG+AGF+TRC+CdFPE+NUM+DataINI+DataFIM+CCX+CCXRec+cOficial+sNaoPagos+sVencimento+
            sValorTitulo+sCPFCNPJ+sObs+sLocal+DtEnvBoleto+DtRecBoleto+sVerificado+
            ' AND T1.CCX_CODIGO=T2.CCX_CODIGO '+
            ' AND T1.AGF_CODIGO=T3.AGF_CODIGO '+
            ' GROUP BY T3.AGF_DESCRICAO '+
            ' HAVING SUM(T1.TRC_VALOR_PAGO) > 0 '+
            ' ORDER BY T3.AGE_DESCRICAO '
        else
          Query1.SQL.Text:='SELECT T2.AGF_DESCRICAO AS DESCRICAO,'+
            'SUM(T1.TRC_VALOR_PAGO) AS TOTAL '+
            'FROM TITULO_A_RECEBER T1, AGENTE_FINANCEIRO T2 '+
            'WHERE T1.TRC_SITUACAO=2 '+
            CdFUN+CNC+CLI+sClassificacao+sTipo+CHQ+TipoPG+AGF+TRC+CdFPE+NUM+DataINI+DataFIM+cOficial+sNaoPagos+sVencimento+
            sValorTitulo+sCPFCNPJ+sObs+sLocal+DtEnvBoleto+DtRecBoleto+sVerificado+
            'AND T1.AGF_CODIGO=T2.AGF_CODIGO '+
            'GROUP BY T2.AGF_DESCRICAO '+
            'HAVING SUM(T1.TRC_VALOR_PAGO) > 0 '+
            'ORDER BY T2.AGF_DESCRICAO ';
      end;
      ShowModal;
    end;
  end
  else if tag = 7 then //Extrato do Cliente
  Begin
    Application.CreateForm(Trpt_ExtratoCliente,rpt_ExtratoCliente);
    with rpt_ExtratoCliente do
    Begin
      Tag := 0;

      zrlDataINI.Caption := mskDataINI.Text; //Campo invis�vel
      zrlDataFIM.Caption := mskDataFIM.Text; //Campo invis�vel

      if ckbMeiaFolha.Checked then
        report.Options.PageLength := 32;
      if not VerificaDataBranco(mskDataFIM.Text) then
        sFiltros := '(Ref='+DateToStr(DM.Configuracao1.Data)+')'+sFiltros
      else
        sFiltros := '(Ref='+mskDataFIM.Text+')'+sFiltros;

      if ckbNaoExibirResumo.Checked then
        zrbRodapeGrupo.Height := 1; //Somente Linha

      if rdgVencimento.Checked then
        zrlFiltros.Caption := '(Ven)' + sFiltros
      else if rdgPagamento.Checked then
        zrlFiltros.Caption := '(Pag)' + sFiltros
      else if rdgEmissaoNota.Checked then
        zrlFiltros.Caption := '(Emi)' + sFiltros
      else if rdgCadastro.Checked then
        zrlFiltros.Caption := '(Cad)' + sFiltros
      else if rdgAlterado.Checked then
        zrlFiltros.Caption := '(Alt)' + sFiltros
      else if rdgVerificado.Checked then
        zrlFiltros.Caption := '(Ver)' + sFiltros
      else if rdgEntrega.Checked then
        zrlFiltros.Caption := '(EntPed)' + sFiltros;

      if ckbSaltarPagina.Checked then
        zrbGrupoCliente.ForceNewPage := True;

      if ckbSintetico.Checked then
      Begin
        if ckbEspacoExtra.Checked then
          zrbRodapeGrupo.Height := zrbRodapeGrupo.Height + 1;
        zrbDetalhe.Height:=1;
        zrlLinha3.Top := zrlLinha3.Top-1;
        zrbGrupoCliente.Height := zrbGrupoCliente.Height -1;
        if ckbSuperSintetico.Checked then
        Begin
          zrbGrupoCliente.Height := zrbGrupoCliente.Height -2; //Total -3
          zrlLinhaRodapeDia.Enabled := False;
          zrbDetalhe.Height:=0;
          zrlDescCodigo.Enabled:=False;
          zrlDescNumero.Enabled:=False;
          zrlDescSeq.Enabled:=False;
          zrlDescAgente.Enabled:=False;
          zrlDescOrigem.Enabled:=False;
          zrlVencimento.Enabled:=False;
          zrlVendedor.Enabled:=False;
          SZRLabel13.Enabled:=False;
        end;
      end
      else if ckbEspacoExtra.Checked then
        zrbDetalhe.Height := 2;

      zrlDataINI.Caption := mskDataINI.Text;
      zrlDataFIM.Caption := mskDataFIM.Text;

      Entidade.Close;
      Entidade.SQL.Text:='SELECT '+
        ' T1.CNC_CODIGO '+
        ',T1.PDV_CODIGO '+
        ',T1.TRC_DT_CADASTRO '+
        ',T1.AGF_CODIGO '+
        ',T1.CLI_CODIGO '+
        ',T1.CNC_CLIENTE '+
        ',T1.TRC_CODIGO '+
        ',T1.TRC_NUMERO '+
        ',T1.TRC_SEQUENCIA '+
        ',T1.TRC_VENCIMENTO '+
        ',T1.TRC_VALOR '+
        ',T1.TRC_VALOR_PAGO '+
        ',T1.TRC_SITUACAO '+
        ',T1.TRC_OBSERVACAO '+
        ',T1.TRC_TIPO_DOC '+
        ',T1.TRC_TIPO_PAG '+
        ',T1.CNC_CHEQUE '+
        ',T1.CHQ_CODIGO '+
        ',T1.TRC_CHEQUE_DEVOLVIDO '+
        ',T1.TRC_DTORIGINAL '+
        ',T1.FPE_CODIGO '+
        ',T1.TRC_TIPO_PEDIDO '+
        ',T1.TRC_DT_EMISSAO_BOLETO '+
        ',T1.TRC_DT_RECEBIMENTO_BOLETO '+
        ',T1.TRC_VERIFICADO '+
        ',T1.TRC_DT_VERIFICADO '+
        ',T1.TRC_PAGAMENTO '+
        ',T1.CCX_CODIGO '+
        ',T2.CLI_RZ_SOCIAL '+
        ',T1.CCX_CODIGO '+
        ',1 AS ORDEM '+
        ' FROM Titulo_a_receber T1, Cliente T2 '+
        ' WHERE (T1.TRC_SITUACAO IN (0,1,8,9,2)) '+ //Em Aberto e Pagos
        CdFUN+CNC+CLI+sClassificacao+sTipo+CHQ+PDV+TipoPG+AGF+TRC+CdFPE+NUM+CCX+CCXRec+sGrupo+DataINI+DataFIM+
        sValorTitulo+cOficial+sCPFCNPJ+sObs+sLocal+DtEnvBoleto+DtRecBoleto+sVerificado+sNaoPagos+sVencimento+
        ' AND (T1.CLI_CODIGO '+sAsterisco+'= T2.CLI_CODIGO) '+
        ' AND (T1.CNC_CLIENTE '+sAsterisco+'= T2.CNC_CODIGO) '+

        ' UNION SELECT '+
        ' T1.CNC_CODIGO '+
        ',0 AS PDV_CODIGO '+
        ',T1.CHQ_DT_CADASTRO '+
        ',0 AS AGF_CODIGO '+
        ',T1.CLI_CODIGO '+
        ',T1.CNC_CLIENTE '+
        ',T1.CHQ_CODIGO AS TRC_CODIGO '+
        ',T1.CHQ_NUMERO AS TRC_NUMERO '+
        ',''CH'' AS TRC_SEQUENCIA '+
        ',T1.CHQ_DATA AS TRC_VENCIMENTO '+
        ',T1.CHQ_VALOR AS TRC_VALOR '+
        ',0 AS TRC_VALOR_PAGO '+
        ',0 AS TRC_SITUACAO '+
        ',T1.CHQ_OBSERVACAO AS TRC_OBSERVACAO '+
        ',0 AS TRC_TIPO_DOC '+
        ',0 AS TRC_TIPO_PAG '+
        ',T1.CNC_CODIGO '+
        ',CHQ_CODIGO '+
        ',0 AS TRC_CHEQUE_DEVOLVIDO '+
        ',0 AS TRC_DTORIGINAL '+
        ',0 AS FPE_CODIGO '+
        ',0 AS TRC_TIPO_PEDIDO '+
        ',0 AS TRC_DT_EMISSAO_BOLETO '+
        ',0 AS TRC_DT_RECEBIMENTO_BOLETO '+
        ',0 AS TRC_VERIFICADO '+
        ',0 AS TRC_DT_VERIFICADO '+
        ',0 AS TRC_PAGAMENTO '+
        ',0 AS CCX_CODIGO '+
        ',T5.CLI_RZ_SOCIAL '+
        ',0 AS CCX_GRUPO '+
        ',0 AS ORDEM '+                             //Para colocar os cheques antes dos t�tulos
        ' FROM CHEQUE T1, CLIENTE T5  '+
        ' WHERE T1.CHQ_ER=''R'' '+
        ' AND (T1.CHQ_SITUACAO IN (3,4) '+ //Somente Cheques Devolvidos, N�o utilizados e Pre-Datados
        '  OR  (T1.CHQ_UTILIZADO=0) OR CHQ_DATA>='''+MesDia(DM.Configuracao1.Data+1)+''') '+
        CdFUN+CNC+CLI+sClassificacao+sTipo+DataCHQINI+DataCHQFIM+
        ' AND T1.CLI_CODIGO=T5.CLI_CODIGO '+
        ' AND T1.CNC_CLIENTE=T5.CNC_CODIGO '+
        sOrdem;
        //+CHQ+PDV+TipoPG+AGF+TRC+CdFPE+NUM+CCX+CCXRec+sGrupo+DataINI+DataFIM+
        //sValorTitulo+cOficial+sCPFCNPJ+sObs+sLocal+DtEnvBoleto+DtRecBoleto+sVerificado+sNaoPagos+sVencimento;

      Entidade.Open;
      if Entidade.IsEmpty then
        Raise Exception.Create('Consulta Vazia!');
      if (report.Height > DM.Configuracao1.MaxLinhasImp) and
         (DM.Configuracao1.MaxLinhasImp <> 65) then
        report.Height := DM.Configuracao1.MaxLinhasImp;
      report.Preview;
      Entidade.Close;
      Close;
    end;
  end
  else if tag = 8 then //Registro de Duplicata
  Begin
    Application.CreateForm(Trpt_RegistroDuplicata,rpt_RegistroDuplicata);
    with rpt_RegistroDuplicata do
    Begin
      if ckbMeiaFolha.Checked then
        report.Options.PageLength := 32;

      if ckbNaoExibirResumo.Checked then
        zrbRodapeGrupo.Height := 1; //Somente Linha

      zrlFiltros.Caption := sFiltros;

      if ckbSaltarPagina.Checked then
        zrbGrupo.ForceNewPage := True;

      if ckbSintetico.Checked then
      Begin
        if ckbEspacoExtra.Checked then
          zrbGrupo.Height := zrbGrupo.Height + 1;
        zrbDetalhe.Height:=0;
        zrlDescCodigo.Enabled:=False;
        zrlDescNumero.Enabled:=False;
        zrlDescSeq.Enabled:=False;
        zrlLinhaSubTotal.Enabled:=False;
      end
      else if ckbEspacoExtra.Checked then
        zrbDetalhe.Height := 2;

      Entidade.Close;
      Entidade.SQL.Text:='SELECT T1.*,T2.*,1 AS ORDEM '+
        ' FROM TITULO_A_RECEBER T1, CLIENTE T2 '+
        ' WHERE T1.TRC_SITUACAO IN (0,1,8,9,2) '+ //Em Aberto e Pagos
        CdFUN+CNC+CLI+sClassificacao+sTipo+CHQ+PDV+TipoPG+AGF+TRC+CdFPE+NUM+CCX+CCXRec+sGrupo+DataINI+DataFIM+
        sValorTitulo+cOficial+sCPFCNPJ+sObs+sLocal+DtEnvBoleto+DtRecBoleto+sVerificado+sNaoPagos+sVencimento+
        ' AND T1.CLI_CODIGO'+sAsterisco+'=T2.CLI_CODIGO '+
        ' AND T1.CNC_CLIENTE'+sAsterisco+'=T2.CNC_CODIGO '+
        sOrdem;
      Entidade.Open;
      if Entidade.IsEmpty then
        Raise Exception.Create('Consulta Vazia!');
      if (report.Height > DM.Configuracao1.MaxLinhasImp) and
         (DM.Configuracao1.MaxLinhasImp <> 65) then
        report.Height := DM.Configuracao1.MaxLinhasImp;
      report.Preview;
      Entidade.Close;
      Close;
    end;
  end
  else if tag = 9 then //Pagamento Completo
  Begin
    Application.CreateForm(Trpt_BaixaRec,rpt_BaixaRec);
    with rpt_BaixaRec do
    Begin
      iDiasAtrazo := 60;
      zrlTituloRelatorio.Caption := 'SIAC - Relatorio Pagamento Completo (Atrazo>='+IntToStr(iDiasAtrazo)+')';
      if ckbMeiaFolha.Checked then
        report.Options.PageLength := 32;

      zrlFiltros.Caption := sFiltros;

      if ckbSaltarPagina.Checked then
        zrbGrupo.ForceNewPage := True;
      if ckbSintetico.Checked then
      Begin
        if ckbSuperSintetico.Checked then
        Begin
          if ckbEspacoExtra.Checked then
            zrbRodapeGrupo.Height := zrbRodapeGrupo.Height + 1;
          zrbDetalhe.Height := 0;
          zrlDescCodigo.Enabled:=False;
          zrlDescPedido.Enabled:=False;
          zrlDescNumero.Enabled:=False;
          zrlDescSeq.Enabled:=False;
          zrlDescCliente.Enabled:=False;
          zrlDescVencimento.Enabled:=False;
        end
        else
          zrbDetalhe.Height := 1;

        zrlLinhaCabecalho.Top := zrlLinhaCabecalho.Top - 1;
        zrbCabecalhoPagina.Height := 6;
        zrlDescTipoPag.Enabled:=False;
        zrlDescValorDoc.Top := zrlDescValorDoc.Top - 1;
        zrlDescValorPag.Top := zrlDescValorPag.Top - 1;
        zrlValorDoc.Top     := zrlValorDoc.Top - 1;
        zrlValorPago.Top    := zrlValorPago.Top - 1;
        zrlDescDesconto.Top := zrlDescDesconto.Top - 1;
        zrlDesconto.Top     := zrlDesconto.Top - 1;
        zrlDescJuros.Top    := zrlDescJuros.Top - 1;
        zrlJuros.Top        := zrlJuros.Top - 1;

        zrlLinhaSubTotal.Enabled:=False //Linha SubTotal
      end
      else if ckbEspacoExtra.Checked then
        zrbDetalhe.Height:=3
      else
        zrbDetalhe.Height:=2;
      if ckbAgruparMes.Checked then
      Begin
        zrbGrupo.Expression := 'MES+ANO';
        if rdgPagamento.Checked then
          SZRLabel5.Caption := 'Pagamento'
        else
          Raise exception.Create('Filtro inv�lido para esse relat�rio!');

      end
      else if ckbAgruparDia.Checked then
      Begin
        zrbGrupo.Expression := 'DIA+MES+ANO';
        if rdgPagamento.Checked then
          SZRLabel5.Caption := 'Pagamento'
        else
          Raise exception.Create('Filtro inv�lido para esse relat�rio!');
      end
      else
      Begin
        zrbGrupo.Expression := '';
        zrbGrupo.Height := 0;
        zrbRodapeGrupo.Height := 0;
      end;

      if ckbAgruparGrupo.Checked then
        zrbGrupoCaixa.Expression := 'CCX_GRUPO'
      else if ckbAgruparCLI.Checked then
      Begin
        zrbGrupoCaixa.Expression := 'CNC_CLIENTE+CLI_RZ_SOCIAL';
        zrbGrupoCaixa.Height := 0;
      end
      else
      Begin
        zrbGrupoCaixa.Expression := '';
        zrbGrupoCaixa.Height := 0;
      end;

      Titulo_receber1.Close;
      Titulo_receber1.SQL.Text:='SELECT DISTINCT T1.*, T2.CLI_RZ_SOCIAL, T5.CCX_GRUPO,'+
        ' DATEPART(dd, T1.TRC_PAGAMENTO) AS Dia, '+
        ' DATEPART(mm, T1.TRC_PAGAMENTO) AS Mes, '+
        ' DATEPART(yyyy, T1.TRC_PAGAMENTO) AS Ano, '+
        ' 1 AS ORDEM '+
        ' FROM Titulo_a_receber T1, Cliente T2, CONTA_DE_CAIXA T5 '+
        ' WHERE T1.TRC_SITUACAO IN (2,3) '+
        CdFUN+CNC+CLI+sClassificacao+sTipo+CHQ+PDV+TipoPG+AGF+TRC+CdFPE+NUM+DataINI+DataFIM+CCX+CCXRec+sGrupo+cOficial+sNaoPagos+sVencimento+
        sValorTitulo+sPagCredito+sCPFCNPJ+sObs+sLocal+DtEnvBoleto+DtRecBoleto+sVerificado+
        ' AND T1.TRC_PAGAMENTO>=(T1.TRC_VENCIMENTO+'+IntToStr(iDiasAtrazo)+') '+ //T�tulos Atrasados      //T�tulos com mais de 60 dias de atraso
        ' AND (T1.TRC_VALOR+T1.TRC_JUROS)<=(T1.TRC_VALOR_PAGO+T1.TRC_DESCONTO+T1.TRC_CRED_CLI) '+ //Pago Total
        ' AND T1.CCX_CODIGO*=T5.CCX_CODIGO '+
        ' AND T1.CNC_CLIENTE'+sAsterisco+'=T2.CNC_CODIGO '+
        ' AND T1.CLI_CODIGO'+sAsterisco+'=T2.CLI_CODIGO '+
        sOrdem;
      Titulo_receber1.Open;
      if Titulo_receber1.IsEmpty then
        Raise Exception.Create('Consulta Vazia!');
      if (report.Height > DM.Configuracao1.MaxLinhasImp) and
         (DM.Configuracao1.MaxLinhasImp <> 65) then
        report.Height := DM.Configuracao1.MaxLinhasImp;
      report.Preview;
      Close;
    end;
  end
end;

procedure TfMxSelTitulos.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfMxSelTitulos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Vendedor1.Close;
  CentroCusto1.Close;
  Action := cafree;
end;

procedure TfMxSelTitulos.ckbCentroDeCustoClick(Sender: TObject);
begin
  if ckbCentroDeCusto.Checked then
  Begin
    CentroCusto1.Open;
    dblCOdigoCNC.Color:=clWindow;
    dblCOdigoCNC.Enabled:=True;
    dblCOdigoCNC.KeyValue := DM.Configuracao1.CodigoCNC;
    try
      dblCOdigoCNC.SetFocus;
    except
    end;
  end
  else
  Begin
    CentroCusto1.Close;
    dblCOdigoCNC.Color:=AlteraCorComponentes;
    dblCOdigoCNC.KeyValue:=-1;
    dblCOdigoCNC.Enabled:=False;
  end;
end;

procedure TfMxSelTitulos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=chr(27) then
    Close;
end;

procedure TfMxSelTitulos.edtCodigoCLIKeyPress(Sender: TObject;
  var Key: Char);
begin
  If key=chr(32) then
  Begin
    edtCodigoCLI.Clear;
    key:=chr(0);
    Application.CreateForm(TfCadCli, fCadCli);
    fCadCli.tag:=14;
    fCadCli.CentroCusto2.open;
    fCadCli.CentroCusto2.LocalizarCod(DM.Configuracao1.CodigoCNC);
    fCadCli.dblCentroDeCusto.KeyValue:=DM.Configuracao1.CodigoCNC;
    fCadCli.Showmodal;
  End;
end;

procedure TfMxSelTitulos.ckbCodigoPedidoClick(Sender: TObject);
begin
  if ckbCodigoPedido.Checked then
  Begin
    edtCodigoPedido.Color:=clWindow;
    edtCodigoPedido.Enabled:=True;
    edtCodigoPedido.SetFocus;
  end
  else
  Begin
    edtCodigoPedido.Color:=AlteraCorComponentes;
    edtCodigoPedido.Text:='';
    edtCodigoPedido.Enabled:=False;
  end;
end;

procedure TfMxSelTitulos.ckbTipoPagClick(Sender: TObject);
begin
  if ckbTipoPag.Checked then
  Begin
    Parametro1.Open;
    cmbTipoPag.Color := clWindow;
    cmbTipoPag.Enabled := True;
    cmbTipoPag.ItemIndex := 0;
    dblTipoPag.Color:=clWindow;
    dblTipoPag.KeyValue:=Parametro1.CodigoPAR;
    dblTipoPag.Enabled:=True;
  end
  else
  Begin
    Parametro1.Close;
    cmbTipoPag.Color := AlteraCorComponentes;
    cmbTipoPag.Enabled := False;
    cmbTipoPag.ItemIndex := -1;
    dblTipoPag.Color:=AlteraCorComponentes;
    dblTipoPag.KeyValue:=0;
    dblTipoPag.Enabled:=False;
  End;
end;

procedure TfMxSelTitulos.ckbCodigoAGFClick(Sender: TObject);
begin
  if ckbCodigoAGF.Checked then
  Begin
    AgenteFin1.Open;
    cmbCondicaoCodigoAGF.Color := clWindow;
    cmbCondicaoCodigoAGF.Enabled := True;
    cmbCondicaoCodigoAGF.ItemIndex := 0;
    dblCodigoAGF.Color:=clWindow;
    dblCodigoAGF.Enabled:=True;
  end
  else
  Begin
    AgenteFin1.Close;
    cmbCondicaoCodigoAGF.Color := AlteraCorComponentes;
    cmbCondicaoCodigoAGF.Enabled := False;
    cmbCondicaoCodigoAGF.ItemIndex := -1;
    dblCodigoAGF.Color:=AlteraCorComponentes;
    dblCodigoAGF.KeyValue:=0;
    dblCodigoAGF.Enabled:=False;
  end;
end;

procedure TfMxSelTitulos.ckbCodigoTituloClick(Sender: TObject);
begin
  if ckbCodigoTitulo.Checked then
  Begin
    edtCodigoTitulo.Color:=clWindow;
    edtCodigoTitulo.Enabled:=True;
    edtCodigoTitulo.SetFocus;
  end
  else
  Begin
    edtCodigoTitulo.Color:=AlteraCorComponentes;
    edtCodigoTitulo.Clear;
    edtCodigoTitulo.Enabled:=False;
  end;
end;

procedure TfMxSelTitulos.ckbNumeroClick(Sender: TObject);
begin
  if ckbNumero.Checked then
  Begin
    edtNumero.Color:=clWindow;
    edtNumero.Enabled:=True;
    edtNumero.SetFocus;
  end
  else
  Begin
    edtNumero.Color:=AlteraCorComponentes;
    edtNumero.Clear;
    edtNumero.Enabled:=False;
  end;
end;

procedure TfMxSelTitulos.ckbCodigoCCXClick(Sender: TObject);
begin
  if ckbCodigoCCX.Checked then
  Begin
    with Conta_de_Caixa1 do
    Begin
      Close;
      SQL.Text := 'SELECT * FROM CONTA_DE_CAIXA '+
        ' WHERE CCX_DC=''C'' '+
        ' AND CCX_SITUACAO<>1 '+
        ' AND CCX_AVULSO=0 '+
        ' ORDER BY CCX_DESCRICAO ASC ';
      Open;
    end;
    cmbTipoConta.Color:=clWindow;
    cmbTipoConta.Enabled:=True;
    cmbTipoConta.ItemIndex := 0;
    dblCodigoCCX.Color:=clWindow;
    dblCodigoCCX.Enabled:=True;
    dblCodigoCCX.KeyValue := Conta_de_Caixa1.CodigoCCX;
    dblCodigoCCX.SetFocus;
  end
  else
  Begin
    Conta_de_Caixa1.Close;
    cmbTipoConta.Color:=AlteraCorComponentes;
    cmbTipoConta.Enabled:=False;
    cmbTipoConta.ItemIndex := -1;
    dblCodigoCCX.KeyValue:=-1;
    dblCodigoCCX.Color:=AlteraCorComponentes;
    dblCodigoCCX.Enabled:=False;
  end;
end;

procedure TfMxSelTitulos.ckbAgruparMesClick(Sender: TObject);
begin
  if ckbAgruparMes.Checked then
  Begin
    ckbSaltarPagina.Enabled := True;
    ckbAgruparDia.Checked := False;
    ckbAgruparDia.Enabled := False;
    cmbOrdem.Enabled := False;
    if rdgVencimento.Checked then
      cmbOrdem.ItemIndex := 3
    else if rdgCadastro.Checked or
            rdgEntrega.Checked then
      cmbOrdem.ItemIndex := 6
    else if rdgAlterado.Checked then
      cmbOrdem.ItemIndex := 7
    else
      cmbOrdem.ItemIndex := 4      
  end
  else
  Begin
    if (tag <> 2) and (tag <> 3) then //Previs�o de Receita
    Begin
      cmbOrdem.Enabled := True;
      ckbAgruparDia.Enabled := True;
    end;
    if (not ckbAgruparAGF.Checked) and (not ckbAgruparDia.Checked) then
      ckbSaltarPagina.Enabled := False;
  end;
end;

procedure TfMxSelTitulos.ckbAgruparAGFClick(Sender: TObject);
begin
  if ckbAgruparAGF.Checked then
  Begin
    ckbSaltarPagina.Enabled := True;
    ckbCodigoAGF.Checked := False;
    ckbCodigoAGF.Enabled := False;
  end
  else
  Begin
    ckbCodigoAGF.Enabled := True;
      if (not ckbAgruparDia.Checked) and (not ckbAgruparMes.Checked) then
    ckbSaltarPagina.Enabled := False;
  end;
end;

procedure TfMxSelTitulos.ckbEspacoExtraClick(Sender: TObject);
begin
//  if ckbEspacoExtra.Checked then
//    ckbSintetico.Checked := False;
end;

procedure TfMxSelTitulos.ckbOficialClick(Sender: TObject);
begin
  if ckbOficial.Checked then
    ckbNaoOficial.Checked := False;
end;

procedure TfMxSelTitulos.ckbNaoOficialClick(Sender: TObject);
begin
  if ckbNaoOficial.Checked then
  Begin
    ckbOficial.Checked := False;
    ckbNumero.Checked := False;
    ckbNumero.Enabled := False;
  end
  else
    ckbNumero.Enabled := True;
end;

procedure TfMxSelTitulos.ckbAgruparDiaClick(Sender: TObject);
begin
  if ckbAgruparDia.Checked then
  Begin
    ckbSaltarPagina.Enabled := True;
    ckbAgruparMes.Checked := False;
    ckbAgruparMes.Enabled := False;
    cmbOrdem.Enabled := False;
    if rdgVencimento.Checked then
      cmbOrdem.ItemIndex := 3
    else if rdgCadastro.Checked or
            rdgEntrega.Checked then
      cmbOrdem.ItemIndex := 6
    else if rdgAlterado.Checked then
      cmbOrdem.ItemIndex := 7
    else
      cmbOrdem.ItemIndex := 4;
  end
  else
  Begin
    if (tag <> 2) and (tag <> 3) then //Previs�o de Receita
      cmbOrdem.Enabled := True;
    ckbAgruparMes.Enabled := True;
    if (not ckbAgruparAGF.Checked) and (not ckbAgruparMes.Checked) then
      ckbSaltarPagina.Enabled := False;
  end;
end;

procedure TfMxSelTitulos.ckbAgruparGrupoClick(Sender: TObject);
begin
  if ckbAgruparGrupo.Checked then
    ckbAgruparCLI.Checked := False;
end;

procedure TfMxSelTitulos.ckbCPFCNPJClick(Sender: TObject);
begin
  if ckbCPFCNPJ.Checked then
  Begin
    edtCPFCNPJ.Color:=clWindow;
    edtCPFCNPJ.Enabled:=True;
    edtCPFCNPJ.SetFocus;
  end
  else
  Begin
    edtCPFCNPJ.Color:=AlteraCorComponentes;
    edtCPFCNPJ.Clear;
    edtCPFCNPJ.Enabled:=False;
  end;
end;

procedure TfMxSelTitulos.ckbObservacaoClick(Sender: TObject);
begin
  if ckbObservacao.Checked then
  Begin
    edtObservacao.Color:=clWindow;
    edtObservacao.Enabled:=True;
    edtObservacao.SetFocus;
  end
  else
  Begin
    edtObservacao.Color:=AlteraCorComponentes;
    edtObservacao.Clear;
    edtObservacao.Enabled:=False;
  end;
end;

procedure TfMxSelTitulos.ckbCodigoCCXRecebimentoClick(Sender: TObject);
begin
  if ckbCodigoCCXRecebimento.Checked then
  Begin
    with Conta_de_Caixa2 do
    Begin
      Close;
      SQL.Text := 'SELECT * FROM CONTA_DE_CAIXA '+
        ' WHERE CCX_DC=''C'' '+
        ' AND CCX_SITUACAO<>1 '+
        ' AND CCX_AVULSO=0 '+
        ' ORDER BY CCX_DESCRICAO ASC ';
      Open;
    end;
    dblCodigoCCXRecebimento.Color:=clWindow;
    dblCodigoCCXRecebimento.Enabled:=True;
    dblCodigoCCXRecebimento.KeyValue := Conta_de_Caixa2.CodigoCCX;
    dblCodigoCCXRecebimento.SetFocus;
  end
  else
  Begin
    Conta_de_Caixa2.Close;
    dblCodigoCCXRecebimento.KeyValue:=-1;
    dblCodigoCCXRecebimento.Color:=AlteraCorComponentes;
    dblCodigoCCXRecebimento.Enabled:=False;
  end;
end;

procedure TfMxSelTitulos.ckbValorTituloClick(Sender: TObject);
begin
  if ckbValorTitulo.Checked then
  Begin
    cmbValorTitulo.Color:=clWindow;
    cmbValorTitulo.Enabled:=True;
    cmbValorTitulo.ItemIndex:=1;
    edtValorTitulo.Color:=clWindow;
    edtValorTitulo.Enabled:=True;
    edtValorTitulo.SetFocus;
  end
  else
  Begin
    cmbValorTitulo.Color:=AlteraCorComponentes;
    cmbValorTitulo.Enabled:=False;
    cmbValorTitulo.ItemIndex:=-1;
    edtValorTitulo.Color:=AlteraCorComponentes;
    edtValorTitulo.Clear;
    edtValorTitulo.Enabled:=False;
  end;
end;

procedure TfMxSelTitulos.ckbPagosCreditoClick(Sender: TObject);
begin
  if ckbPagosCredito.Checked then
    ckbPagosSemCredito.Checked := False;
end;

procedure TfMxSelTitulos.ckbPagosSemCreditoClick(Sender: TObject);
begin
  if ckbPagosSemCredito.Checked then
    ckbPagosCredito.Checked := False;
end;

procedure TfMxSelTitulos.ckbAgruparCLIClick(Sender: TObject);
begin
  if ckbAgruparCLI.Checked then
  Begin
    ckbSaltarPagina.Enabled := True;
    cmbOrdem.ItemIndex := 0;
    cmbOrdem.Enabled := False;
    ckbAgruparGrupo.Checked := False;
  end;
end;

procedure TfMxSelTitulos.ckbGrupoClick(Sender: TObject);
begin
  if ckbGrupo.Checked then
  Begin
    Parametro2.Open;
    cmbTipoGrupo.Color := clWindow;
    cmbTipoGrupo.Enabled := True;
    cmbTipoGrupo.ItemIndex := 0;
    dblGrupoCC.Color:=clWindow;
    dblGrupoCC.Enabled := True;
    dblGrupoCC.KeyValue := Parametro2.CodigoPAR;
    dblGrupoCC.SetFocus;
  end
  else
  Begin
    Parametro2.Close;
    cmbTipoGrupo.Color := AlteraCorComponentes;
    cmbTipoGrupo.Enabled := False;
    cmbTipoGrupo.ItemIndex := -1;
    dblGrupoCC.Color := AlteraCorComponentes;
    dblGrupoCC.Enabled := False;
    dblGrupoCC.KeyValue := -1;
  end;
end;

procedure TfMxSelTitulos.ckbDataEnvioBoletoClick(Sender: TObject);
begin
  if ckbDataEnvioBoleto.Checked then
  Begin
    mskDataEnvio.Color:=clWindow;
    mskDataEnvio.Enabled:=True;
    mskDataEnvio.SetFocus;
  end
  else
  Begin
    mskDataEnvio.Color:=AlteraCorComponentes;
    mskDataEnvio.Clear;
    mskDataEnvio.Enabled:=False;
  end;
end;

procedure TfMxSelTitulos.ckbDataRecebimentoBoletoClick(Sender: TObject);
begin
  if ckbDataRecebimentoBoleto.Checked then
  Begin
    mskDataRecebimento.Color:=clWindow;
    mskDataRecebimento.Enabled:=True;
    mskDataRecebimento.SetFocus;
  end
  else
  Begin
    mskDataRecebimento.Color:=AlteraCorComponentes;
    mskDataRecebimento.Clear;
    mskDataRecebimento.Enabled:=False;
  end;
end;

procedure TfMxSelTitulos.ckbSomenteVerificadoClick(Sender: TObject);
begin
  if ckbSomenteVerificado.Checked then
    ckbNaoVerificado.Checked := False;
end;

procedure TfMxSelTitulos.ckbNaoVerificadoClick(Sender: TObject);
begin
  if ckbNaoVerificado.Checked then
    ckbSomenteVerificado.Checked := False;
end;

procedure TfMxSelTitulos.ckbCodigoCHQClick(Sender: TObject);
begin
  if ckbCodigoCHQ.Checked then
  Begin
    edtCodigoCHQ.Color:=clWindow;
    edtCodigoCHQ.Enabled:=True;
    try
      edtCodigoCHQ.SetFocus;
    except
    end;
  end
  else
  Begin
    edtCodigoCHQ.Color:=AlteraCorComponentes;
    edtCodigoCHQ.Clear;
    edtCodigoCHQ.Enabled:=False;
  end;
end;

procedure TfMxSelTitulos.rdgEmissaoNotaClick(Sender: TObject);
begin
  if ckbOficial.Enabled then
    ckbOficial.Checked := True;
end;

procedure TfMxSelTitulos.ckbSinteticoClick(Sender: TObject);
begin
  if ckbSintetico.Checked then
  Begin
    ckbSuperSintetico.Checked := True;
    ckbSuperSintetico.Enabled := True;
  end
  else
  Begin
    ckbSuperSintetico.Checked := False;
    ckbSuperSintetico.Enabled := False;
  end;
end;

procedure TfMxSelTitulos.ckbVencimentoClick(Sender: TObject);
begin
  if ckbVencimento.Checked then
  Begin
    cmbVencimento.Color:=clWindow;
    cmbVencimento.Enabled:=True;
    cmbVencimento.ItemIndex:=1;
    mskVencimento.Color:=clWindow;
    mskVencimento.Enabled:=True;
    mskVencimento.SetFocus;
  end
  else
  Begin
    cmbVencimento.Color:=AlteraCorComponentes;
    cmbVencimento.Enabled:=False;
    cmbVencimento.ItemIndex:=-1;
    mskVencimento.Color:=AlteraCorComponentes;
    mskVencimento.Clear;
    mskVencimento.Enabled:=False;
  end;

  if ckbInadipencia.checked then
    ckbCodigoFUN.Caption := 'Vendedor(a)'
  else
    ckbCodigoFUN.Caption := 'Respons�vel';
end;

procedure TfMxSelTitulos.ckbLocalClick(Sender: TObject);
begin
  if ckbLocal.Checked then
  Begin
    edtLocal.Color:=clWindow;
    edtLocal.Enabled:=True;
    edtLocal.SetFocus;
  end
  else
  Begin
    edtLocal.Color:=AlteraCorComponentes;
    edtLocal.Clear;
    edtLocal.Enabled:=False;
  end;
end;

procedure TfMxSelTitulos.ckbCodigoFPEClick(Sender: TObject);
begin
  if ckbCodigoFPE.Checked then
  Begin
    edtCodigoFPE.Color:=clWindow;
    edtCodigoFPE.Enabled:=True;
    edtCodigoFPE.SetFocus;
  end
  else
  Begin
    edtCodigoFPE.Color:=AlteraCorComponentes;
    edtCodigoFPE.Clear;
    edtCodigoFPE.Enabled:=False;
  end;
end;

procedure TfMxSelTitulos.ckbCodigoFUNClick(Sender: TObject);
begin
  if ckbCodigoFUN.Checked then
  Begin
    Funcionario1.Open;
    dblCodigoFUN.Color:=clWindow;
    dblCodigoFUN.Enabled:=True;
    try
      dblCodigoFUN.SetFocus;
    except
    end;
  end
  else
  Begin
    Funcionario1.Close;
    dblCodigoFUN.Color:=AlteraCorComponentes;
    dblCodigoFUN.KeyValue:=-1;
    dblCodigoFUN.Enabled:=False;
  end;
end;

procedure TfMxSelTitulos.ckbClassificacaoClick(Sender: TObject);
begin
  if ckbClassificacao.Checked then
  Begin
    Parametro4.Close;
    Parametro4.SQL.Text := 'SELECT * FROM PARAMETRO '+
      ' WHERE TPR_CODIGO=60 '+
      ' AND PAR_SITUACAO<>1 ';
    if ckbCentroDeCusto.Checked then
      Parametro4.SQL.ADD(' AND (PAR_INFORMACAO=0 OR PAR_INFORMACAO='+IntToStr(dblCodigoCNC.KeyValue)+')');
    Parametro4.SQL.ADD(' ORDER BY PAR_DESCRICAO ');
    Parametro4.Open;
    dblClassificacao.Color:=clWindow;
    dblClassificacao.Enabled:=True;
    dblClassificacao.SetFocus;
  end
  else
  Begin
    Parametro4.Close;
    dblClassificacao.Color:=AlteraCorComponentes;
    dblClassificacao.Enabled:=False;
    dblClassificacao.KeyValue:=-1;
  end;
end;

procedure TfMxSelTitulos.ckbTipoClick(Sender: TObject);
begin
  if ckbTipo.Checked then
  Begin
    Parametro3.Open;
    dblTipo.Color:=clWindow;
    dblTipo.Enabled:=True;
    dblTipo.SetFocus;
  end
  else
  Begin
    Parametro3.Close;
    dblTipo.Color:=AlteraCorComponentes;
    dblTipo.Enabled:=False;
    dblTipo.KeyValue:=-1;
  end;
end;

procedure TfMxSelTitulos.pShow;
begin
  DM.Usuario1.AlteraCorComponentes(self);
  if tag = 0 then
    rdgVencimento.Checked := True
  else
  Begin
    ckbExibirPedido.Enabled := False;
    ckbPagosChequePre.Enabled := False;
  end;

  if tag = 2 then //Previs�o de Receita
  Begin
    rdgVencimento.Enabled := False;
    rdgPagamento.Enabled := False;
    rdgEmissaoNota.Enabled := False;
    rdgCadastro.Enabled := False;
    rdgAlterado.Enabled := False;
    rdgVerificado.Enabled := False;
    rdgEntrega.Enabled := False;
    ckbConsiderarOrigem.Enabled := False;
    ckbAgruparDia.Checked := True;
    ckbAgruparDia.Enabled := False;
    ckbAgruparGrupo.Enabled := False;
    cmbOrdem.ItemIndex := 3;
    cmbOrdem.Enabled := False;
  end
  else if tag = 3 then //Gr�fico T�tulos Por Vendedor
  Begin
    ckbSintetico.Enabled := False;
    ckbEspacoExtra.Enabled := False;
    ckbAgruparGrupo.Enabled := False;
    cmbOrdem.Enabled := False;
  end
  else
    cmbOrdem.ItemIndex:=0;
  if tag = 6 then //Gr�fico T�tulos Por Conta de Caixa ou por AGF
  Begin
    ckbCodigoPedido.Enabled := False;
    ckbSintetico.Enabled := False;
    ckbEspacoExtra.Enabled := False;
    ckbAgruparMes.Enabled := False;
    ckbAgruparDia.Enabled := False;
    ckbAgruparGrupo.Enabled := False;
    cmbOrdem.Enabled := False;
    ckbAgruparAGF.Enabled := True;
  end
  else if tag = 7 then //Extrato de Cliente
  Begin
    ckbAgruparCLI.Checked := True;
    ckbAgruparCLI.Enabled := False;
    ckbAgruparDia.Enabled := False;
    ckbAgruparMes.Enabled := False;
    ckbAgruparGrupo.Enabled := False;
    rdgCadastro.Checked := True;
    ckbExibirPedido.Enabled := False;
    ckbNaoPagos.Enabled := True;
    ckbNaoExibirResumo.Enabled := True;
  end
  else if tag = 8 then //Registro de Duplicatas
  Begin
    ckbAgruparCLI.Enabled      := False;
    ckbAgruparDia.Enabled      := False;
    ckbAgruparMes.Enabled      := False;
    ckbAgruparGrupo.Enabled    := False;
    rdgEmissaoNota.Checked     := True;
    ckbExibirPedido.Enabled    := False;
    ckbNaoPagos.Checked        := False;
    ckbNaoExibirResumo.Enabled := False;
    ckbSaltarPagina.Enabled    := True;
    cmbOrdem.ItemIndex := 8;
  end
  else if self.Tag = 9 then //Pagamento Completo
  Begin
    rdgPagamento.Checked    := True;
    rdgVencimento.Enabled   := False;
    rdgEmissaoNota.Enabled  := False;
    rdgCadastro.Enabled     := False;
    rdgAlterado.Enabled     := False;
    rdgVerificado.Enabled   := False;
    rdgEntrega.Enabled      := False;
    ckbTipoPag.Checked      := True;
    cmbTipoPag.ItemIndex    := 1;  //<>
    dblTipoPag.KeyValue     := 13; //Cart�o
    ckbSintetico.Checked    := True;
    ckbSuperSintetico.Checked := False;
  end;

  if tag <> 1 then //Diferente de T�tulos Recebidos
  begin
    ckbPagosCredito.Enabled := False;
    ckbPagosSemCredito.Enabled := False;
  end;

  if (DM.Configuracao1.Empresa = empLBM) and
     (ckbExibirPedido.Enabled) then
    ckbExibirPedido.Checked := True;

  try
    mskDataINI.SetFocus;
  except
  end;
end;

procedure TfMxSelTitulos.ReportTitulo(filtrosSQL, filtros: string);
var
  stiReport: CoSiacReport_; //TSiacReport;
begin
  stiReport.Create.ReportTitulosEmAtraso(false,
                                         false,
                                         filtrosSQL,
                                         EmpresaDesenvolvedora,
                                         'Relat�rio de t�tulos em atraso do sistema',
                                         DM.CentroCusto1.RazaoSocial,
                                         '',//DM.Configuracao1.LojaNome
                                         'Relat�rio de t�tulos em atraso',
                                         DM.Usuario1.NomeUSU,
                                         'Filtros: ' +LowerCase(filtros),
                                         rptArquivoLogo);
end;

procedure TfMxSelTitulos.rdgVencimentoClick(Sender: TObject);
begin
  ckbOficial.Checked := false;
end;

procedure TfMxSelTitulos.ReportTituloSintetico(filtrosSQL, filtros: string);
var
  stiReport: CoSiacReport_; //TSiacReport;
begin
  stiReport.Create.ReportContaReceberSintetico(false,
                                               false,
                                               filtrosSQL,
                                               EmpresaDesenvolvedora,
                                               'Relat�rio Sint�tico de t�tulos a receber do sistema',
                                               DM.CentroCusto1.RazaoSocial,
                                               '',//DM.Configuracao1.LojaNome
                                               'Relat�rio de t�tulos a receber',
                                               DM.Usuario1.NomeUSU,
                                               'Filtros: ' +LowerCase(filtros),
                                               rptArquivoLogo);
end;

procedure TfMxSelTitulos.ReportTituloSuperSintetico(filtrosSQL, filtros: string);
var
  stiReport: CoSiacReport_; //TSiacReport;
begin
  stiReport.Create.ReportContaReceberSuperSintetico(false,
                                                    false,
                                                    filtrosSQL,
                                                    EmpresaDesenvolvedora,
                                                    'Relat�rio Super Sint�tico de t�tulos a receber do sistema',
                                                    DM.CentroCusto1.RazaoSocial,
                                                    '',//DM.Configuracao1.LojaNome
                                                    'Relat�rio de t�tulos a receber',
                                                    DM.Usuario1.NomeUSU,
                                                    'Filtros: ' +LowerCase(filtros),
                                                    rptArquivoLogo);
end;

end.
