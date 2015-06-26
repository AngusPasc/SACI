unit MxEspacoEntreCupom;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TfMxEspacoEntreCupom = class(TForm)
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMxEspacoEntreCupom: TfMxEspacoEntreCupom;

implementation
uses UPrinc2, funcoes, UDM;
{$R *.DFM}

procedure TfMxEspacoEntreCupom.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfMxEspacoEntreCupom.BitBtn1Click(Sender: TObject);
begin
  if not VerificaInteiroBranco(Edit1.Text) then
    Raise Exception.create('N�mero de Linhas inv�lido!');
//  SIAC.ImpFiscalB1.ProgramaLinhasEntreCupom(StrToInt(Edit1.Text));
//  if SIAC.ImpFiscalB1.IRetorno = 1 then
//    Close;
end;

procedure TfMxEspacoEntreCupom.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfMxEspacoEntreCupom.FormShow(Sender: TObject);
begin
  DM.Usuario1.AlteraCorComponentes(self);
end;

end.
