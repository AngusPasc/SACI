unit MxSPediLocImpPromis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, Db, DBTables, SQuery,
  Pedido_de_Venda, Cliente, {ImpFiscB, }Item_Pedido_Venda, Produto, Menus,
  Titulo_receber, Informacoes, Descontos, Classificacao_fiscal,
  Item_Nota_Fiscal, NotaFiscal, Mov_Est_Fiscal, Item_de_Estoque,
  Movimento_caixa, Forma_de_Pagamento;

type
  TfMxSPedLocImpPromis = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    bitPromissoria: TBitBtn;
    bitFechar: TBitBtn;
    DSPedido_de_Venda1: TDataSource;
    Pedido_de_Venda1: TPedido_de_Venda;
    DBGrid1: TDBGrid;
    bitFaturar: TBitBtn;
    Item_Pedido_Venda1: TItem_Pedido_Venda;
    Pedido_de_Venda2: TPedido_de_Venda;
    Produto1: TProduto;
    Item_Pedido_Venda1CNC_CODIGO: TIntegerField;
    Item_Pedido_Venda1IPV_CODIGO: TIntegerField;
    Item_Pedido_Venda1FUN_CODIGO: TIntegerField;
    Item_Pedido_Venda1IEB_CODIGO: TIntegerField;
    Item_Pedido_Venda1PDV_CODIGO: TIntegerField;
    Item_Pedido_Venda1SEC_CODIGO: TIntegerField;
    Item_Pedido_Venda1PRD_CODIGO: TIntegerField;
    Item_Pedido_Venda1TBP_CODIGO: TIntegerField;
    Item_Pedido_Venda1IPV_ENTREGA: TSmallintField;
    Item_Pedido_Venda1IPV_AVISTA: TSmallintField;
    Item_Pedido_Venda1IPV_QUANTIDADE: TFloatField;
    Item_Pedido_Venda1IPV_DESCONTO: TFloatField;
    Item_Pedido_Venda1IPV_BONIFICACAO: TFloatField;
    Item_Pedido_Venda1CNC_LOCAL_ESTOQUE: TIntegerField;
    Item_Pedido_Venda1IPV_PRECO: TFloatField;
    Item_Pedido_Venda1IPV_SITUACAO: TIntegerField;
    Item_Pedido_Venda1IPV_PRECO_DESC: TFloatField;
    Item_Pedido_Venda1IPV_NOTA: TIntegerField;
    Item_Pedido_Venda1IPV_ITEMNOTA: TIntegerField;
    Item_Pedido_Venda1IPV_PRECO_NOTA: TFloatField;
    Item_Pedido_Venda2: TItem_Pedido_Venda;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    IntegerField9: TIntegerField;
    FloatField4: TFloatField;
    IntegerField10: TIntegerField;
    FloatField5: TFloatField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    FloatField6: TFloatField;
    Titulo_receber6: TTitulo_receber;
    Titulo_receber6MEDIA: TFloatField;
    Titulo_receber5: TTitulo_receber;
    Informacoes1: TInformacoes;
    Descontos1: TDescontos;
    Item_Pedido_Venda1IPV_PENDENCIA: TIntegerField;
    Item_Pedido_Venda1IPV_ESTOQUE_LOCAL: TFloatField;
    Item_Pedido_Venda1IPV_ESTOQUE_EXTERNO: TFloatField;
    Item_Pedido_Venda1IPV_PRECO_SUGERIDO: TFloatField;
    Classificacao_fiscal1: TClassificacao_fiscal;
    Produto1PRD_CODIGO: TIntegerField;
    Produto1CNC_CODIGO: TIntegerField;
    Produto1FOR_CODIGO: TIntegerField;
    Produto1CTP_CODIGO: TIntegerField;
    Produto1SGP_CODIGO: TIntegerField;
    Produto1GRP_CODIGO: TIntegerField;
    Produto1CLF_CODIGO: TIntegerField;
    Produto1ORF_CODIGO: TIntegerField;
    Produto1PRD_DESCRICAO: TStringField;
    Produto1PRD_UNIDADE: TStringField;
    Produto1PRD_MARCA: TStringField;
    Produto1PRD_PRECO_COMPRA: TFloatField;
    Produto1PRD_REFERENCIA: TStringField;
    Produto1PRD_DT_ULT_COMPRA: TDateTimeField;
    Produto1PRD_CUSTO: TFloatField;
    Produto1PRD_PRECO_MEDIO: TFloatField;
    Produto1PRD_PRECO_VENDA: TFloatField;
    Produto1PRD_EST_MINIMO: TFloatField;
    Produto1PRD_EST_MEDIO: TFloatField;
    Produto1PRD_COMISSAO: TFloatField;
    Produto1PRD_SITUACAO: TIntegerField;
    Produto1USU_CODIGO: TIntegerField;
    Produto1PRD_DT_ALTERADO: TDateTimeField;
    Produto1PRD_LOCAL: TStringField;
    Produto1PRD_DETALHE: TStringField;
    Produto1PRD_DT_CADASTRO: TDateTimeField;
    NotaFiscal1: TNotaFiscal;
    Item_Nota_Fiscal1: TItem_Nota_Fiscal;
    Cliente1: TCliente;
    Item_de_Estoque1: TItem_de_Estoque;
    Produto1Aliquota: TFloatField;
    Produto1PRD_CARACTERISTICA: TStringField;
    Produto1PRD_OBSERVACAO: TStringField;
    Produto1PRD_PESO_LIQUIDO: TFloatField;
    Titulo_receber1: TTitulo_receber;
    bitRecibo: TBitBtn;
    Panel2: TPanel;
    SB_Loc: TSpeedButton;
    Label19: TLabel;
    Label20: TLabel;
    edtLocalizar: TEdit;
    cmbCampo: TComboBox;
    Pedido_de_Venda1PDV_CODIGO: TIntegerField;
    Pedido_de_Venda1CNC_CODIGO: TIntegerField;
    Pedido_de_Venda1CLI_CODIGO: TIntegerField;
    Pedido_de_Venda1USU_CODIGO: TIntegerField;
    Pedido_de_Venda1PDV_DATA_HORA: TDateTimeField;
    Pedido_de_Venda1PDV_TOTAL: TFloatField;
    Pedido_de_Venda1PDV_LISTADO: TIntegerField;
    Pedido_de_Venda1PDV_SITUACAO: TIntegerField;
    Pedido_de_Venda1PDV_OBS: TStringField;
    Pedido_de_Venda1PDV_DIAS_RESERV: TIntegerField;
    Pedido_de_Venda1PDV_NOTA_FISCAL: TIntegerField;
    Pedido_de_Venda1AGF_CODIGO: TIntegerField;
    Pedido_de_Venda1FPG_CODIGO: TIntegerField;
    Pedido_de_Venda1PDV_TIPO_PAG: TIntegerField;
    Pedido_de_Venda1PDV_ENTRADA: TFloatField;
    Pedido_de_Venda1CNC_CLIENTE: TIntegerField;
    Pedido_de_Venda1PDV_EM_USO: TIntegerField;
    Pedido_de_Venda1PDV_ACRESCIMO: TFloatField;
    Pedido_de_Venda1PDV_DT_ALTERADO: TDateTimeField;
    Pedido_de_Venda1PDV_MAQUINA: TIntegerField;
    Pedido_de_Venda1PDV_MELHOR_DATA: TDateTimeField;
    Pedido_de_Venda1PDV_VENCIMENTOS: TStringField;
    Pedido_de_Venda1PDV_MEDIA_PAGAMENTO: TIntegerField;
    Pedido_de_Venda1PDV_NOTA_CUPOM: TIntegerField;
    Pedido_de_Venda1PDV_IMPRESSO: TIntegerField;
    Pedido_de_Venda1Cliente: TStringField;
    Pedido_de_Venda1CNPJ_CPF: TStringField;
    Pedido_de_Venda1CGF_RG: TStringField;
    Pedido_de_Venda1SPC: TStringField;
    Pedido_de_Venda1OK: TStringField;
    Pedido_de_Venda1CupomFiscal: TStringField;
    MainMenu1: TMainMenu;
    PedidodeVenda1: TMenuItem;
    Localizar1: TMenuItem;
    N1: TMenuItem;
    Recibo1: TMenuItem;
    Fechar1: TMenuItem;
    Faturar1: TMenuItem;
    Promissoria1: TMenuItem;
    Pedido_de_Venda1PDV_DT_EMISSAO_VENDA: TDateTimeField;
    Pedido_de_Venda1PDV_DT_DEVOLUCAO: TDateTimeField;
    Forma_de_Pagamento1: TForma_de_Pagamento;
    Pedido_de_Venda1PDV_CONTATO: TStringField;
    Pedido_de_Venda1PDV_CREDITO: TFloatField;
    Pedido_de_Venda1FUN_ARQUITETO: TIntegerField;
    Pedido_de_Venda1PDV_TITULO_GERADO: TIntegerField;
    Pedido_de_Venda1PDV_TIPO_VENDA: TIntegerField;
    Pedido_de_Venda1PDV_PACOTE: TIntegerField;
    Pedido_de_Venda1PDV_GRUPO_ESPECIAL: TIntegerField;
    Pedido_de_Venda1PDV_DT_PREVISAO: TDateTimeField;
    Pedido_de_Venda1PDV_DT_ENTREGA: TDateTimeField;
    Pedido_de_Venda1PDV_DOCUMENTO: TStringField;
    Pedido_de_Venda1PDV_CAIXA: TStringField;
    Pedido_de_Venda1PDV_SERVICO: TIntegerField;
    Pedido_de_Venda1PDV_FONE_CONTATO: TStringField;
    Pedido_de_Venda1FPE_CODIGO: TIntegerField;
    Pedido_de_Venda1CNC_FATURAMENTO_PENDENTE: TIntegerField;
    Item_Pedido_Venda1IPV_DIAS_ENTREGA: TIntegerField;
    Item_Pedido_Venda1IPV_DT_ENTRADA: TDateTimeField;
    Item_Pedido_Venda1IPV_DT_SAIDA: TDateTimeField;
    Item_Pedido_Venda1IPV_SERVICO: TIntegerField;
    Item_Pedido_Venda1USU_CODIGO: TIntegerField;
    Item_Pedido_Venda1IPV_OBSERVACAO: TStringField;
    Item_Pedido_Venda1IPV_DT_ALTERADO: TDateTimeField;
    Item_Pedido_Venda1IPV_DT_CADASTRO: TDateTimeField;
    Pedido_de_Venda1PDV_DT_FPE: TDateTimeField;
    Pedido_de_Venda1DataFPE: TStringField;
    PopupMenu1: TPopupMenu;
    CupomEletro1: TMenuItem;
    Produto1PRD_FORA_TABELA: TIntegerField;
    Produto1PRD_FORA_PREVISAO: TIntegerField;
    Produto1PRD_INSUMO: TIntegerField;
    Produto1PRD_BASE_REAL: TFloatField;
    Produto1PRD_SERVICO: TIntegerField;
    Produto1PRD_TEMPO_MEDIO: TIntegerField;
    Produto1PRD_NIVEL: TIntegerField;
    Produto1PRD_FORA_DE_LINHA: TIntegerField;
    Produto1PRD_CATALOGO: TIntegerField;
    Produto1PRD_PREVISAO: TIntegerField;
    Produto1PRD_CLASSIFICACAO: TIntegerField;
    Produto1PRD_ESTOQUE_DETALHADO: TIntegerField;
    Pedido_de_Venda1CNT_CODIGO: TIntegerField;
    Pedido_de_Venda1PDV_GARANTIA: TIntegerField;
    Pedido_de_Venda1PDV_CODIGO_ORIGEM: TIntegerField;
    Pedido_de_Venda1PDV_FRETE: TFloatField;
    Pedido_de_Venda1PDV_ANTECIPADO: TFloatField;
    Pedido_de_Venda1PDV_ENTREGA_DEPOSITO: TIntegerField;
    bitEspelho: TBitBtn;
    Pedido_de_Venda1PDV_PAF: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bitFecharClick(Sender: TObject);
    procedure bitPromissoriaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bitFaturarClick(Sender: TObject);
    procedure Produto1BeforeOpen(DataSet: TDataSet);
    procedure Pedido_de_Venda2BeforeOpen(DataSet: TDataSet);
    procedure Pedido_de_Venda1CalcFields(DataSet: TDataSet);
    procedure Titulo_receber6BeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Produto1CalcFields(DataSet: TDataSet);
    procedure bitReciboClick(Sender: TObject);
    procedure SB_LocClick(Sender: TObject);
    procedure CupomEletro1Click(Sender: TObject);
    procedure bitEspelhoClick(Sender: TObject);
    procedure Pedido_de_Venda1AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Entidade:TPedido_de_Venda;
    TotalNota,TotalAcrescimo:Double;
    Cancelar:Boolean;
  end;

var
  fMxSPedLocImpPromis: TfMxSPedLocImpPromis;

implementation
uses MxReceber, UDM, MxPedidoRapido, MxSPediLoc, MxSelProm, funcoes,
     DigSenha, MxSNotaCupom, UReciboLBM, MxSelRecibo,
  UPedidoServicoLuciano, UPedidoVendaItemPDVRed2, uPedidoVendaCodigoPreco;

{$R *.DFM}

procedure TfMxSPedLocImpPromis.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Entidade.Close;
  Action:=Cafree;
end;

procedure TfMxSPedLocImpPromis.bitFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfMxSPedLocImpPromis.bitPromissoriaClick(Sender: TObject);
begin
  if Entidade.IsEmpty then
    Raise Exception.Create('Selecione o Pedido!');
//  if Entidade.CodigoFPG = 1 then
//    Raise Exception.Create('Venda � Vista!');

  Application.CreateForm(TfmxSelProm, fmxSelProm);
  with fmxSelProm do
  Begin
    tag:=2;
    if (Entidade.TipoPag <> 412) or
       (Entidade.NotaFiscal=0) then
      rdgBoleto.Enabled := False
    else
    Begin
      rdgBoleto.Checked := True;
      with Forma_de_Pagamento1 do
      Begin
        Close;
        ParamByName('FPG_CODIGO').asInteger := Entidade.CodigoFPG;
        Open;
        if Prazo[1] = '0' then
          fmxSelProm.Entrada := True;
      end;
    end;
    ShowModal;
  end;
end;

procedure TfMxSPedLocImpPromis.FormShow(Sender: TObject);
var
  USU:string;
begin
  DM.Usuario1.ConfiguraTela(self);
  USU:='';
  If DM.Usuario1.Permissoes.IndexOf(IntToStr(4040)) < 0 then
    Usu:=' AND (USU_CODIGO='+IntToStr(DM.Configuracao1.CodigoUSU)+
         ' OR PDV_CODIGO IN (SELECT PDV_CODIGO FROM ITEM_DE_PEDIDO_DE_VENDA '+
         ' WHERE FUN_CODIGO IN (SELECT FUN_CODIGO FROM FUNCIONARIO '+
         ' WHERE FUN_USU_CODIGO='+IntToStr(DM.Configuracao1.CodigoUSU)+'))) ';

  Try
    ExecutaSQL(DM.QR_Comandos,'CREATE INDEX PDV_CNCEmUsoSitData ON PEDIDO_DE_VENDA (CNC_CODIGO,PDV_EM_USO,PDV_SITUACAO,PDV_DATA_HORA)');
  Except
  end;
  with Entidade do
  Begin
    Entidade.Close;
    Entidade.SQL.Text:='SELECT * '+
      ' FROM PEDIDO_DE_VENDA '+
      ' WHERE PDV_EM_USO<>1 '+
      ' AND PDV_SITUACAO=4 '+
      ' AND PDV_DATA_HORA>="'+MesDia(DM.Configuracao1.Data)+'" '+
      ' AND PDV_DATA_HORA<"'+MesDia(DM.Configuracao1.Data+1)+'" '+USU+
      ' ORDER BY PDV_DATA_HORA DESC ';
    Entidade.Open;
  end;


  bitFaturar.Enabled := (Entidade.FieldByName('PDV_PAF').AsString <> 'S');
  Faturar1.Enabled := (Entidade.FieldByName('PDV_PAF').AsString <> 'S');

  cmbCampo.ItemIndex := 0;
  edtLocalizar.SetFocus;
end;

procedure TfMxSPedLocImpPromis.bitFaturarClick(Sender: TObject);
var
  JaFaturado: Boolean;
  vCupomEsp1: Boolean;
begin
  if Sender = CupomEletro1 then
    vCupomEsp1 := True
    
  else
    vCupomEsp1 := False;

  if Entidade.IsEmpty then
    Raise Exception.Create('Selecione o Pedido!');

  if Entidade.EntregaDeposito and
     (DM.Configuracao1.CodigoCNC <> 11) then //Diferente do Dep�sito
    Raise exception.Create('O Faturamento desse pedido ser� feito no Dep�sito!');

  If (DM.Usuario1.Permissoes.IndexOf(IntToStr(6180)) < 0) and
     (DM.Configuracao1.Empresa <> empLBM) then
    Raise Exception.Create('Usu�rio n�o tem permiss�o para Emitir Nota/Cupom!')
  else if (DM.Usuario1.Permissoes.IndexOf(IntToStr(6180)) < 0) and
     (DM.Configuracao1.Empresa = empLBM) and  //Todos da LBM podem imprimir Nota de Cart�o
     (Entidade.TipoPag<>13) and    //Cart�o
     (Entidade.TipoPag<>412) and   //Boleto
     (Entidade.TipoPag<>416) then  //Dep�sito em Conta
    Raise Exception.Create('Usu�rio n�o tem permiss�o para Emitir Nota/Cupom!');

  JaFaturado := False;
  if Entidade.NotaFiscal > 0 then
  Begin
    ShowMessage('Nota j� impressa! Se Necess�rio Imprima Nota de Simples Remessa!');
    JaFaturado := True;
  end
  else if Entidade.NotaFiscal <= -1 then
    raise exception.Create('Pedido LJ3/LJ4!')
  else if DM.Configuracao1.Empresa = 1 then
  Begin
    with DM.QR_Consultas do
    Begin
      Close;
      SQL.Text := 'SELECT CDN_CODIGO '+
        ' FROM ENVIA_DADOS_NOTA '+
        ' WHERE CNC_DESTINO='+IntToStr(Entidade.CodigoCNC)+
        ' AND PDV_CODIGO='+IntToStr(Entidade.CodigoPDV);
      Open;
      if not IsEmpty then
      Begin
        ShowMessage('Nota j� impressa! Se Necess�rio Imprima Nota de Simples Remessa!');
        JaFaturado := True;
      end;
    end;
  end;

  with Cliente1 do
  Begin
    if (Entidade.ClienteCNC <> CodigoCNC) or
       (Entidade.CodigoCLI <> CodigoCLI) then
    Begin
      Close;
      ParamByName('CNC_CODIGO').asInteger:=Entidade.ClienteCNC;
      ParamByName('CLI_CODIGO').asInteger:=Entidade.CodigoCLI;
      Open;
    end;
  end;

  if Entidade.CodigoPacote > 0 then
  Begin
    with DM.QR_Consultas do
    Begin
      Close;
      SQL.Text := 'SELECT PDV_CODIGO '+
        ' FROM PACOTE_DE_VENDA '+
        ' WHERE CNC_CODIGO='+IntToStr(Entidade.CodigoCNC)+
        ' AND PDV_CODIGO='+IntToStr(Entidade.CodigoPacote)+
        ' AND PCT_NOTA_FISCAL>0 ';
      Open;
      if IsEmpty then
        Raise exception.Create('N�o foi impressa a Nota M�e do Pacote!');
    end;
  end;

  Application.CreateForm(TfMxSNotaCupom, fMxSNotaCupom);
  with fMxSNotaCupom do
  Begin
    if (self.Entidade.TipoDeVenda = 0) or   //Normal
       (self.Entidade.TipoDeVenda = 3) or //Pre-Pago
       (self.Entidade.TipoDeVenda = 10) then //Servi�o LBM
      Tag := 1
    else if self.Entidade.TipoDeVenda = 2 then //Remessa
      Tag := 5
    else
      Raise exception.Create('Tipo de Venda n�o esperada!');
    with Cliente1 do
    Begin
      if (self.Entidade.ClienteCNC <> CodigoCNC) or
         (self.Entidade.CodigoCLI <> CodigoCLI) then
      Begin
        Close;
        ParamByName('CNC_CODIGO').asInteger := self.Entidade.ClienteCNC;
        ParamByName('CLI_CODIGO').asInteger := self.Entidade.CodigoCLI;
        Open;
      end;
    end;
    Tag:=2;
    CdCNC    := self.Entidade.CodigoCNC;
    CdPDV    := self.Entidade.CodigoPDV;
    iCdCNCCli := self.Entidade.ClienteCNC;
    CdCLI    := self.Entidade.CodigoCLI;
    CdFPG    := self.Entidade.CodigoFPG;
    CdTipoPag:= self.Entidade.TipoPag;
    Entrada  := self.Entidade.entrada;
    CNPJ_CPF := self.Entidade.FieldByName('CNPJ_CPF').asString;
    if JaFaturado or
       (self.Entidade.CodigoPacote > 0) then
    Begin
      rdgNota.Checked := True;
      rdgCupom.Enabled := False;
      if JaFaturado then
        SimpRemessa := True;
    end
    else
    Begin
      if (self.Cliente1.Uf <> DM.Configuracao1.UF) or
         ((not self.Cliente1.PessoaFisica) and (Trim(self.Cliente1.CGFRG) <> '')) then
      Begin
        rdgNota.Checked := True;
        rdgCupom.Enabled := False;
      end
      else
      Begin
        if self.Cliente1.PessoaFisica then //Pessoa F�sica sempre Cupom Primeiro
        Begin
          if (DM.Configuracao1.Empresa <> empMotical) and //Motical pode Emitir Nota para Pessoa F�sica
             (DM.Configuracao1.Empresa in [empLBM]) and //Pois n�o tem S�rie D
             ((DM.Configuracao1.Empresa <> empLBM) OR (DM.Configuracao1.CodigoCNC <> 3)) then
            rdgNota.Enabled := False
          else
          Begin
            ckbManual.Checked := True;
            ckbManual.Enabled := False;
          end;
        end
        else if self.Cliente1.CGFRG <> '' then  //Pessoa Jur�dica com CGF Somente Nota
        Begin
          rdgNota.Checked := True;
          rdgCupom.Enabled := False;
        end;
      end;
    end;
    ReducaoEletro := vCupomEsp1;
    ShowModal;
  end;

  Entidade.Close;
  Entidade.Open;

  bitFaturar.Enabled := (Entidade.FieldByName('PDV_PAF').AsString <> 'S');
  Faturar1.Enabled := (Entidade.FieldByName('PDV_PAF').AsString <> 'S');
end;

procedure TfMxSPedLocImpPromis.Produto1BeforeOpen(DataSet: TDataSet);
begin
  Produto1.ParamByName('PRD_CODIGO').asInteger:=Item_Pedido_Venda1.CodigoPRD;
end;

procedure TfMxSPedLocImpPromis.Pedido_de_Venda2BeforeOpen(
  DataSet: TDataSet);
begin
  Pedido_de_Venda2.ParamByName('PDV_CODIGO').asInteger:=Entidade.
  FieldByName('PDV_CODIGO').asInteger;
  Pedido_de_Venda2.ParamByName('CNC_CODIGO').asInteger:=Entidade.
  FieldByName('CNC_CODIGO').asInteger;
end;

procedure TfMxSPedLocImpPromis.Pedido_de_Venda1CalcFields(
  DataSet: TDataSet);
begin
  with Cliente1 do
  Begin
    if (Entidade.CodigoCLI <> Cliente1.CodigoCLI) or
       (Entidade.ClienteCNC <> Cliente1.CodigoCNC) then
    Begin
      Close;
      ParamByName('CNC_CODIGO').asInteger := Entidade.ClienteCNC;
      ParamByName('CLI_CODIGO').asInteger := Entidade.CodigoCLI;
      Open;
    end;
    Entidade.FieldByName('Cliente').asString := RazaoSocial;
    Entidade.FieldByName('CNPJ_CPF').asString := CPFCGC;
    Entidade.FieldByName('CGF_RG').asString := CGFRG;
    Entidade.FieldByName('SPC').asString := IntToStr(SPC);
  end;

  Item_Pedido_Venda2.Close;
  Item_Pedido_Venda2.ParamByName('CNC_CODIGO').asInteger := Entidade.CodigoCNC;
  Item_Pedido_Venda2.ParamByName('PDV_CODIGO').asInteger := Entidade.CodigoPDV;
  Item_Pedido_Venda2.Open;
  If Entidade.Listado in [1,3] then
  Begin
    If Item_Pedido_Venda2.Locate('IPV_NOTA',2,[]) Then
      Entidade.FieldByName('OK').asString:='Cupom2'
    else If Item_Pedido_Venda2.Locate('IPV_NOTA',1,[]) Then
      Entidade.FieldByName('OK').asString:='Cupom1'
    else
      Entidade.FieldByName('OK').asString:='0';
  end
  else If Entidade.Listado in [2,4] then
    Entidade.FieldByName('OK').asString:='Cupom Cancelado'
  else If Entidade.Listado = 5 then
    Entidade.FieldByName('OK').asString:='Nota'
  else if Entidade.Listado = 0 then
    Entidade.FieldByName('OK').asString:=''
  else
    Entidade.FieldByName('OK').asString:='Nota Cancelada';

  if Entidade.NotaFiscal = -1 then
    Entidade.FieldByName('CupomFiscal').asString:='LJ3'
  else if Entidade.NotaFiscal = -2 then
    Entidade.FieldByName('CupomFiscal').asString:='LJ4'
  else if Entidade.NotaFiscal > 0 then
    Entidade.FieldByName('CupomFiscal').asString:=IntToStr(Entidade.NotaFiscal)
  else
    Entidade.FieldByName('CupomFiscal').asString:='';

  if Entidade.DataFPE > 0 then
    Entidade.FieldByName('DataFPE').asString:=formatDateTime('DD/MM/YYYY HH:MM',Entidade.DataFPE)
  else
    Entidade.FieldByName('DataFPE').asString:='';
end;

procedure TfMxSPedLocImpPromis.Titulo_receber6BeforeOpen(
  DataSet: TDataSet);
begin
  Titulo_receber6.ParamByName('CNC_CODIGO').asInteger := Entidade.CodigoCNC;
  Titulo_receber6.ParamByName('PDV_CODIGO').asInteger := Entidade.CodigoPDV;
end;

procedure TfMxSPedLocImpPromis.FormCreate(Sender: TObject);
begin
  Entidade:=Pedido_de_Venda1;

  if (DM.Configuracao1.Empresa <> empEletro) or
     (DM.Usuario1.Permissoes.IndexOf(IntToStr(3650)) <= 0) then
    bitFaturar.PopupMenu := nil;
end;

procedure TfMxSPedLocImpPromis.Produto1CalcFields(DataSet: TDataSet);
begin
  Classificacao_fiscal1.Close;
  if Produto1.CodigoCLF = 0 then
  Begin
    Produto1.FieldByname('Aliquota').asFloat:=17;
    Classificacao_fiscal1.ParamByName('CLF_CODIGO').asInteger:=1;
  end
  else
  Begin
    Classificacao_fiscal1.ParamByName('CLF_CODIGO').asInteger:=Produto1.CodigoCLF;
    Classificacao_fiscal1.Open;
    if Classificacao_fiscal1.IsEmpty then
      if DM.Configuracao1.Empresa = empLBM then
        Produto1.FieldByname('Aliquota').asFloat:=0
      else
        Produto1.FieldByname('Aliquota').asFloat:=17
    else
      Produto1.FieldByname('Aliquota').asFloat:=Classificacao_fiscal1.ICMS;
  end;
end;

procedure TfMxSPedLocImpPromis.bitReciboClick(Sender: TObject);
begin
  if Entidade.IsEmpty then
    Raise Exception.Create('Selecione o Pedido!');
  Application.CreateForm(TfMxSelRecibo, fMxSelRecibo);
  with fMxSelRecibo do
  Begin
    Tag := 0;
    CdCNC := self.Pedido_de_Venda1.CodigoCNC;
    CdPDV := self.Pedido_de_Venda1.CodigoPDV;
    ShowModal;
    Close;
  end;
end;

procedure TfMxSPedLocImpPromis.SB_LocClick(Sender: TObject);
var
  USU : string;
begin
  USU:='';
  If DM.Usuario1.Permissoes.IndexOf(IntToStr(4040)) < 0 then
    Usu:=' AND (USU_CODIGO='+IntToStr(DM.Configuracao1.CodigoUSU)+') ';
    
  if edtLocalizar.Text = '*' then
  Begin
    Entidade.Close;
    Entidade.SQL.Text:='SELECT * '+
      ' FROM PEDIDO_DE_VENDA '+
      ' WHERE PDV_SITUACAO=4 '+USU+
      ' AND PDV_EM_USO<>1 '+
      ' ORDER BY PDV_DATA_HORA DESC ';
    Entidade.Open;
  end
  else if (DM.Configuracao1.Empresa = empMotical) and
          (VerificaIntervaloInteiroBranco(edtLocalizar.Text)) and
          (cmbCampo.ItemIndex = 2) then //Nota Fiscal
  Begin
    Entidade.Close;
    Entidade.SQL.Text:='SELECT * '+
      ' FROM PEDIDO_DE_VENDA '+
      ' WHERE PDV_SITUACAO=4 '+USU+
      ' AND PDV_EM_USO<>1 '+
      DesmontaIntervalo(edtLocalizar.Text,' AND (','PDV_NOTA_FISCAL',')')+
      ' AND PDV_NOTA_FISCAL IS NOT NULL '+
      ' ORDER BY PDV_DATA_HORA DESC ';
    Entidade.Open;
  end
  else if cmbCampo.ItemIndex = 7 then //DtFaturamentoPendente
  Begin
    if not VerificaDataBranco(edtLocalizar.Text) then
      Raise exception.Create('Data inv�lida!');
    Entidade.Close;
    Entidade.SQL.Text:='SELECT * '+
      ' FROM PEDIDO_DE_VENDA '+
      ' WHERE PDV_SITUACAO=4 '+USU+
      ' AND PDV_EM_USO<>1 '+
      ' AND FPE_CODIGO>0 '+
      ' AND PDV_DT_FPE>="'+MesDia(edtLocalizar.Text)+'" '+
      ' AND PDV_DT_FPE<"'+MesDia(StrToDate(edtLocalizar.Text)+1)+'" '+      
      ' ORDER BY PDV_DT_FPE ASC, PDV_CODIGO ASC ';
    Entidade.Open;
  end
  else if cmbCampo.ItemIndex = 9 then //Raz�o Social
  Begin
    Entidade.Close;
    Entidade.SQL.Text:='SELECT P1.* '+
      ' FROM PEDIDO_DE_VENDA P1, CLIENTE C1 '+
      ' WHERE P1.PDV_SITUACAO=4 '+USU+
      ' AND P1.PDV_EM_USO<>1 '+
      ' AND C1.CLI_RZ_SOCIAL LIKE "%'+edtLocalizar.Text+'%" '+
      ' AND P1.CNC_CLIENTE=C1.CNC_CODIGO '+
      ' AND P1.CLI_CODIGO=C1.CLI_CODIGO '+
      ' ORDER BY C1.CLI_RZ_SOCIAL, P1.PDV_CODIGO ASC ';
    Entidade.Open;
  end
  else if cmbCampo.ItemIndex = 10 then //Nome do Paciente
  Begin
    Entidade.Close;
    Entidade.SQL.Text:='SELECT P1.* '+
      ' FROM PEDIDO_DE_VENDA P1, CLIENTE C1, DETALHE_DE_PEDIDO_DE_VENDA D1 '+
      ' WHERE P1.PDV_SITUACAO=4 '+USU+
      ' AND P1.PDV_EM_USO<>1 '+
      ' AND D1.DPV_PASCIENTE LIKE "%'+edtLocalizar.Text+'%" '+
      ' AND P1.CNC_CLIENTE=C1.CNC_CODIGO '+
      ' AND P1.CLI_CODIGO=C1.CLI_CODIGO '+
      ' AND P1.PDV_CODIGO=D1.PDV_CODIGO '+
      ' AND P1.CNC_CODIGO=D1.CNC_CODIGO '+
      ' ORDER BY C1.CLI_RZ_SOCIAL, P1.PDV_CODIGO ASC ';

     {Entidade.sql.Text:='SELECT D1.*, T1.*,T2.CLI_RZ_SOCIAL,'+
          ' (SELECT MAX(I1.FUN_CODIGO) FROM ITEM_DE_PEDIDO_DE_VENDA I1 '+
          ' WHERE I1.CNC_CODIGO=T1.CNC_CODIGO AND I1.PDV_CODIGO=T1.PDV_CODIGO) AS FUN_CODIGO '+
          ' FROM PEDIDO_DE_VENDA T1,CLIENTE T2, DETALHE_DE_PEDIDO_DE_VENDA D1 '+
          ' WHERE T2.CLI_CODIGO=T1.CLI_CODIGO '+
          ' AND T2.CNC_CODIGO=T1.CNC_CLIENTE '+
          ' AND D1.DPV_PASCIENTE LIKE "%'+edtLocalizar.Text+'%" '+
          ' AND T1.PDV_CODIGO=D1.PDV_CODIGO '+
          ' AND T1.CNC_CODIGO=D1.CNC_CODIGO '+
          ' ORDER BY T1.PDV_CONTATO DESC';}

    Entidade.Open;
  end
  else
    Entidade.Selecionar;
end;

procedure TfMxSPedLocImpPromis.CupomEletro1Click(Sender: TObject);
begin
  if (DM.Configuracao1.Empresa = empEletro) and
     (DM.Usuario1.Permissoes.IndexOf(IntToStr(3650)) > 0) then
  Begin
    if DM.Configuracao1.Empresa = empEletro then
      bitFaturarClick(CupomEletro1);
  end;
end;

procedure TfMxSPedLocImpPromis.bitEspelhoClick(Sender: TObject);
begin
  if Entidade.IsEmpty then
    Raise Exception.Create('Selecione o Pedido!');

  if DM.Configuracao1.Empresa = empLuciano then
  Begin
    Application.CreateForm(Trpt_PedidoServicoLuciano, rpt_PedidoServicoLuciano);
    with rpt_PedidoServicoLuciano do
    Begin
      Tag := 0;
      Entidade.Close;
      Entidade.SQL.Text := 'SELECT * FROM PEDIDO_DE_VENDA '+
        ' WHERE CNC_CODIGO='+IntToStr(self.Entidade.CodigoCNC)+
        ' AND PDV_CODIGO='+IntToStr(self.Entidade.CodigoPDV);
      Entidade.Open;
      report.Preview;
      Close;
    end;
  end
  else
  Begin
    if DM.Configuracao1.Daruma <> 1 then
    Begin
      Application.CreateForm(Trpt_PedidoVendaItemPDVRed2, rpt_PedidoVendaItemPDVRed2);
      with rpt_PedidoVendaItemPDVRed2 do
      Begin
        if DM.Configuracao1.Empresa = empAndrea then //Meia Folha
          report.Options.PageLength := 32;
        if (DM.Configuracao1.Empresa in [empEletro, empPetromax]) and
           (self.Entidade.mafalda <> 1) then
        Begin
          zrlValorUnit.Enabled := False;
          zrlTotalItem.Enabled := False;
          zrlDescTotalPedido.Enabled := False;
          zrlTotalPedido.Enabled := False;
        end;
        with Pedido_de_Venda1 do
        Begin
          close;
          parambyname('PDV_CODIGO').AsInteger := self.Entidade.COdigoPDV;
          parambyname('CNC_CODIGO').AsInteger := self.Entidade.CodigoCNC;
          open;
          report.Height := report.Height + 2*RecordCount;
        end;
        report.preview;
        Close;
      end;
    end
    else //Daruma
    Begin
      Application.CreateForm(Trpt_PedidoVendaCodigoPreco, rpt_PedidoVendaCodigoPreco);
      rpt_PedidoVendaCodigoPreco.SZRLabel2.Caption := IntToStr(self.Entidade.CodigoPDV);
      rpt_PedidoVendaCodigoPreco.SZRLabel3.Caption := DateTimeToStr(self.Entidade.DataEntrega);
      rpt_PedidoVendaCodigoPreco.SZRLabel4.Caption := format('%.2f',[Pedido_de_Venda1.Total+Pedido_de_Venda1.Acrescimo]);
      if self.Entidade.DiasReserv > 0 then
        rpt_PedidoVendaCodigoPreco.SZRLabel5.Enabled:=True
      else
        rpt_PedidoVendaCodigoPreco.SZRLabel5.Enabled:=False;
      rpt_PedidoVendaCodigoPreco.report.Preview;
      rpt_PedidoVendaCodigoPreco.Close;
    end;
  end;
end;

procedure TfMxSPedLocImpPromis.Pedido_de_Venda1AfterScroll(
  DataSet: TDataSet);
begin
  bitFaturar.Enabled := (Entidade.FieldByName('PDV_PAF').AsString <> 'S');
  Faturar1.Enabled := (Entidade.FieldByName('PDV_PAF').AsString <> 'S');
end;

end.
