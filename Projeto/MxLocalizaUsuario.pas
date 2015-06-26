unit MxLocalizaUsuario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Usuario, Db, DBTables, SQuery, Grids, DBGrids, ExtCtrls, Menus, Variants,
  Buttons, StdCtrls, SiacReport_TLB;

type
  TfMxLocalizaUsuario = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DSUsuario1: TDataSource;
    Usuario1: TUsuario;
    Timer1: TTimer;
    Usuario1CNC_CODIGO: TIntegerField;
    Usuario1USU_CODIGO: TIntegerField;
    Usuario1USU_DT_CADASTRO: TDateTimeField;
    Usuario1USU_DT_ALTERADO: TDateTimeField;
    Usuario1USU_NOME: TStringField;
    Usuario1USU_SENHA: TStringField;
    Usuario1USU_PERFIL: TSmallintField;
    Usuario1USU_MAQUINA: TIntegerField;
    Usuario1USU_SITUACAO: TIntegerField;
    Usuario1USU_OBSERVACAO: TStringField;
    Usuario1Alterado: TStringField;
    Usuario1Situacao: TStringField;
    Usuario1Enter_Tab: TStringField;
    Usuario1Perfil: TStringField;
    Usuario1Maquina: TStringField;
    Timer2: TTimer;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    Panel3: TPanel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    SB_Imprimir: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure Usuario1CalcFields(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure SB_ImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Entidade:TUsuario;
    Cancelar:Boolean;
    Tempo:integer;
    Ordem, Ordena, CampoColuna, Pesquisa :string;
  end;

var
  fMxLocalizaUsuario: TfMxLocalizaUsuario;

implementation

uses CdCliente, UDM, CdUsuario, MxMensagemTempo, funcoes;

{$R *.DFM}

procedure TfMxLocalizaUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Entidade.Close;
  action:=cafree;
end;

procedure TfMxLocalizaUsuario.FormShow(Sender: TObject);
begin
  DM.Usuario1.AlteraCorComponentes(self);
  if not Entidade.Active then
    Entidade.Open;
  if (Ordem = null) or (Ordem = '') then
    Ordem := 'ASC';
  if (Ordena = null) or (Ordena = '') then
    Ordena:='USU_NOME';
  Pesquisa:='';
  Cancelar:=True;
end;

procedure TfMxLocalizaUsuario.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #27) then
  begin
    Cancelar:=False;
    Close;
  end
  else if Key = '*' then
  Begin
    key := #0;
    RadioGroup1Click(RadioGroup1);
    //if ordena = 'USU_CODIGO' then
    //  Ordena2Click(sender)
    //else if ordena = 'USU_NOME' then
    //  Ordena1Click(sender);
    Pesquisa:='';
  end
  else
  Begin
    Timer1.Enabled:=True;
    Pesquisa:=Pesquisa+Key;
    Entidade.LocalizaValor(Ordena,Pesquisa);
  end;
end;

procedure TfMxLocalizaUsuario.Timer1Timer(Sender: TObject);
begin
  Tempo:=Tempo+1;
  if Tempo>25 then
  Begin
    Pesquisa:='';
    Tempo:=0;
    Timer1.Enabled:=False;
  end;
end;

procedure TfMxLocalizaUsuario.Usuario1CalcFields(DataSet: TDataSet);
begin
  case Entidade.Situacao of
    0: Entidade.FieldByName('Situacao').asString:='Ativado';
    1: Entidade.FieldByName('Situacao').asString:='Desativado';
    2: Entidade.FieldByName('Situacao').asString:='Logado';
  end;
  if Entidade.DataAlterado > 0 then
    Entidade.FieldByName('Alterado').asString:=formatDateTime('dd/mm/yyyy hh:mm',Entidade.DataAlterado)
  else
    Entidade.FieldByName('Alterado').asString:='';
  if Entidade.Perfil then
    Entidade.FieldByName('Perfil').asString:='Sim'
  else
    Entidade.FieldByName('Perfil').asString:='N�o';
  if (Entidade.Maquina > 0) and (Entidade.Situacao = 2) then
    if Entidade.MaquinaLogado < 10 then
      Entidade.FieldByName('Maquina').asString:='Micro-0'+IntToStr(Entidade.MaquinaLogado)
    else
      Entidade.FieldByName('Maquina').asString:='Micro-'+IntToStr(Entidade.MaquinaLogado)
  else
      Entidade.FieldByName('Maquina').asString:='';

end;

procedure TfMxLocalizaUsuario.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (Column.FieldName = 'Situacao') then
  begin
    if Usuario1USU_SITUACAO.Value = 2 then
      DBGrid1.Canvas.Font.Color := clRed;
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
  end;
end;

procedure TfMxLocalizaUsuario.FormCreate(Sender: TObject);
begin
  Entidade:=Usuario1;
end;

procedure TfMxLocalizaUsuario.Timer2Timer(Sender: TObject);
var
  CdCNC, CdUSU:integer;
begin
  CdCNC:=Entidade.CodigoCNC;
  CdUSU:=Entidade.CodigoUSU;
  Entidade.Close;
  Entidade.Open;
  Entidade.LocalizarCod(CdUSU,CdCNC);
end;

procedure TfMxLocalizaUsuario.SpeedButton2Click(Sender: TObject);
begin
  close;
end;

procedure TfMxLocalizaUsuario.RadioGroup1Click(Sender: TObject);
var
  USU :integer;
begin
  if Entidade.IsEmpty then
    Raise Exception.Create('Tabela de Usu�rio vazia!');
  if RadioGroup1.ItemIndex = 0 then
  begin
    //Ordena1.Checked:= not MenuOrdem.Checked;
    Application.CreateForm(TfMxMensagemTempo, fMxMensagemTempo);
    fMxMensagemTempo.mensagem:='C�digo';
    fMxMensagemTempo.Show;
    fMxMensagemTempo.Refresh;
    USU:=Entidade.CodigoUSU;
    Entidade.Close;
    Entidade.SQL.Text:='SELECT * FROM USUARIO  '+
        ' WHERE USU_SITUACAO<>1 '+
        ' ORDER BY CNC_CODIGO,USU_SITUACAO DESC,USU_CODIGO '+Ordem;
    Entidade.Open;
    if tag = 0 then
      Entidade.LocalizarCod(USU,DM.Configuracao1.CodigoCNC);
    ordena:='USU_CODIGO';
    fMxMensagemTempo.Close;
  end
  else
  begin
    //Ordena1.Checked:= not MenuOrdem.Checked;
    Application.CreateForm(TfMxMensagemTempo, fMxMensagemTempo);
    fMxMensagemTempo.mensagem:='Nome';
    fMxMensagemTempo.Show;
    fMxMensagemTempo.Refresh;
    USU:=Entidade.CodigoUSU;
    Entidade.Close;
    Entidade.SQL.Text:='SELECT * FROM USUARIO  '+
        ' WHERE USU_SITUACAO<>1 '+
        ' ORDER BY CNC_CODIGO,USU_SITUACAO DESC,USU_NOME '+Ordem;
    Entidade.Open;
    if tag = 0 then
      Entidade.LocalizarCod(USU,DM.Configuracao1.CodigoCNC);
    ordena:='USU_NOME';
    fMxMensagemTempo.Close;
  end;
end;

procedure TfMxLocalizaUsuario.RadioGroup2Click(Sender: TObject);
begin
  if RadioGroup2.ItemIndex = 0 then
    Ordem := 'ASC'
  else
    Ordem := 'DESC';

  RadioGroup1Click(RadioGroup1);
end;

procedure TfMxLocalizaUsuario.SB_ImprimirClick(Sender: TObject);
var
  SQL: string;
  stiReport: CoSiacReport_; //TSiacReport;
begin
  SQL := 'SELECT '+
         '  T1.*, '+
         '  T2.CNC_RZ_SOCIAL, '+
         '  T2.CNC_NOME_FAN, '+
         '  T2.CNC_FONE '+
         'FROM '+
         '  USUARIO T1 '+
         'INNER JOIN CENTRO_DE_CUSTO T2 ON '+
         '  T1.CNC_CODIGO = T2.CNC_CODIGO '+
         'ORDER BY T1.CNC_CODIGO, T1.USU_NOME';
  stiReport.Create.ReportUsuarios(false,
                                  false,
                                  SQL,
                                  EmpresaDesenvolvedora,
                                  'Relat�rio de usu�rios do sistema',
                                  DM.CentroCusto1.RazaoSocial,
                                  '',//DM.Configuracao1.LojaNome
                                  'Relat�rio de Usu�rios',
                                  DM.Usuario1.NomeUSU,
                                  '',//Filtros
                                  rptArquivoLogo);
end;

end.
