unit MxSelFuncionario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, Db, DBTables, SQuery, Fornecedor,
  DBCtrls, Grupo, Produto, SubGrupo, Menus, Variants, Parametro,
  CentroCusto, SiacReport_TLB;

type
  TfMxSelFuncionario = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SB_Confirmar: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    cmbOrdem: TComboBox;
    GroupBox3: TGroupBox;
    dblFuncao: TDBLookupComboBox;
    ckbFuncao: TCheckBox;
    ckbCodigoFUN: TCheckBox;
    edtCodigoFUN: TEdit;
    DSParametro2: TDataSource;
    Parametro2: TParametro;
    ckbSintetico: TCheckBox;
    ckbAgruparSuperior: TCheckBox;
    ckbQtdClientes: TCheckBox;
    DSCentroCusto1: TDataSource;
    CentroCusto1: TCentroCusto;
    dblCodigoCNC: TDBLookupComboBox;
    ckbCodigoCNC: TCheckBox;
    ckbSituacao: TCheckBox;
    cmbSituacao: TComboBox;
    ckbSomenteAparecePDV: TCheckBox;
    ckbSomenteApareceSER: TCheckBox;
    cbxRelatorioGrafico: TCheckBox;
    procedure SB_ConfirmarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ckbFuncaoClick(Sender: TObject);
    procedure ckbCodigoFUNClick(Sender: TObject);
    procedure edtCodigoFUNKeyPress(Sender: TObject; var Key: Char);
    procedure ckbAgruparSuperiorClick(Sender: TObject);
    procedure ckbCodigoCNCClick(Sender: TObject);
    procedure ckbSituacaoClick(Sender: TObject);
    procedure ckbSomenteAparecePDVClick(Sender: TObject);
    procedure ckbSomenteApareceSERClick(Sender: TObject);
  private
    { Private declarations }
  public
    Centro: string;
  end;

var
  fMxSelFuncionario: TfMxSelFuncionario;

implementation

uses
  UDM, Funcoes, UFuncionario, MxSFuncionario;

{$R *.DFM}


procedure TfMxSelFuncionario.SB_ConfirmarClick(Sender: TObject);
var
  CdCNC, CdFUN, CdFUncao,
  sSomenteComSuperior, sSomenteAparecePDVSER,
  sSituacao, Ordem, sFiltros, SQL :string;
  stiReport: CoSiacReport_;
begin
  CdCNC:='';
  CdFUN:='';
  CdFUncao:='';
  sSituacao:='';
  sSomenteAparecePDVSER := '';
  sFiltros:='';

  if ckbCodigoFUN.Checked then
    if not VerificaInteiroBranco(edtCodigoFUN.Text) then
      Raise Exception.Create('C�digo do Funcion�rio inv�lido!')
    else
    Begin
      CdFUN := ' AND (FUN.FUN_CODIGO ='+edtCodigoFUN.Text+') ';
      sFiltros := sFiltros + '(FUN='+edtCodigoFUN.Text+') ';
    end;

  if ckbFuncao.Checked then
    if dblFuncao.Text = '' then
      Raise Exception.Create('Fun��o inv�lida!')
    else
    Begin
      CdFuncao := ' AND (FUN.FUN_FUNCAO ='+IntToStr(dblFuncao.KeyValue)+') ';
      sFiltros := sFiltros + '(Funcao='+dblFuncao.Text+') ';
    end;

  if ckbCodigoCNC.Checked then
  Begin
    if dblCodigoCNC.Text = '' then
      Raise exception.Create('Centro de Custo inv�lido!');
    CdCNC := ' AND FUN.CNC_CODIGO='+IntToStr(dblCodigoCNC.KeyValue)+' ';
    sFiltros := sFiltros + '(CNC:'+IntToStr(dblCodigoCNC.KeyValue)+')';
  end;

  if ckbSituacao.Checked then
  Begin
    sSituacao := ' AND FUN.FUN_SITUACAO='+IntToStr(cmbSituacao.ItemIndex);
    sFiltros := sFiltros + '(Sit:'+cmbSituacao.text+') ';
  end;

  if ckbSomenteAparecePDV.Checked then
  Begin
    sSomenteAparecePDVSER := ' AND FUN.FUN_APARECE_VENDAS=1 ';
    sFiltros := sFiltros + '(AparecePDV) ';
  end
  else if ckbSomenteApareceSER.Checked then
  Begin
    sSomenteAparecePDVSER := ' AND FUN.FUN_APARECE_SERVICOS=1 ';
    sFiltros := sFiltros + '(ApareceSER) ';
  end;

  if ckbAgruparSuperior.Checked then
  Begin
    sSomenteComSuperior := ' AND FUN.FUN_SUPERIOR>0 ';
    sFiltros := sFiltros + '(Superior>0) ';
  end;

  case cmbOrdem.itemIndex of
    0: Ordem := ' ORDER BY FUN.CNC_CODIGO, PAR.PAR_DESCRICAO, FUN_CODIGO ';
    1: Ordem := ' ORDER BY FUN.CNC_CODIGO, PAR.PAR_DESCRICAO, FUN_NOME ';
    2: Ordem := ' ORDER BY FUN.CNC_CODIGO, FUN.FUN_SUPERIOR, PAR.PAR_DESCRICAO, FUN_NOME ';
  end;

  if tag = 0 then
  begin
    if cbxRelatorioGrafico.Checked then //if RelatorioGrafico then
    begin
      SQL := 'SELECT ' +
             '  FUN.*, ' +
             '  PAR.PAR_DESCRICAO, ' +
             '  CNC.CNC_RZ_SOCIAL, '+
             '  CNC.CNC_NOME_FAN, '+
             '  CNC.CNC_FONE, '+
             //Superior
             '  (SELECT SP.FUN_APELIDO '+
             '    FROM FUNCIONARIO SP '+
             '    WHERE SP.FUN_CODIGO = FUN.FUN_CODIGO AND SP.CNC_CODIGO = FUN.CNC_CODIGO) AS FUN_SUPERIOR_NOME, '+
             //Sem Parcela em Aberto
             '  (SELECT COUNT(DISTINCT CLI_CODIGO) AS QTD '+
             '  FROM PEDIDO_DE_VENDA PDV, ITEM_DE_PEDIDO_DE_VENDA IPV '+
             '  WHERE PDV.PDV_SITUACAO=4 '+
             '  AND IPV.FUN_CODIGO= FUN.FUN_CODIGO '+
             '  AND PDV.CNC_CODIGO= CNC.CNC_CODIGO '+
             '  AND PDV.CNC_CODIGO=IPV.CNC_CODIGO '+
             '  AND PDV.PDV_CODIGO=IPV.PDV_CODIGO '+

             '  AND NOT EXISTS (SELECT CLI_CODIGO FROM TITULO_A_RECEBER TRC '+
             '  WHERE TRC.TRC_SITUACAO=0 '+
             '  AND TRC.CNC_CLIENTE=PDV.CNC_CLIENTE '+
             '  AND TRC.CLI_CODIGO=PDV.CLI_CODIGO) '+

             '  AND PDV.PDV_CODIGO=(SELECT MAX(PDV_CODIGO) '+
             '  FROM PEDIDO_DE_VENDA PDV2 '+
             '  WHERE PDV2.PDV_SITUACAO=4 '+
             '  AND PDV2.CNC_CLIENTE=PDV.CNC_CLIENTE '+
             '  AND PDV2.CLI_CODIGO=PDV.CLI_CODIGO)) AS CLI_SP, '+
             //Adiplente
             '  (SELECT COUNT(DISTINCT CLI_CODIGO) AS QTD '+
             '  FROM PEDIDO_DE_VENDA PDV, ITEM_DE_PEDIDO_DE_VENDA IPV '+
             '  WHERE PDV.PDV_SITUACAO=4 '+
             '  AND IPV.FUN_CODIGO= FUN.FUN_CODIGO'+
             '  AND PDV.CNC_CODIGO= CNC.CNC_CODIGO'+
             '  AND PDV.CNC_CODIGO=IPV.CNC_CODIGO '+
             '  AND PDV.PDV_CODIGO=IPV.PDV_CODIGO '+

             '  AND NOT EXISTS (SELECT CLI_CODIGO FROM TITULO_A_RECEBER TRC '+
             '  WHERE TRC.TRC_SITUACAO=0 '+
             '  AND TRC.TRC_VENCIMENTO<'''+MesDia(DM.Configuracao1.Data)+''' '+
             '  AND TRC.CNC_CLIENTE=PDV.CNC_CLIENTE '+
             '  AND TRC.CLI_CODIGO=PDV.CLI_CODIGO) '+

             '  AND EXISTS (SELECT CLI_CODIGO FROM TITULO_A_RECEBER TRC '+
             '  WHERE TRC.TRC_SITUACAO=0 '+
             '  AND TRC.TRC_VENCIMENTO>='''+MesDia(DM.Configuracao1.Data)+''' '+
             '  AND TRC.CNC_CLIENTE=PDV.CNC_CLIENTE '+
             '  AND TRC.CLI_CODIGO=PDV.CLI_CODIGO) '+

             '  AND PDV.PDV_CODIGO=(SELECT MAX(PDV_CODIGO) '+
             '  FROM PEDIDO_DE_VENDA PDV2 '+
             '  WHERE PDV2.PDV_SITUACAO=4 '+
             '  AND PDV2.CNC_CLIENTE=PDV.CNC_CLIENTE '+
             '  AND PDV2.CLI_CODIGO=PDV.CLI_CODIGO)) AS CLI_AD, '+
             //Inadiplente
             '  (SELECT COUNT(DISTINCT CLI_CODIGO) AS QTD '+
             '  FROM PEDIDO_DE_VENDA PDV, ITEM_DE_PEDIDO_DE_VENDA IPV '+
             '  WHERE PDV.PDV_SITUACAO=4 '+
             '  AND IPV.FUN_CODIGO=FUN.FUN_CODIGO '+
             '  AND PDV.CNC_CODIGO=CNC.CNC_CODIGO '+
             '  AND PDV.CNC_CODIGO=IPV.CNC_CODIGO '+
             '  AND PDV.PDV_CODIGO=IPV.PDV_CODIGO '+

             '  AND EXISTS (SELECT CLI_CODIGO FROM TITULO_A_RECEBER TRC '+
             '  WHERE TRC.TRC_SITUACAO=0 '+
             '  AND TRC.TRC_VENCIMENTO<'''+MesDia(DM.Configuracao1.Data)+''' '+
             '  AND TRC.CNC_CLIENTE=PDV.CNC_CLIENTE '+
             '  AND TRC.CLI_CODIGO=PDV.CLI_CODIGO) '+

             '  AND PDV.PDV_CODIGO=(SELECT MAX(PDV_CODIGO) '+
             '  FROM PEDIDO_DE_VENDA PDV2 '+
             '  WHERE PDV2.PDV_SITUACAO=4 '+
             '  AND PDV2.CNC_CLIENTE=PDV.CNC_CLIENTE '+
             '  AND PDV2.CLI_CODIGO=PDV.CLI_CODIGO)) AS CLI_IN  '+
             'FROM ' +
             '  FUNCIONARIO FUN, ' +
             '  PARAMETRO PAR, ' +
             '  CENTRO_DE_CUSTO CNC ' +
             'WHERE ' +
             '  FUN.FUN_CODIGO >0 AND ' +
             CdCNC + CdFUN + CdFuncao + sSituacao + sSomenteComSuperior + sSomenteAparecePDVSER +
             '  FUN.FUN_FUNCAO=PAR.PAR_CODIGO AND ' +
             '  FUN.CNC_CODIGO = CNC.CNC_CODIGO ' +
             'ORDER BY ' +
             '  FUN.CNC_CODIGO, ' +
             '  FUN.FUN_SUPERIOR, ' +
             '  PAR.PAR_DESCRICAO, FUN_NOME';
      stiReport.Create.ReportFuncionarios(false,
                                          false,
                                          SQL,
                                          EmpresaDesenvolvedora,
                                          'Relat�rio de funcion�rios do sistema',
                                          DM.CentroCusto1.RazaoSocial,
                                          '',//DM.Configuracao1.LojaNome
                                          'Relat�rio de Funcion�rios',
                                          DM.Usuario1.NomeUSU,
                                          '',//Filtros
                                          rptArquivoLogo);
    end
    else
    begin
      Application.CreateForm(Trpt_Funcionario, rpt_Funcionario);
      with rpt_Funcionario do
      Begin
        Tag := 0;
        zrlfiltros.Caption := sFiltros;

        vQtdCliente := ckbQtdClientes.Checked;

        if not ckbAgruparSuperior.Checked then
        Begin
          zrbGrupoSuperior.Height := 0;
          zrbGrupoSuperior.Expression := '';
        end
        else
        Begin
          zrbGrupoFuncao.FooterBand := nil;
          zrbGrupoSuperior.FooterBand := zrbRodapeGrupoFuncao;
        end;

        if ckbSintetico.Checked then
        Begin
          zrbCabecalho.Height := 6;
          zrlLinhaDupla.Top := 5;
          zrbDetalhe.Height   := 1;
        end;

        Entidade.Close;
        Entidade.SQL.Text:='SELECT FUN.*, PAR.PAR_DESCRICAO '+
          ' FROM  FUNCIONARIO FUN, PARAMETRO PAR '+
          ' WHERE FUN.FUN_CODIGO>0 '+
          CdCNC+CdFUN+CdFuncao+sSituacao+sSomenteComSuperior+sSomenteAparecePDVSER+
          ' AND FUN.FUN_FUNCAO=PAR.PAR_CODIGO '+
          Ordem;
        Entidade.Open;
        if Entidade.IsEmpty then
          Raise Exception.Create('Consulta vazia!');
        report.Preview;
        Close;
      end;
    end;
  end;
end;

procedure TfMxSelFuncionario.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfMxSelFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Parametro2.Close;
  Action := caFree;
end;

procedure TfMxSelFuncionario.FormShow(Sender: TObject);
begin
  DM.Usuario1.AlteraCorComponentes(self);
  cmbOrdem.ItemIndex := 1;
  ckbCodigoFUN.SetFocus;
end;

procedure TfMxSelFuncionario.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    Close
  else if key = #13 then
    SB_ConfirmarClick(sender);
end;

procedure TfMxSelFuncionario.ckbFuncaoClick(Sender: TObject);
begin
  if ckbFuncao.Checked then
  Begin
    Parametro2.Open;
    dblFuncao.Enabled:=True;
    dblFuncao.Color:=clWindow;
    dblFuncao.KeyValue:=Parametro2.CodigoPAR;
    dblFuncao.SetFocus;
  end
  else
  Begin
    Parametro2.Close;
    dblFuncao.Enabled:=False;
    dblFuncao.Color:=AlteraCorComponentes;
    dblFuncao.KeyValue:=0;
  end;
end;

procedure TfMxSelFuncionario.ckbCodigoFUNClick(Sender: TObject);
begin
  if ckbCodigoFUN.Checked then
  Begin
    edtCodigoFUN.Color:=clWindow;
    edtCodigoFUN.Enabled:=True;
    edtCodigoFUN.SetFocus;
  end
  else
  Begin
    edtCodigoFUN.Color:=AlteraCorComponentes;
    edtCodigoFUN.Clear;
    edtCodigoFUN.Enabled:=False;
  end;
end;

procedure TfMxSelFuncionario.edtCodigoFUNKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #32 then
  Begin
    key := #0;  
    edtCodigoFUN.Clear;
    Application.CreateForm(TfMxSFuncionario, fMxSFuncionario);
    with fMxSFuncionario do
    Begin
      tag := 1;
      Funcionario1.Close;
      Funcionario1.Open;
      ShowModal;
    end;
  end;
end;

procedure TfMxSelFuncionario.ckbAgruparSuperiorClick(Sender: TObject);
begin
  if ckbAgruparSuperior.Checked then
  Begin
    cmbOrdem.ItemIndex := 2;
    cmbOrdem.Enabled := False;
  end
  else
    cmbOrdem.Enabled := True;
end;

procedure TfMxSelFuncionario.ckbCodigoCNCClick(Sender: TObject);
begin
  if ckbCodigoCNC.Checked then
  Begin
    CentroCusto1.Open;
    dblCodigoCNC.Color:=clWindow;
    dblCodigoCNC.Enabled:=True;
    dblCodigoCNC.KeyValue:=DM.Configuracao1.CodigoCNC;
    dblCodigoCNC.SetFocus;
  end
  else
  Begin
    CentroCusto1.Close;
    dblCodigoCNC.Color:=AlteraCorComponentes;
    dblCodigoCNC.Enabled:=False;
    dblCodigoCNC.KeyValue:=-1;
  end;
end;

procedure TfMxSelFuncionario.ckbSituacaoClick(Sender: TObject);
begin
  if ckbSituacao.Checked then
  Begin
    cmbSituacao.Enabled:=True;
    cmbSituacao.Color:=clWindow;
    cmbSituacao.ItemIndex:=0;
    cmbSituacao.SetFocus;
  end
  else
  Begin
    cmbSituacao.Enabled:=False;
    cmbSituacao.Color:=AlteraCorComponentes;
    cmbSituacao.ItemIndex:=-1;
  end;
end;

procedure TfMxSelFuncionario.ckbSomenteAparecePDVClick(Sender: TObject);
begin
  if ckbSomenteAparecePDV.Checked then
    ckbSomenteApareceSER.Checked := False;
end;

procedure TfMxSelFuncionario.ckbSomenteApareceSERClick(Sender: TObject);
begin
  if ckbSomenteApareceSER.Checked then
    ckbSomenteAparecePDV.Checked := False;
end;

end.
