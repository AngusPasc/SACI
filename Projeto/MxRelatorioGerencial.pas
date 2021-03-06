unit MxRelatorioGerencial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DrLabel;

type
  TfMxRelatorioGerencial = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    Panel3: TPanel;
    DRLabel1: TDRLabel;
    Timer1: TTimer;
    DRLabel2: TDRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Tempo:TDateTime;
  end;

var
  fMxRelatorioGerencial: TfMxRelatorioGerencial;

implementation
uses UPrinc2, UDM;
{$R *.DFM}

procedure TfMxRelatorioGerencial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  SIAC.ImpFiscalB1.ImprimeRelatorioGerencialFechar;
  action:=cafree;
end;

procedure TfMxRelatorioGerencial.BitBtn1Click(Sender: TObject);
begin
  BitBtn2.Enabled:=True;
  Tempo := StrToTime('00:10:00');
  if Memo1.Text = '' then
    Raise Exception.Create('Texto inv�lido!');
//  SIAC.ImpFiscalB1.ImprimeRelatorioGerencialEnvia(Memo1.Text);
//  if SIAC.ImpFiscalB1.IRetorno = 1 then
//  Begin
//    Timer1.Enabled:=True;
//    Memo1.Clear;
//    Memo1.SetFocus;
//  end;
end;

procedure TfMxRelatorioGerencial.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfMxRelatorioGerencial.Timer1Timer(Sender: TObject);
begin
  Tempo:=Tempo-StrToTime('00:00:01');
  DRLabel1.Caption:=formatDateTime('hh:mm:ss',Tempo);
  if Tempo = 0 then
    Close;
end;

procedure TfMxRelatorioGerencial.FormShow(Sender: TObject);
begin
  DM.Usuario1.AlteraCorComponentes(self);
end;

end.
