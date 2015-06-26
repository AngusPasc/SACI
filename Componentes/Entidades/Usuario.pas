////////////////////////////////////////////////////////////////////////////////
//============================================================================//
// NOME DO PROJETO.....: PSACI                                                //
//============================================================================//
// REVIS�O.............: 2.0                                                  //
// M�DULO..............: PSACI                                                //
// UNIT................: Cadastro de Bancos                                   //
// ANALISTA............: Anderson Gon�alves                                   //
// DESENVOLVEDOR.......: Anderson Gon�alves                                   //
// DATA DAS ALTERA��ES.: 02/10/2010                                           //
//============================================================================//
// COMENT�RIOS..:                                                             //
//              :                                                             //
//              :                                                             //
//              :                                                             //
//              :                                                             //
//              :                                                             //
//              :                                                             //
//              :                                                             //
//              :                                                             //
//              :                                                             //
//============================================================================//
////////////////////////////////////////////////////////////////////////////////
unit Usuario;

interface

uses WinTypes, WinProcs, Messages, SysUtils, Classes, Controls,
     Forms, Graphics, Squery, Dbtables, Dialogs, Db, Stdctrls,
     Mask, Dbctrls, Configuracao, Permissao, Menus, Dbgrids,
     Funcoes, Extctrls, MMSystem, Variants, ActnMenus, ActnList,
     ActnMan, ActnCtrls;

type
  TUsuario = class(TSQuery)
    private
      { Private fields of TUsuario }
        { Storage for property CPermissao }
        FCPermissao : TPermissao;
        { Storage for property DataAlterado }
        FDataAlterado : TDateTime;
        { Storage for property DataCadastro }
        FDataCadastro : TDateTime;
        { Storage for property DataSenhaAlterada }
        FDataSenhaAlterada : TDateTime;
        { Storage for property ECodigoCNC }
        FECodigoCNC : TDBLookupComboBox;
        { Storage for property ECodigoUSU }
        FECodigoUSU : TEdit;
        { Storage for property EDataAlterado }
        FEDataAlterado : TMaskEdit;
        { Storage for property EDataCadastro }
        FEDataCadastro : TMaskEdit;
        { Storage for property EDbgrid }
        FEDbgrid : TDBGrid;
        { Storage for property EFone }
        FEFone : TMaskEdit;
        { Storage for property EFoto }
        FEFoto : TImage;
        { Storage for property ENomeUSU }
        FENomeUSU : TEdit;
        { Storage for property EOBS }
        FEOBS : TMemo;
        { Storage for property EPerfil }
        FEPerfil : TCheckBox;
        { Storage for property ESenha }
        FESenha : TEdit;
        { Storage for property ESituacao }
        FESituacao : TCombobox;
        { Storage for property ETodosCentros }
        FETodosCentros : TCheckBox;
        { Storage for property Fone }
        FFone : String;
        { Storage for property MaquinaLogado }
        FMaquinaLogado : Integer;
        { Storage for property NomeUSU }
        FNomeUSU : String;
        { Storage for property OBS }
        FOBS : String;
        { Storage for property Perfil }
        FPerfil : Boolean;
        { Storage for property Permissoes }
        FPermissoes : TStringList;
        { Storage for property QueryComandos }
        FQueryComandos : TQuery;
        { Storage for property Senha }
        FSenha : String;
        { Storage for property Situacao }
        FSituacao : Integer;
        { Storage for property Tela }
        FTela : TForm;
        { Storage for property TodosCentros }
        FTodosCentros : Boolean;

      { Private methods of TUsuario }
        { Method to set variable and property values and create objects }
        procedure AutoInitialize;
        { Method to free any objects created by AutoInitialize }
        procedure AutoDestroy;
        { Read method for property DataAlterado }
        function GetDataAlterado : TDateTime;
        { Write method for property DataAlterado }
        procedure SetDataAlterado(Value : TDateTime);
        { Read method for property DataCadastro }
        function GetDataCadastro : TDateTime;
        { Write method for property DataCadastro }
        procedure SetDataCadastro(Value : TDateTime);
        { Read method for property DataSenhaAlterada }
        function GetDataSenhaAlterada : TDateTime;
        { Read method for property Fone }
        function GetFone : String;
        { Write method for property Fone }
        procedure SetFone(Value : String);
        { Read method for property MaquinaLogado }
        function GetMaquinaLogado : Integer;
        { Write method for property MaquinaLogado }
        procedure SetMaquinaLogado(Value : Integer);
        { Read method for property NomeUSU }
        function GetNomeUSU : String;
        { Write method for property NomeUSU }
        procedure SetNomeUSU(Value : String);
        { Read method for property OBS }
        function GetOBS : String;
        { Write method for property OBS }
        procedure SetOBS(Value : String);
        { Read method for property Perfil }
        function GetPerfil : Boolean;
        { Write method for property Perfil }
        procedure SetPerfil(Value : Boolean);
        { Read method for property Senha }
        function GetSenha : String;
        { Write method for property Senha }
        procedure SetSenha(Value : String);
        { Read method for property Situacao }
        function GetSituacao : Integer;
        { Write method for property Situacao }
        procedure SetSituacao(Value : Integer);
        { Read method for property TodosCentros }
        function GetTodosCentros : Boolean;
        { Write method for property TodosCentros }
        procedure SetTodosCentros(Value : Boolean);

    protected
      { Protected fields of TUsuario }

      { Protected methods of TUsuario }
        { Resets prop of component type if referenced component deleted }
        procedure Notification(AComponent : TComponent; Operation : TOperation); override;

    public
      { Public fields and properties of TUsuario }
        { Controla o estado da entidade(0-normal,1-Inser��o,2-Altera��o) }
        Estado : Integer;

      { Public methods of TUsuario }
        function AlterarAuto:Boolean;
        procedure AtualizaControles(Habilitar:Boolean);
        procedure CancelaEdicao;
        procedure CarregaDados;
        procedure CarregaPermissoes(PUsuLogin:integer);
        procedure ConfiguraTela(Tela:TForm);
        procedure MDI(Tela:TForm);
        procedure AlteraCorComponentes(Tela:TForm); (*Anderson*)
        constructor Create(AOwner: TComponent); override;
        function Deletar(CdCNC,CdUSU:Integer):Boolean;
        destructor Destroy; override;
        function FinalizaEdicao:Boolean;
        { Insere um usu�rio }
        function Inserir(CdCNC,CdUSU,PSituacao: integer; PPerfil, PTodosCentros:Boolean;PNome,PSenha,POBS:String):boolean;
        function InserirAuto:Boolean;
        procedure LimpaCampos;
        { Localiza um usu�rio }
        function LocalizarCod(CdUSU:integer; CdCNC:Integer=-1):Boolean;
        function LocalizarNome(CdUSU:integer; Nome:String):Boolean;
        function Logar(Login,PSenha:string;MudaSituacao:Boolean;IgnorarSenha:Boolean=False):Integer;
        procedure Logoff;
        procedure PreparaAlteracao;
        procedure PreparaInsercao;
        function deletarauto:Boolean;

    published
      { Published properties of TUsuario }
        property CPermissao : TPermissao read FCPermissao write FCPermissao;
        property DataAlterado : TDateTime
             read GetDataAlterado write SetDataAlterado;
        property DataCadastro : TDateTime
             read GetDataCadastro write SetDataCadastro;
        property DataSenhaAlterada : TDateTime
             read GetDataSenhaAlterada write FDataSenhaAlterada;
        property ECodigoCNC : TDBLookupComboBox
             read FECodigoCNC write FECodigoCNC;
        property ECodigoUSU : TEdit read FECodigoUSU write FECodigoUSU;
        property EDataAlterado : TMaskEdit
             read FEDataAlterado write FEDataAlterado;
        property EDataCadastro : TMaskEdit
             read FEDataCadastro write FEDataCadastro;
        property EDbgrid : TDBGrid read FEDbgrid write FEDbgrid;
        property EFone : TMaskEdit read FEFone write FEFone;
        property EFoto : TImage read FEFoto write FEFoto;
        property ENomeUSU : TEdit read FENomeUSU write FENomeUSU;
        property EOBS : TMemo read FEOBS write FEOBS;
        property EPerfil : TCheckBox read FEPerfil write FEPerfil;
        property ESenha : TEdit read FESenha write FESenha;
        property ESituacao : TCombobox read FESituacao write FESituacao;
        property ETodosCentros : TCheckBox
             read FETodosCentros write FETodosCentros;
        property Fone : String read GetFone write SetFone;
        property MaquinaLogado : Integer
             read GetMaquinaLogado write SetMaquinaLogado;
        property NomeUSU : String read GetNomeUSU write SetNomeUSU;
        property OBS : String read GetOBS write SetOBS;
        property Perfil : Boolean read GetPerfil write SetPerfil;
        property Permissoes : TStringList read FPermissoes write FPermissoes;
        property QueryComandos : TQuery
             read FQueryComandos write FQueryComandos;
        property Senha : String read GetSenha write SetSenha;
        property Situacao : Integer read GetSituacao write SetSituacao;
        property Tela : TForm read FTela write FTela;
        property TodosCentros : Boolean
             read GetTodosCentros write SetTodosCentros;

  end;

procedure Register;

implementation

procedure Register;
begin
     { Register TUsuario with Softech as its
       default page on the Delphi component palette }
     RegisterComponents('Softech', [TUsuario]);
end;

{ Method to set variable and property values and create objects }
procedure TUsuario.AutoInitialize;
begin
     Estado := 0;
     FECodigoCNC := nil;
     FECodigoUSU := nil;
     FEDataAlterado := nil;
     FEDataCadastro := nil;
     FEDbgrid := nil;
     FEFone := nil;
     FEFoto := nil;
     FENomeUSU := nil;
     FEOBS := nil;
     FEPerfil := nil;
     FESenha := nil;
     FESituacao := nil;
     FETodosCentros := nil;
     FPermissoes := TStringList.Create;
     FQueryComandos := nil;
     FTela := nil;
end; { of AutoInitialize }

{ Resets prop of component type if referenced component deleted }
procedure TUsuario.Notification(AComponent : TComponent; Operation : TOperation);
begin
     inherited Notification(AComponent, Operation);
     if Operation <> opRemove then
        Exit;
     { Has a component referenced by a property of 
       this component been deleted?  If so, update 
       the property. }
     if AComponent = FECodigoCNC then
        FECodigoCNC := nil;
     if AComponent = FECodigoUSU then
        FECodigoUSU := nil;
     if AComponent = FEDataAlterado then
        FEDataAlterado := nil;
     if AComponent = FEDataCadastro then
        FEDataCadastro := nil;
     if AComponent = FEDbgrid then
        FEDbgrid := nil;
     if AComponent = FEFone then
        FEFone := nil;
     if AComponent = FEFoto then
        FEFoto := nil;
     if AComponent = FENomeUSU then
        FENomeUSU := nil;
     if AComponent = FEOBS then
        FEOBS := nil;
     if AComponent = FEPerfil then
        FEPerfil := nil;
     if AComponent = FESenha then
        FESenha := nil;
     if AComponent = FESituacao then
        FESituacao := nil;
     if AComponent = FETodosCentros then
        FETodosCentros := nil;
     if AComponent = FQueryComandos then
        FQueryComandos := nil;
     if AComponent = FTela then
        FTela := nil;
end;

{ Method to free any objects created by AutoInitialize }
procedure TUsuario.AutoDestroy;
begin
     FPermissoes.Free;
end; { of AutoDestroy }

{ Read method for property DataAlterado }
function TUsuario.GetDataAlterado : TDateTime;
begin
  try
    Result := Self.fieldByName('USU_DT_ALTERADO').asDateTime;
  except
    Result := 0;
  end;
end;

{ Write method for property DataAlterado }
procedure TUsuario.SetDataAlterado(Value : TDateTime);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
  try
    Self.fieldByName('USU_DT_ALTERADO').asDatetime := Value;
  except
    ShowMessage('N�o foi poss�vel alterar o campo "USU_DT_ALTERADO"!');
  end;
end;

{ Read method for property DataCadastro }
function TUsuario.GetDataCadastro : TDateTime;
begin
  try
    Result := Self.fieldByName('USU_DT_CADASTRO').asDateTime;
  except
    Result := 0;
  end;
end;

{ Write method for property DataCadastro }
procedure TUsuario.SetDataCadastro(Value : TDateTime);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
  try
    Self.fieldByName('USU_DT_CADASTRO').asDatetime := Value;
  except
    ShowMessage('N�o foi poss�vel alterar o campo "USU_DT_CADASTRO"!');
  end;
end;

{ Read method for property DataSenhaAlterada }
function TUsuario.GetDataSenhaAlterada : TDateTime;
begin
  try
    Result := Self.fieldByName('USU_DT_SENHA_ALTERADA').asDateTime;
  except
    Result := 0;
  end;
end;

{ Read method for property Fone }
function TUsuario.GetFone : String;
begin
  try
    Result := Self.fieldByName('USU_FONE').asString;
  except
    result:= ''
  end;
end;

{ Write method for property Fone }
procedure TUsuario.SetFone(Value : String);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
  try
    Self.fieldByName('USU_FONE').asString := Value;
  except
    ShowMessage('N�o foi poss�vel alterar o campo "USU_FONE"!');
  end;
end;

{ Read method for property MaquinaLogado }
function TUsuario.GetMaquinaLogado : Integer;
begin
  try
    Result := Self.fieldByName('USU_MAQUINA').asInteger;
  except
    result:= 0
  end;
end;

{ Write method for property MaquinaLogado }
procedure TUsuario.SetMaquinaLogado(Value : Integer);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
  try
    Self.fieldByName('USU_MAQUINA').asInteger := Value;
  except
    ShowMessage('N�o foi poss�vel alterar o campo "USU_MAQUINA"!');
  end;
end;

{ Read method for property NomeUSU }
function TUsuario.GetNomeUSU : String;
begin
  try
    Result := Self.fieldByName('USU_NOME').asString;
  except
    result:= ''
  end;
end;

{ Write method for property NomeUSU }
procedure TUsuario.SetNomeUSU(Value : String);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
  try
    Self.fieldByName('USU_NOME').asString := Value;
  except
    ShowMessage('N�o foi poss�vel alterar o campo "USU_NOME"!');
  end;
end;

{ Read method for property OBS }
function TUsuario.GetOBS : String;
begin
  try
    Result := Self.fieldByName('USU_OBSERVACAO').asString;
  except
    result:= ''
  end;
end;

{ Write method for property OBS }
procedure TUsuario.SetOBS(Value : String);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
  try
    Self.fieldByName('USU_OBSERVACAO').asString := Value;
  except
    ShowMessage('N�o foi poss�vel alterar o campo "USU_OBSERVACAO"!');
  end;
end;

{ Read method for property Perfil }
function TUsuario.GetPerfil : Boolean;
begin
 try
   result := (Self.fieldByName('USU_PERFIL').asInteger=1);
 except
    try
      result := Self.fieldByName('USU_PERFIL').asBoolean;
    except
      Result:=False;
    end;
 end;
end;

{ Write method for property Perfil }
procedure TUsuario.SetPerfil(Value : Boolean);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      if value=true then
        Self.fieldByName('USU_PERFIL').asInteger := 1
      else
        Self.fieldByName('USU_PERFIL').asInteger := 0;
    except
       try
         Self.fieldByName('USU_PERFIL').asBoolean := Value;
       except
         ShowMessage('N�o foi poss�vel alterar o campo "USU_PERFIL"!');
       end;
    end;
end;

{ Read method for property Senha }
function TUsuario.GetSenha : String;
begin
  try
    Result := Self.fieldByName('USU_SENHA').asString;
  except
    result:= ''
  end;
end;

{ Write method for property Senha }
procedure TUsuario.SetSenha(Value : String);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
  try
    Self.fieldByName('USU_SENHA').asString := Value;
  except
    ShowMessage('N�o foi poss�vel alterar o campo "USU_SENHA"!');
  end;
end;

{ Read method for property Situacao }
function TUsuario.GetSituacao : Integer;
begin
  try
    Result := Self.fieldByName('USU_SITUACAO').asInteger;
  except
    result:= 0
  end;
end;

{ Write method for property Situacao }
procedure TUsuario.SetSituacao(Value : Integer);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
  try
    Self.fieldByName('USU_SITUACAO').asInteger := Value;
  except
    ShowMessage('N�o foi poss�vel alterar o campo "USU_SITUACAO"!');
  end;
end;

{ Read method for property TodosCentros }
function TUsuario.GetTodosCentros : Boolean;
begin
 try
   result := (Self.fieldByName('USU_TODOS_CENTROS').asInteger=1);
 except
    try
      result := Self.fieldByName('USU_TODOS_CENTROS').asBoolean;
    except
      Result:=False;
    end;
 end;
end;

{ Write method for property TodosCentros }
procedure TUsuario.SetTodosCentros(Value : Boolean);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      if value then
        Self.fieldByName('USU_TODOS_CENTROS').asInteger := 1
      else
        Self.fieldByName('USU_TODOS_CENTROS').asInteger := 0;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "USU_TODOS_CENTROS"!');
    end;
end;

function TUsuario.AlterarAuto:Boolean;
var
  sSenhaNova, sMensagem: string;
  CdCNC, CdUSU, iPerfil, iTodosCentros: integer;
begin
  Result:=false;
  sSenhaNova := '';
  sMensagem  := '';
  CdCNC := CodigoCNC;
  CdUSU := CodigoUSU;

  If localizarNome(CdUSU, ENomeUSU.Text) Then
    ShowMessage('Usu�rio j� cadastrado!');

  try
    if Length(ESenha.Text) <> 20 then
    Begin
      sSenhaNova := ',USU_SENHA="'+Encrypt(ESenha.Text)+'" '+
                    ',USU_DT_SENHA_ALTERADA="'+MesDiaHora(CConfiguracao.DataHora)+'" ';
      sMensagem := ' (SENHA ALTERADA)';
    end;
  except
  end;
  try
    if EPerfil.Checked then
      iPerfil := 1
    else
      iPerfil := 0;
  except
    iPerfil := 0;
  end;
  try
    if ETodosCentros.Checked then
      iTodosCentros := 1
    else
      iTodosCentros := 0;
  except
    iTodosCentros := 0;
  end;

  try
    ExecutaSQL(CConfiguracao.QueryComandos,'UPDATE USUARIO SET '+
      ' USU_DT_ALTERADO="'+MesDiaHora(CConfiguracao.DataHora)+'" '+
      ',USU_NOME="'+ENomeUSU.Text+'" '+
      sSenhaNova+
      ',USU_FONE="'+EFone.Text+'" '+
      ',USU_PERFIL='+IntToStr(iPerfil)+
      ',USU_TODOS_CENTROS='+IntToStr(iTodosCentros)+
      ',USU_SITUACAO='+IntToStr(ESituacao.ItemIndex)+
      ',USU_OBSERVACAO="'+EObs.Text+'" '+
      ' WHERE CNC_CODIGO='+InttoStr(CdCNC)+
      ' AND USU_CODIGO='+InttoStr(CdUSU));

    try
      if (sSenhaNova <> '') then
      Begin
        ExecutaSQL(CConfiguracao.QueryComandos,'UPDATE USUARIO_SENHA SET '+
          ' SNH_SITUACAO=1 '+ //Desativar as senhas antigas
          ',SNH_DT_ALTERADO="'+MesDiaHora(CConfiguracao.DataHora)+'" '+
          ',SNH_OBSERVACAO=SNH_OBSERVACAO+"(ALTERAR USUARIO)"'+
          ' WHERE CNC_USUARIO='+IntToStr(CdCNC)+
          ' AND USU_USUARIO='+IntToStr(CdUSU)+
          ' AND SNH_SITUACAO<>1 ');
        ExecutaSQL(CConfiguracao.QueryComandos,'INSERT USUARIO_SENHA '+
          '(CNC_ORIGEM, CNC_CODIGO, USU_CODIGO '+
          ',CNC_USUARIO, USU_USUARIO, SNH_DT_CADASTRO, SNH_SENHA '+
          ',SNH_SITUACAO,SNH_OBSERVACAO) VALUES '+
          ' ('+IntToStr(CentroDeCusto)+
          ', '+IntToStr(CConfiguracao.CodigoCNC)+
          ', '+IntToStr(CConfiguracao.CodigoUSU)+
          ', '+IntToStr(CdCNC)+
          ', '+IntToStr(CdUSU)+
          ',"'+MesDiaHora(CConfiguracao.DataHora)+'" '+
          ',"'+Encrypt(ESenha.Text)+'" '+
          ',0'+ //Situacao
          ',"(ALTERAR USUARIO)")');
      end;
    except
    end;
    GeraLog(1800,CdCNC,CdUSU,
       'Nome:'+ENomeUSU.Text+
      ' Perfil:'+IntToStr(iPerfil)+
      ' TodosCNC:'+IntToStr(iTodosCentros)+
      sMensagem);
    Result := True;
  except
    ShowMessage('N�o foi poss�vel alterar o registro corrente.');
  end;
end;

procedure TUsuario.AtualizaControles(Habilitar:Boolean);
begin
  Try
    EDbgrid.Enabled           :=not Habilitar;
  except
  end;
  try
    ECodigoCNC.Enabled       :=not Habilitar;
  except
  end;
  try
    ENomeUSU.Enabled          :=Habilitar;
  except
  end;
  try
    EFone.Enabled             :=Habilitar;
  except
  end;
  try
    ESenha.Enabled             :=Habilitar;
  except
  end;
  try
    EPerfil.Enabled            :=Habilitar;
  except
  end;
  try
    ETodosCentros.Enabled      :=Habilitar;
  except
  end;
  try
    ESituacao.Clear;
    ESituacao.Items.Add('Ativado');
    ESituacao.Items.Add('Desativado');
    if (Habilitar) and (Situacao<>2) then
      ESITUACAO.Enabled          :=Habilitar
    else
    Begin
      ESituacao.Items.Add('Logado');
      ESituacao.Enabled := False;
    end;
    ESituacao.ItemIndex:=Situacao;
  except
  end;
  try
    EOBS.Enabled               :=Habilitar;
  except
  end;
end;

procedure TUsuario.CancelaEdicao;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
  AtualizaControles(False);
  Estado:=0;
  CarregaDados;
end;

procedure TUsuario.CarregaDados;
var
  foto:string;
begin
  try
    ECodigoUSU.Text           :=IntToStr(CodigoUSU);
  except
  end;
  try
    ENomeUSU.Text             :=NomeUSU;
  except
  end;
  try
    EFone.Text                :=Fone;
  except
  end;
  try
    ECodigoCNC.KeyValue       :=CodigoCNC;
  except
  end;
  try
    if DataCadastro > 0 then
      EDataCadastro.Text           :=formatDateTime('dd/mm/yyyy hh:mm',DataCadastro)
    else
      EDataCadastro.Text           :='';
    except
  end;
  try
    if DataAlterado > 0 then
      EDataAlterado.Text           :=formatDateTime('dd/mm/yyyy hh:mm',DataAlterado)
    else
      EDataAlterado.Text           :='';
    except
  end;
  try
    ESenha.Text               :=Senha;
  except
  end;
  try
    EPerfil.Checked           :=Perfil;
  except
  end;
  try
    ETodosCentros.Checked     :=TodosCentros;
  except
  end;
  try
    ESITUACAO.itemindex       :=Situacao;
  except
  end;
  try
    EOBS.Text                 :=OBS;
  except
  end;
  try
    if CConfiguracao.CodigoCNC < 10 then
      foto:=CConfiguracao.PastaImagens+'\Usuario\0'+IntToStr(CConfiguracao.CodigoCNC)+
         '-'+IntToStr(CodigoUSU)+'.JPG'
    else
      foto:=CConfiguracao.PastaImagens+'\Usuario\'+IntToStr(CConfiguracao.CodigoCNC)+
         '-'+IntToStr(CodigoUSU)+'.JPG';
    Efoto.Picture.LoadFromFile(foto);
  Except
    try
      EFoto.Picture:=nil;
    except
    end;
  end;
end;

procedure TUsuario.CarregaPermissoes(PUsuLogin:integer);
begin
  try
    Permissoes.Clear;
    with CPermissao do
    begin
      Close;
      SQL.Text := 'SELECT * FROM PERMISSAO '+
        ' WHERE USU_CODIGO='+IntToStr(PUsuLogin);
      Open;
      first;
      while not EOF do
      begin
        Permissoes.Add(IntToStr(CPermissao.CodigoOPS));
        Next;
      end;
    end;
  except
  end;
end;

procedure TUsuario.AlteraCorComponentes(Tela:TForm);

  procedure AlteraParaclInfoBk(Tela:TForm);
  var
    i: Integer;
  begin
    with Tela do
    begin
      for i := 0 to ComponentCount - 1 do
      begin
        if Components[i] is TDBGrid then
          (Components[i] as TDBGrid).Color := clInfoBk;

        if Components[i] is TEdit then
        begin
          if (Components[i] as TEdit).Color = clMenu then
            (Components[i] as TEdit).Color := clInfoBk;
        end;
        if Components[i] is TMemo then
        begin
          if (Components[i] as TMemo).Color = clMenu then
            (Components[i] as TMemo).Color := clInfoBk;
        end;
        if Components[i] is TMaskEdit then
        begin
          if (Components[i] as TMaskEdit).Color = clMenu then
            (Components[i] as TMaskEdit).Color := clInfoBk;
        end;
        if Components[i] is TDBLookupComboBox then
        begin
          if (Components[i] as TDBLookupComboBox).Color = clMenu then
            (Components[i] as TDBLookupComboBox).Color := clInfoBk;
        end;
        if Components[i] is TComboBox then
        begin
          if (Components[i] as TComboBox).Color = clMenu then
            (Components[i] as TComboBox).Color := clInfoBk;
        end;
      end;
    end;
  end;

  procedure AlteraParaRelatorioGrafico(bGrafico: boolean; Tela:TForm);
  var
    i: Integer;
  begin
    with Tela do
    begin
      for i := 0 to ComponentCount - 1 do
      begin
        if Components[i] is TCheckBox then
        begin
          if (Components[i] as TCheckBox).Name = 'cbxRelatorioGrafico' then
          begin
            (Components[i] as TCheckBox).Checked := bGrafico;
            //(Components[i] as TCheckBox).Visible := not bGrafico;
            (Components[i] as TCheckBox).Visible := true;
          end;
        end;
      end;
    end;
  end;

  (*
  procedure AlteraCorGridParaclInfoBk(Tela:TForm);
  var
    i: Integer;
  begin
    with Tela do
    begin
      for i := 0 to ComponentCount - 1 do
      begin
        if Components[i] is TDBGrid then
          (Components[i] as TDBGrid).Color := clInfoBk;
      end;
    end;
  end;
  *)

begin
  //quando for matar os relat�rios antigos, setar o par�metro para true
  //que nao vai mais aparecer a op��o de relat�rio gr�fico pois ele sera default
  //AlteraParaRelatorioGrafico(false, Tela);
  AlteraParaRelatorioGrafico(RelatorioGrafico, Tela);



  if (f_SkinGerenciador) then
    AlteraParaclInfoBk(Tela);

  (*
  if f_Sistema = tsGerenciador then
    AlteraCorGridParaclInfoBk(Tela);
  *)
end;

procedure TUsuario.ConfiguraTela(Tela:TForm);
var
 i,j,l,m,n:integer;
begin
  with Tela do
  begin
    for i:=0 to ComponentCount-1 do
    begin
      if (Components[i].tag<>0) AND (Components[i].tag<>99) then
      begin
        if Permissoes.IndexOf(IntToStr(Components[i].tag))>-1 then
        begin
          if Components[i] is TMenuItem then
            TMenuItem(Components[i]).Visible:=True
          else
          begin
            try
              TWinControl(Components[i]).Visible:=True;
            except
            end;
          end;
        end
        else
        begin
          if Components[i] is TMenuItem then
            TMenuItem(Components[i]).Visible:=False
          else
          begin
            try
              TWinControl(Components[i]).Visible:=False;
            except
            end;
          end;
        end;
      end;
    end;

    (*</ Anderson Gon�alves em 02-01-2011*)
    for i := 0 to ControlCount - 1 do
    begin
      if Controls[i] is TActionMainMenuBar then
      begin
        for j := 0 to (Controls[i] as TActionMainMenuBar).ControlCount - 1 do
        begin
          if ((Controls[i] as TActionMainMenuBar).ActionClient.Items[j].tag <> 0)  and
             ((Controls[i] as TActionMainMenuBar).ActionClient.Items[j].tag <> 99) then
            (Controls[i] as TActionMainMenuBar).ActionClient.Items[j].Visible := Permissoes.IndexOf(IntToStr((Controls[i] as TActionMainMenuBar).ActionClient.Items[j].tag)) > -1;

          if (Controls[i] as TActionMainMenuBar).ActionClient.Items[j].Visible then
          begin
            for l := 0 to (Controls[i] as TActionMainMenuBar).ActionClient.Items[j].Items.Count - 1 do
            begin
              if ((Controls[i] as TActionMainMenuBar).ActionClient.Items[j].Items[l].tag <> 0)  and
                 ((Controls[i] as TActionMainMenuBar).ActionClient.Items[j].Items[l].tag <> 99) then
                (Controls[i] as TActionMainMenuBar).ActionClient.Items[j].Items[l].Visible := Permissoes.IndexOf(IntToStr((Controls[i] as TActionMainMenuBar).ActionClient.Items[j].Items[l].tag)) > -1;

              if (Controls[i] as TActionMainMenuBar).ActionClient.Items[j].Items[l].Visible then
              begin
                for m := 0 to (Controls[i] as TActionMainMenuBar).ActionClient.Items[j].Items[l].Items.Count - 1 do
                begin
                  if ((Controls[i] as TActionMainMenuBar).ActionClient.Items[j].Items[l].Items[m].tag <> 0)  and
                     ((Controls[i] as TActionMainMenuBar).ActionClient.Items[j].Items[l].Items[m].tag <> 99) then
                    (Controls[i] as TActionMainMenuBar).ActionClient.Items[j].Items[l].Items[m].Visible := Permissoes.IndexOf(IntToStr((Controls[i] as TActionMainMenuBar).ActionClient.Items[j].Items[l].Items[m].tag)) > -1;

                  if (Controls[i] as TActionMainMenuBar).ActionClient.Items[j].Items[l].Items[m].Visible then
                  begin
                    for n := 0 to (Controls[i] as TActionMainMenuBar).ActionClient.Items[j].Items[l].Items[m].Items.Count - 1 do
                    begin
                      if ((Controls[i] as TActionMainMenuBar).ActionClient.Items[j].Items[l].Items[m].Items[n].tag <> 0)  and
                         ((Controls[i] as TActionMainMenuBar).ActionClient.Items[j].Items[l].Items[m].Items[n].tag <> 99) then
                      (Controls[i] as TActionMainMenuBar).ActionClient.Items[j].Items[l].Items[m].Items[n].Visible := Permissoes.IndexOf(IntToStr((Controls[i] as TActionMainMenuBar).ActionClient.Items[j].Items[l].Items[m].Items[n].tag)) > -1;
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
    (*/>*)
    
    AlteraCorComponentes(Tela);
  end;
end;

constructor TUsuario.Create(AOwner: TComponent);
var
   Permissoes: TStrings;
begin
     { Call the Create method of the parent class }

     Permissoes := TStringList.Create;
     inherited Create(AOwner);

     { AutoInitialize sets the initial values of variables and      }
     { properties; also, it creates objects for properties of       }
     { standard Delphi object types (e.g., TFont, TTimer,           }
     { TPicture) and for any variables marked as objects.           }
     { AutoInitialize method is generated by Component Create.      }
     AutoInitialize;
     Permissoes.Create;

     { Code to perform other tasks when the component is created }

end;

function TUsuario.Deletar(CdCNC,CdUSU:Integer):Boolean;
begin
  Result := False;
  If not(localizarCod(CdUSU,CdCNC)) Then
    ShowMessage('N�o foi poss�vel deletar registro corrente pois o registro n�o existe!')
  Else
  Begin
    try
      if Delete then
      Begin
        Result := True;
        if TQuery(Self).isEmpty then
          LimpaCampos;
      end;
    Except
      ShowMessage('N�o foi poss�vel deletar registro corrente!');
    End;
  End;
end;

destructor TUsuario.Destroy;
begin
     { AutoDestroy, which is generated by Component Create, frees any   }
     { objects created by AutoInitialize.                               }
     AutoDestroy;

     { Here, free any other dynamic objects that the component methods  }
     { created but have not yet freed.  Also perform any other clean-up }
     { operations needed before the component is destroyed.             }

     { Last, free the component by calling the Destroy method of the    }
     { parent class.                                                    }
     inherited Destroy;
end;

function TUsuario.FinalizaEdicao:Boolean;
var
  mensagem:string;
  cod, cdcnc:Integer;
  aux:TDataSetNotifyEvent;
begin
  mensagem:='';
  if (Length(ENomeUSU.Text) < 3) then
    mensagem:=mensagem+'M�nimo de 3 caracteres para o Nome do Usu�rio!'+#13;
  if (Length(ESenha.Text) < 4) then
    mensagem:=mensagem+'M�nimo de 4 caracteres para a Senha!'+#13;
  if (Length(ESenha.Text) > 8) and (Length(ESenha.Text) < 20) then
    mensagem:=mensagem+'M�ximo de 8 caracteres para a Senha!'+#13;
  if (ENomeUSU.Text = ESenha.Text) then
    mensagem:=mensagem+'A senha n�o pode ser igual ao nome do usu�rio!'+#13;
  if mensagem <> '' then
  Begin
    Result := False;
    ShowMessage(mensagem);
    Exit;
  end
  else
  Begin
    Aux:=AfterScroll;
    AfterScroll:=nil;
    If Estado=1 then
    Begin
      if Inserirauto then
      Begin
        Result := True;
        close;
        open;
        LocalizarCod(SCodigo,CodigoCNC);
        AtualizaControles(False);
        Estado:=0;
        Carregadados;
      end
      else
        Result := False;
    End
    Else If Estado=2 then
    Begin
      cod:=codigoUSU;
      cdcnc:=codigoCnc;
      if Alterarauto then
      Begin
        Result := True;
        close;
        open;
        LocalizarCod(cod, cdcnc);
        AtualizaControles(False);
        Estado:=0;
        Carregadados;
      end
      else
        Result := False;
    End
    else
      Result := False;
    AfterScroll:=Aux;
  end;
end;

{ Insere um usu�rio }
function TUsuario.Inserir(CdCNC,CdUSU,PSituacao: integer; PPerfil, PTodosCentros:Boolean;PNome,PSenha,POBS:String):boolean;
Var
  Cod: Integer;
begin
  result:=false;
  if CdUSU=0 then
    Cod    := ProximoCodigo('USU_CODIGO')
  else
    Cod    := CdUSU;
  If (localizarCod(Cod,CdCNC)) Then
    ShowMessage('N�o foi poss�vel inserir o registro corrente pois o mesmo j� existe!')
  Else If localizarNome(-1, PNome) Then //N�o tem c�digo ainda
    ShowMessage('Usu�rio j� cadastrado!')
  Else
  begin
    Insert;
    try
      DataCadastro      := CConfiguracao.DataHora;
      DataSenhaAlterada := CConfiguracao.DataHora;
      CodigoUSU      := Cod;
      CodigoCNC      := CdCNC;
      NomeUSU        := PNome;
      Senha          := Encrypt(PSenha);
      Perfil         := PPerfil;
      TodosCentros   := PTodosCentros;
      Situacao       := PSituacao;
      Obs            := POBS;
      try
        Post;
        GeraLog(1780,CdCNC,Cod,'Nome:'+PNome);
        result := true;
      except
        Cancel;
        ShowMessage('N�o foi poss�vel incluir o registro corrente! Verifique se o tipo de dado a ser inserido � igual ao do campo.');
      end;
    except
      ShowMessage('N�o foi poss�vel incluir o registro! Verifique se a tabela encontra-se em modo de somente leitura.');
    end;
  end;
end;

function TUsuario.InserirAuto:Boolean;
var
  iTodosCentros: integer;
begin
  result:=false;
  iTodosCentros := 0;
  If (localizarCod(SCodigo,CConfiguracao.CodigoCNC)) Then
    ShowMessage('N�o foi poss�vel inserir registro corrente pois o registro j� existe!')
  Else If localizarNome(-1, ENomeUSU.Text) Then //N�o tem c�digo ainda
    ShowMessage('Usu�rio j� cadastrado!')
  else
  begin
    try
      append;
      try
        CodigoUSU   := SCodigo;
      except
      end;
      try
        DataCadastro   := CConfiguracao.DataHora;
      except
      end;
      try
        DataSenhaAlterada  := CConfiguracao.DataHora;
      except
      end;
      try
        codigocnc   := ECodigoCNC.KeyValue;
      except
      end;
      try
         NomeUSU := ENomeUSU.Text;
      except
      end;
      try
         Fone    := EFone.Text;
      except
      end;
      try
         Senha := Encrypt(ESenha.Text);
      except
      end;
      try
         Perfil:=EPerfil.Checked;
         if EPerfil.Checked then
           iTodosCentros := 1;
      except
      end;
      try
         TodosCentros:=ETodosCentros.Checked;
      except
      end;
      try
         Situacao := 0;
      except
      end;
      try
         OBS := EOBS.Text;
      except
      end;
      try
        Post;
        GeraLog(1780,ECodigoCNC.KeyValue,SCodigo,
           'Nome:'+ENomeUSU.text+
          ' TodosCNC:'+IntToStr(iTodosCentros));
        result:=True;

      except
        Cancel;
        ShowMessage('N�o foi poss�vel incluir o registro corrente. Verifique se o tipo de dado que voc� est� tentando alterar � o mesmo do campo.');
      end;
    except
      ShowMessage('N�o foi poss�vel alterar registro corrente. Verifique se a tabela encontra-se em modo de somente leitura.');
    end;
  end;
end;

procedure TUsuario.LimpaCampos;
begin
  try
    if estado <> 1 then
      ECodigoUSU.Clear;
  except
  end;
  try
    ENomeUSU.Clear;
  except
  end;
  try
    EFone.Clear;
  except
  end;
  try
    if Estado <> 1 then
      ESenha.Clear
    else
      ESenha.Text := '1234';
  except
  end;
  try
    if Estado <> 1 then
      EDataCadastro.Clear
    else
      EDataCadastro.Text:=formatDateTime('dd/mm/yyyy hh:mm', CConfiguracao.DataHora);
  except
  end;
  try
    EDataAlterado.Clear;
  except
  end;
  try
    EPerfil.Checked := False;
  except
  end;
  try
    ETodosCentros.Checked := False;
  except
  end;
  try
    if Estado <> 1 then
      ESituacao.ItemIndex := -1
    else
      ESituacao.ItemIndex := 0;
  except
  end;
  try
    EOBS.Clear;
  except
  end;
  Try
    EFoto.Picture:=nil;
  Except
  End;
end;

{ Localiza um usu�rio }
function TUsuario.LocalizarCod(CdUSU:integer; CdCNC:Integer=-1):Boolean;
var
  aux:TDataSetNotifyEvent;
begin
  Aux:=AfterScroll;
  AfterScroll:=nil;
  if CdCNC <> -1 then
    If (CdUSU<>CodigoUSU) or (CdCNC<>CodigoCNC) Then
      If locate('CNC_CODIGO;USU_CODIGO', vararrayof([CdCNC, CdUSU]), []) Then
        Result:=True
      else
        Result:=False
    Else
      Result:=True
  else
    If (CdUSU<>CodigoUSU) Then
      If locate('USU_CODIGO', CdUSU, []) Then
        Result:=True
      else
        Result:=False
    Else
      Result:=True;
  AfterScroll:=Aux;
end;

function TUsuario.LocalizarNome(CdUSU:integer; Nome:String):Boolean;
begin
  with CConfiguracao.QueryComandos do
  Begin
    Close;
    SQL.Text := 'SELECT USU_CODIGO '+
      ' FROM USUARIO '+
      ' WHERE USU_NOME="'+Nome+'" '+
      ' AND USU_CODIGO<>'+IntToStr(CdUSU);
    Open;
    Result := (not isEmpty);
  end;
end;

function TUsuario.Logar(Login,PSenha:string;MudaSituacao:Boolean;IgnorarSenha:Boolean=False):Integer;
var
  CdCNC, CdUSU:Integer;
  DtSenhaAlterada: TDateTime;
  sSenhaBanco, sCNCEletro: string;
begin
  Result:= -1;
  if CConfiguracao.Empresa = empEletro then
    sCNCEletro := ' AND (CNC_CODIGO='+IntToStr(CConfiguracao.CodigoCNC)+
                  '  OR USU_TODOS_CENTROS=1) '
  else
    sCNCEletro := '';
  try
    if Maquina = -1 then
    Begin
      try
        sndPlaySound(PChar(CConfiguracao.PastaSons+'\Erro.wav'),SND_ASYNC);
      except
      end;
      ShowMessage('M�quina n�o identificada!');
      Exit;
    end;

    with CConfiguracao.QueryConsultas do
    Begin
      Close;
      SQL.Text := 'SELECT * FROM USUARIO '+
        ' WHERE USU_NOME="'+Login+'" '+
        sCNCEletro;
      Open;
      if isEmpty or
         (FieldByName('USU_NOME').asString <> Login) then
      Begin
        ShowMessage('Usu�rio/Senha inv�lido!');
        Exit;
      end;
      CdCNC := FieldByName('CNC_CODIGO').asInteger;
      CdUSU := FieldByName('USU_CODIGO').asInteger;
      sSenhaBanco := FieldByName('USU_SENHA').asString;
      DtSenhaAlterada := FieldByName('USU_DT_SENHA_ALTERADA').asDateTime;

      if (CodigoCNC <> CdCNC) or (CodigoUSU <> CdUSU) then
        if not LocalizarCod(CdUSU,cdCNC) then
        Begin
          ShowMessage('Usu�rio n�o esperado!');
          Exit;
        end;

      Close;
      SQL.Text := 'SELECT * FROM USUARIO_SENHA '+
        ' WHERE CNC_USUARIO='+IntToStr(CdCNC)+
        ' AND USU_USUARIO='+IntToStr(CdUSU)+
        ' AND SNH_SITUACAO=0 '+
        ' AND SNH_DT_CADASTRO>"'+MesDiaHora(DtSenhaAlterada)+'" ';
      Open;
      if not isEmpty then
        sSenhaBanco := FieldByName('SNH_SENHA').asString;
    end;

    if (PSenha <> sSenhaBanco) and
       (not IgnorarSenha) then
    Begin
      ShowMessage('Usu�rio/Senha inv�lido!');
      Exit;
    end;

    If (Situacao=2) and
       (MaquinaLogado<>Maquina) and
       (MaquinaLogado>0) and
       MudaSituacao then
    Begin
      try
        sndPlaySound(PChar(CConfiguracao.PastaSons+'\Erro.wav'),SND_ASYNC);
      except
      end;
      ShowMessage('Voc� est� logado na m�quina '+IntToStr(MaquinaLogado)+'!');
      Exit;
    End;
    Result    := CdUSU;
    if MudaSituacao then
      ExecutaSQL(QueryComandos,'UPDATE USUARIO SET '+
        ' USU_SITUACAO=2 '+
        ',USU_MAQUINA='+IntToStr(Maquina)+
        ',USU_DT_ALTERADO="'+MesDiaHora(CConfiguracao.DataHora)+'" '+
        ' WHERE CNC_CODIGO='+IntToStr(CdCNC)+
        ' AND USU_CODIGO='+IntToStr(CdUSU));
    Close;
    Open;
    LocalizarCod(CdUSU,cdCNC);
  except
    try
      sndPlaySound(PChar(CConfiguracao.PastaSons+'\Erro.wav'),SND_ASYNC);
    except
    end;
    ShowMessage('Nome/Senha Incorreta! Tente novamente.');
  end;
end;

procedure TUsuario.Logoff;
begin
  ExecutaSQL(CConfiguracao.QueryComandos,'UPDATE USUARIO SET '+
    ' USU_SITUACAO=0 '+
    ' WHERE CNC_CODIGO ='+IntToStr(CodigoCNC)+
    ' AND USU_CODIGO='+IntToStr(CodigoUSU));
  Close;
  open;
end;

procedure TUsuario.PreparaAlteracao;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
  Estado:=2;
  AtualizaControles(True);
  try
    EDataAlterado.Text:=formatDateTime('dd/mm/yyyy hh:mm', CConfiguracao.DataHora);
  except
  end;
end;

procedure TUsuario.PreparaInsercao;
begin
  ProximoCodigo('USU_CODIGO');
  Estado:=1;
  AtualizaControles(True);
  LimpaCampos;
end;

function TUsuario.deletarauto:Boolean;
var
  CdCNC, CdUSU: integer;
  sDetalhe: string;
begin
  Result := False;
  CdCNC := CodigoCNC;
  CdUSU := CodigoUSU;
  sDetalhe := 'Nome:'+NomeUSU;
  try
    if Delete then
    Begin
      Result := True;
      GeraLog(1790,CdCNC,CdUSU,sDetalhe);
    end;
  Except
    ShowMessage('N�o foi poss�vel deletar registro corrente!');
  End;
end;


procedure TUsuario.MDI(Tela: TForm);
begin
  with Tela do
  begin
    if BorderIcons = [biSystemMenu] then
    begin
      if WindowState <> wsMaximized then //Aplica o MDI somente nas telas que n�o est�o maximizadas
      begin
        BorderStyle := bsSingle;
        FormStyle := fsMDIChild;
        Left := 1;
        Top := 1;
      end;
    end;
    //Show;
  end;
end;

end.
