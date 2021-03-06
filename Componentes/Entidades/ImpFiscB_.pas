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
unit ImpFiscB;

interface

uses WinTypes, WinProcs, Messages, SysUtils, Classes, Controls,
     Forms, Graphics, Stdctrls, Registry, CentroCusto, Windows,
     Dialogs, {ImpFiscalNova, }Funcoes, Configuracao;

{ Unit-wide declarations }
type
  TItem = class(TObject)
    ICodigo         :Integer;
    IDescricao      :String;
    IUnidade        :String;
    ITributacao     :String;
    IQuantidade     :Double;
    IValorUnitario  :Double;
    IValorDesconto  :Double;
    IReferencia     :string;
  end;
{ var }
     { . . . }

type
  TImpFiscalB = class(TComponent)
    private
      { Private fields of TImpFiscalB }
        { Storage for property CCentroCusto }
        FCCentroCusto : TCentroCusto;
        { Storage for property CConfiguracao }
        FCConfiguracao : TConfiguracao;
        { Storage for property ImprimirUnidade }
        FImprimirUnidade : Boolean;
        { Storage for property ItemAtual }
        FItemAtual : Integer;
        { Storage for property Itens }
        FItens : TStringList;
        { Storage for property MensagemPromocional }
        FMensagemPromocional : String;
        { Storage for property Tela }
        FTela : TMemo;

      { Private methods of TImpFiscalB }
        { Method to set variable and property values and create objects }
        procedure AutoInitialize;
        { Method to free any objects created by AutoInitialize }
        procedure AutoDestroy;
        { Write method for property Itens }
        procedure SetItens(Value : TStringList);

    protected
      { Protected fields of TImpFiscalB }
        FIniFile : TRegistry;
        IACK : Integer;
        IControle : Integer;
        IST1 : Integer;
        IST2 : Integer;

      { Protected methods of TImpFiscalB }
        { Resets prop of component type if referenced component deleted }
        procedure Notification(AComponent : TComponent; Operation : TOperation); override;

    public
      { Public fields and properties of TImpFiscalB }
        IRetorno : Integer;

      { Public methods of TImpFiscalB }
        procedure AberturaDoDia(Valor:Double; FormaPagamento:string);
        procedure AbreComprovanteNaoFiscalVinculado(FormaPagamento:string; Valor:double; Cupom:integer);
        function AbreCupom(CPF: string):Boolean;
        procedure AbrirGaveta;
        procedure AdicionaAliquota(Valor:Double; Situacao:Integer);
        procedure AdicionaItem(Codigo:Integer;Descricao, Unidade, Referencia:String;Tributacao, Quantidade, ValorUnitario, ValorDesconto:Double);
        function Analisa_iRetorno:Boolean;
        procedure ArquivoLeituraX;
        procedure ArquivoMapaResumo;
        procedure ArquivoRelatorio60Analitico;
        procedure ArquivoRelatorio60Mestre;
        procedure AutenticarDocumento;
        procedure CancelaCupom;
        procedure CancelaItemAnterior;
        procedure CancelaItemGenerico(Item:string);
        function ContadoresTotalizadoresNaoFiscais:string;
        constructor Create(AOwner: TComponent); override;
        destructor Destroy; override;
        procedure EfetuaFormaPagamento(Forma:string; Valor:Double);
        procedure EfetuarFormaPagamentoDescricao(Forma:string; Valor:Double; Descricao:string);
        procedure EntradaDeDinheiro(Valor:Double; FormaPagamento:string);
        procedure EstornoFormasPagamento(FormaOrigem, FormaDestino:string; Valor:Double);
        procedure FechamentoDoDia;
        procedure FecharComprovanteNaoFiscalVinculado;
        procedure FecharCupomAouD(FormaPagamento, Mensagem:string; AouD:Char;PouV:Char;ValorPago,ValorAouD:Double);
        procedure FecharCupomFim(Mensagem:string);
        procedure FecharCupomInicio(AouD:Char;PouV:Char;Valor:Double);
        procedure FecharCupomResumido(FormaPagamento, Mensagem:String);
        procedure FecharPorta;
        procedure ImprimeComprovanteNaoFiscal(IndiceTotalizador:integer; Valor:Double; FormaPagamento:string);
        procedure ImprimeConfiguracoesImpressora;
        procedure ImprimeCupomFiscal(CPF,FormaPagamento:string;AouD, PouV:Char;ValorPago, ValorAouD:Double);
        function ImprimeItemAtual(FormaPagamento:string;ValorPago:Double;AouD, PouV:Char;ValorAouD:Double;FecharAouD:Boolean;Fecha:Boolean=True):Integer;
        procedure ImprimeLeituraX;
        procedure ImprimeMemoriaData( DataINI, DataFIM:string);
        procedure ImprimeMemoriaReducao(RedINI,RedFIM:string);
        procedure ImprimeReducaoZ;
        procedure ImprimeRelatorioGerencialEnvia(Texto:string);
        procedure ImprimeRelatorioGerencialFechar;
        function LimpaItens:integer;
        function MonitoramentoPapel:Integer;
        procedure NomeiaDepartamento(Indice:integer; Nome:string);
        procedure NomeiaTotalizadorParcial(Indice:integer; Nome:string);
        procedure ProgamaSimboloMoeda(Simbolo:string);
        procedure ProgramaArredondamento;
        procedure ProgramaCidadeFavorecido(Cidade, Favorecido:string);
        procedure ProgramaGraficoAutenticacao(cCoordenadas:string);
        procedure ProgramaHorarioVerao;
        procedure ProgramaLinhasEntreCupom(Linhas:integer);
        procedure ProgramaQualidadeImpressao(Nivel:integer);
        procedure ProgramaTruncamento;
        procedure ResetarErro;
        procedure RetiradaDeDinheiro(Valor:Double);
        function RetornoAliquotas:string;
        function RetornoAliquotasISS:string;
        function RetornoCuponsCanceladosNumero:Integer;
        function RetornoCuponsCanceladosValor: Double;
        function RetornoDataHora:TDateTime;
        function RetornoDataHoraUltimaReducao:TDateTime;
        function RetornoDataUltimoMovimento:TDateTime;
        procedure RetornoDepartamentos;
        function RetornoDescontos:Double;
        function RetornoEstadoGaveta:Integer;
        procedure RetornoEstadoImpressora(var iAck:integer; var iSt1:integer; var iSt2: integer);
        function RetornoFlagsFiscais:Integer;
        function RetornoGrandeTotal:Double;
        function RetornoIndiceAliquotasISS:string;
        function RetornoNumeroCupom:Integer;
        function RetornoNumeroSerie:string;
        function RetornoRecebimentoNaoFiscal:string;
        function RetornoReducaoZUltima:string;
        function RetornoSubTotal: Double;
        function RetornoTotalizadoresNaoFiscais:string;
        procedure RetornoTotalizadoresParciais;
        function Retorno_Impressora:Integer;
        procedure UsaComprovanteNaoFiscalVinculado(Texto:string);
        procedure VendaDeItem(Codigo:Integer;Descricao, Unidade, Referencia, Tributacao:String;Quantidade:Double;ValorUnitario:Double;ValorDesconto:Double);
        procedure VerificaTruncamento;
        procedure VerificaVersaoFirmware;
        procedure zzzTEF_ADM(Identificacao:integer);
        procedure zzzTEF_ImprimeRelatorio;
        procedure zzzTEF_NaoConfirmaVendaImpressao(Identificacao: string; Valor:Double);
        procedure zzzTEF_Status(Identificacao:string);
        procedure zzzTEF_VendaCompleta(Identificacao:string; Valor:Double; FormaPagamento, MensagemPromocional:string);
        procedure zzzzTEF_CancelaVendaCartao(Identificacao:integer;Valor:Double;NSU,Cupom:integer;Data, Hora:TDateTime;Rede:string);
        procedure zzzzTEF_VendaCartao(Identificacao:string; Valor:Double);
        procedure zzzzzzTEF_ConfirmaVenda(Identificacao:integer;Valor:Double;Header:string);
        procedure zzzzzzTEF_ImprimeTEF(Identificacao, FormaPagamento:string; Valor:Double);

    published
      { Published properties of TImpFiscalB }
        property CCentroCusto : TCentroCusto read FCCentroCusto write FCCentroCusto;
        property CConfiguracao : TConfiguracao read FCConfiguracao write FCConfiguracao;
        property ImprimirUnidade : Boolean read FImprimirUnidade write FImprimirUnidade;
        property ItemAtual : Integer read FItemAtual write FItemAtual;
        property Itens : TStringList read FItens write SetItens;
        property MensagemPromocional : String read FMensagemPromocional write FMensagemPromocional;
        property Tela : TMemo read FTela write FTela;
  end;

procedure Register;

implementation

procedure Register;
begin
     { Register TImpFiscalB with Softech as its
       default page on the Delphi component palette }
     RegisterComponents('Softech', [TImpFiscalB]);
end;

{ Method to set variable and property values and create objects }
procedure TImpFiscalB.AutoInitialize;
begin
     FItens := TStringList.Create;
     FTela := nil;
end; { of AutoInitialize }

{ Resets prop of component type if referenced component deleted }
procedure TImpFiscalB.Notification(AComponent : TComponent; Operation : TOperation);
begin
     inherited Notification(AComponent, Operation);
     if Operation <> opRemove then
        Exit;
     { Has a component referenced by a property of 
       this component been deleted?  If so, update
       the property. }
     if AComponent = FTela then
        FTela := nil;
end;

{ Method to free any objects created by AutoInitialize }
procedure TImpFiscalB.AutoDestroy;
begin
     FItens.Free;
end; { of AutoDestroy }

{ Write method for property Itens }
procedure TImpFiscalB.SetItens(Value : TStringList);
begin
     { Use Assign method because TStringList is an object type
       and FItems has been created. }
     FItens.Assign(Value);
end;

procedure TImpFiscalB.AberturaDoDia(Valor:Double; FormaPagamento:string);
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_AberturaDoDia(pchar( format('%.2f',[Valor])), pchar(FormaPagamento))
  else
    iRetorno := Daruma_FI_AberturaDoDia(format('%.2f',[Valor]), FormaPagamento);
  Analisa_iRetorno();
  Retorno_Impressora();
end;

procedure TImpFiscalB.AbreComprovanteNaoFiscalVinculado(FormaPagamento:string; Valor:double; Cupom:integer);
{
Observa��es:
- A forma de pagamento utilizada n�o pode ser dinheiro.
- A forma de pagamento deve ter sido utilizada no cupom.
- S� pode ser emitido um comprovante n�o fiscal por forma de pagamento.
- Os par�metros �Valor� e �Numero do Cupom� tornam-se obrigat�rios se o comprovante emitido n�o for referente ao �ltimo cupom fiscal emitido.
}
begin
  if FormaPagamento = 'Dinheiro' then
  Begin
    ShowMessage('Comprovante N�o Fiscal Vinculado n�o pode ser em Dinheiro!');
    exit;
  end;
  if Cupom = 0 then
  Begin
    if CConfiguracao.CodigoImpFiscal = 0 then
      iRetorno := Bematech_FI_AbreComprovanteNaoFiscalVinculado(pchar(FormaPagamento), pchar( '' ), pchar( '' ))
    else
      iRetorno := Daruma_FI_AbreComprovanteNaoFiscalVinculado(FormaPagamento, '' , '' );
  end
  else
  Begin
    if CConfiguracao.CodigoImpFiscal = 0 then
      iRetorno := Bematech_FI_AbreComprovanteNaoFiscalVinculado(pchar(FormaPagamento),
                  pchar(format('%.2f',[Valor])), pchar(IntToStr(Cupom)))
    else
      iRetorno := Daruma_FI_AbreComprovanteNaoFiscalVinculado(FormaPagamento,
                  format('%.2f',[Valor]), IntToStr(Cupom));
  end;
  Analisa_iRetorno();
  Retorno_Impressora();
end;

function TImpFiscalB.AbreCupom(CPF: string):Boolean;
var
  iRet: integer;
begin
  Result := False;
  if (CPF <> '') and (CPF <> '   -   -   -  ') then
  Begin
    if CConfiguracao.CodigoImpFiscal = 0 then
      iRetorno := Bematech_FI_AbreCupom( CPF )
    else
      iRetorno := Daruma_FI_AbreCupom( CPF );
  end
  else
  Begin
    if CConfiguracao.CodigoImpFiscal = 0 then
      iRetorno := Bematech_FI_AbreCupom( Pchar( '' ) )
    else
      iRetorno := Daruma_FI_AbreCupom('');
  end;
  
  if iRetorno <> 1 then //Erro
    Exit;

  if Analisa_iRetorno() then
  Begin
    iRet := Retorno_Impressora();
    if iRet < 0 then //Erro
      Exit;
  end
  else
    Exit;

  ItemAtual:=1;
  if tela <> nil then
  Begin
    with Tela.Lines do
    begin
      clear;
      add('EMPRESA : '+CCentroCusto.NomeFantasia);
      add('ENDERE�O: '+CCentroCusto.Endereco+' - '+CCentroCusto.Bairro);
      add('CIDADE  : '+Trim(CCentroCusto.Cidade)+'-'+Trim(CCentroCusto.UF)+' Tel:'+CCentroCusto.Fone);
      add('CNPJ    : '+CCentroCusto.CGC+'  I.M.: '+CCentroCusto.IE);
      add('DATA    : '+FormatDateTime('dd/mm/yy hh:nn:ss', now));
      add('N� CUPOM: '+PreencheZero(6,IntToStr(RetornoNumeroCupom)));
      add('------------------------------------------------');
      add('ITEM   C�DIGO             DESCRI��O');
      add('      QTDxUNITARIO       ST          VALOR( R$) ');
      add('------------------------------------------------');
    end;
  end;
  Result := True;
end;


procedure TImpFiscalB.AbrirGaveta;
Begin
  // Fun��o para Abrir a gaveta de dinheiro
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_AcionaGaveta()
  else
    iRetorno := Daruma_FI_AcionaGaveta;
  Analisa_iRetorno();
  Retorno_Impressora();
end;

procedure TImpFiscalB.AdicionaAliquota(Valor:Double; Situacao:Integer);
begin
  //Situa��o 0:ICMS ; 1:ISS
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_ProgramaAliquota( format('%.2f',[Valor]), Situacao )
  else
    iRetorno := Daruma_FI_ProgramaAliquota( format('%.2f',[Valor]), Situacao );
  Analisa_iRetorno();
  Retorno_Impressora();
end;

procedure TImpFiscalB.AdicionaItem(Codigo:Integer;Descricao, Unidade, Referencia:String;Tributacao, Quantidade, ValorUnitario, ValorDesconto:Double);
var
  aux:TItem;
begin
  //Alan - Comentado por Causa das Aliquotas
  {aux:=TItem.Create;
  with aux do
  begin
    ICodigo         :=Codigo;
    IDescricao      :=Descricao;
    IUnidade        :=Unidade;
    if Tributacao = 5 then
      ITributacao     := '0500'
     else
      ITributacao     :=format('%.0f',[Tributacao*100]);
    IQuantidade     :=Quantidade;
    IValorUnitario  :=ValorUnitario;
    IValorDesconto  :=ValorDesconto;
    IReferencia     :=Referencia;
  end;
  Itens.AddObject(Descricao, aux);}

  aux:=TItem.Create;
  with aux do
  begin
    ICodigo         :=Codigo;
    IDescricao      :=Descricao;
    IUnidade        :=Unidade;
    if Tributacao = 5 then  //Servico
      ITributacao     := '0500'
    else if Tributacao = 1013 then  //Ssubstituicao Tributaria
      ITributacao     := 'FF'
    else if Tributacao = 1014 then  //Isento
      ITributacao     := 'II'
    else
      ITributacao     :=format('%.0f',[Tributacao*100]);


    IQuantidade     :=Quantidade;
    IValorUnitario  :=ValorUnitario;
    IValorDesconto  :=ValorDesconto;
    IReferencia     :=Referencia;
  end;
  Itens.AddObject(Descricao, aux);
end;

function TImpFiscalB.Analisa_iRetorno:Boolean;
begin
  case iRetorno of
      0: ShowMessage('Erro de Comunica��o. Verifique!');
//      1: ShowMessage('Comando Enviado com Sucesso!');
     -1: ShowMessage('Erro de Execu��o na Fun��o. Verifique!');
     -2: ShowMessage('Par�metro de Comando Inv�lido. Verifique!');
     -3: ShowMessage('Al�quota n�o programada. Verifique!'); //temp
     -4: ShowMessage('Arquivo INI ou chave do Regedit n�o encontrado. Verifique!');
     -5: ShowMessage('Erro ao abrir a porta de comunica��o. Verifique!');
     -6: ShowMessage('Impressora desligada ou cabo de comunica��o desconectado. Verifique!');
     -7: ShowMessage('Banco n�o encontrado no arquivo BemaFI32.ini. Verifique!');
     -8: ShowMessage('Erro ao criar ou gravar no arquivo status.txt ou retorno.txt. Verifique!');
    -18: ShowMessage('N�o foi poss�vel abrir arquivo .001 ou .sts!');
    -19: ShowMessage('Par�metro do arquivo .001 diferentes!');
    -20: ShowMessage('Opera��o finalizada pelo operador!');
    -21: ShowMessage('Transa��o N�o Ok!');
    -22: ShowMessage('N�o foi poss�vel terminar a impress�o!');
    -23: ShowMessage('N�o foi poss�vel terminar a opera��o!');
    -27: ShowMessage('ECF sinalizou erro!');
  end;

  If iRetorno = 1 then
    Result := True
  else
    Result := False;
end;

procedure TImpFiscalB.ArquivoLeituraX;
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_LeituraXSerial()
  else
    iRetorno := Daruma_FI_LeituraXSerial;
  Analisa_iRetorno();
  Retorno_Impressora();
end;

procedure TImpFiscalB.ArquivoMapaResumo;
{
Gera o relat�rio �Mapa Resumo�  referente ao movimento do dia. As informa��es ser�o geradas no arquivo RETORNO.TXT no diret�rio configurado no par�metro �path� do arquivo ini. O diret�rio default configurado � o diret�rio raiz (C:\).
Observa��es:
- As informa��es contidas no mapa resumo podem variar de Estado para Estado. Essa fun��o gera o relat�rio com as informa��es padr�es que s�o usadas na maioria dos Estados. O relat�rio gerado ter� o seguinte layout:
Contador de Redu��o Z  : 0339
COO                    : 000050
Venda Bruta            : 143,88
Venda L�quida          : 122,95
Cancelamentos          :   7,68
Acr�scimos             :   2,72
Descontos              :   0,62
ISS                    :  12,63
Isen��o                :   9,45
N�o Incid�ncia         :   3,15
Substitui��o Tribut�ria:  12,61
1700                   :   1,25
0100                   :  57,12
0200                   :  10,25
0400                   :  10,56
0600                   :   4,23
0700                   :   4,59
0900                   :   0,10
1000                   :   0,20
1100                   :   4,35
1500                   :   5,09
- Ap�s a linha �Substitui��o Tribut�ria�  ser�o gravadas as informa��es de vendas referente as al�quotas de ICMS. Portanto, o n�mero de linhas ir� variar de acordo com o n�mero de al�quotas de ICMS cadastradas na impressora.
- As informa��es contidas no mapa resumo ser�o referentes aos dados da �ltima redu��o Z, portanto,  para gerar o mapa resumo referente ao movimento do dia voc� deve executar essa fun��o ap�s a redu��o Z, caso contr�rio o mapa resumo ser� gerado com as informa��es referente ao movimento do dia anterior.
}
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_MapaResumo
  else
    iRetorno := Daruma_FI_MapaResumo;
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.ArquivoRelatorio60Analitico;
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_RelatorioTipo60Analitico
  else
    iRetorno := Daruma_FI_RelatorioTipo60Analitico;
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.ArquivoRelatorio60Mestre;
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_RelatorioTipo60Mestre
  else
    iRetorno := Daruma_FI_RelatorioTipo60Mestre;
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.AutenticarDocumento;
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_Autenticacao
  else
    iRetorno := Daruma_FI_Autenticacao;
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.CancelaCupom;
Begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_CancelaCupom
  else
    iRetorno := Daruma_FI_CancelaCupom;
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.CancelaItemAnterior;
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_CancelaItemAnterior
  else
    iRetorno := Daruma_FI_CancelaItemAnterior;
  Analisa_iRetorno;
  Retorno_Impressora;
  if iRetorno = 1 then
  Begin
    if tela <> nil then
      with Tela.Lines do
        add('CANCELADO ITEM:'+PreencheE(IntToStr(ItemAtual-1), '0', 3));
  end;
end;

procedure TImpFiscalB.CancelaItemGenerico(Item:string);
Begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_CancelaItemGenerico(Item)
  else
    iRetorno := Daruma_FI_CancelaItemGenerico(Item);
  Analisa_iRetorno;
  Retorno_Impressora;
  if iRetorno = 1 then
  Begin
    if tela <> nil then
      with Tela.Lines do
        add('CANCELADO ITEM:'+PreencheE(Item, '0', 3));
  end;
end;

function TImpFiscalB.ContadoresTotalizadoresNaoFiscais:string;
{
Observa��es:
- A impressora permite a programa��o de at� 50 totalizadores n�o fiscais, por�m essa fun��o retorna somente os contadores dos 9 primeiros totalizadores cadastrados.
- O conte�do da vari�vel retornada ser� 36 d�gitos separados de 4 em 4 por v�rgura que representam os 9 primeiros totalizadores. Ex.: �0001,0003,0001,0005,0004,0002,0003,0004,0007�
- O primeiro valor corresponde ao n�mero de vezes que o totalizador 01 foi usado, o segundo corresponde ao totalizador 02 e assim sucessivamente.
}
var
  iConta:integer;
  Contadores:string;
begin
  for iConta := 1 to 44 do
    begin
      Contadores := Contadores + ' ';
    end;
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_ContadoresTotalizadoresNaoFiscais( Contadores )
  else
    iRetorno := Daruma_FI_ContadoresTotalizadoresNaoFiscais( Contadores );
end;

constructor TImpFiscalB.Create(AOwner: TComponent);
begin
     { Call the Create method of the parent class }
     inherited Create(AOwner);

     { AutoInitialize sets the initial values of variables and      }
     { properties; also, it creates objects for properties of       }
     { standard Delphi object types (e.g., TFont, TTimer,           }
     { TPicture) and for any variables marked as objects.           }
     { AutoInitialize method is generated by Component Create.      }
     AutoInitialize;
     FIniFile:=TRegistry.Create;
     FIniFile.RootKey:=HKEY_CURRENT_USER;
     { Code to perform other tasks when the component is created }
end;

destructor TImpFiscalB.Destroy;
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

procedure TImpFiscalB.EfetuaFormaPagamento(Forma:string; Valor:Double);
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_EfetuaFormaPagamento(Forma, format('%.2f',[Valor]))
  else
    iRetorno := Daruma_FI_EfetuaFormaPagamento(Forma, format('%.2f',[Valor]));
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.EfetuarFormaPagamentoDescricao(Forma:string; Valor:Double; Descricao:string);
{
Observa��es:
Imprime a(s) forma(s) de pagamento e o(s) valor(es) pago(s). Permite a impress�o de coment�rios na(s) forma(s) de pagamento.
- descri��o ser� impressa uma linha ap�s a forma de pagamento.
- O fechamento do cupom com formas de pagamento deve ter sido iniciado.
}
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_EfetuaFormaPagamentoDescricaoForma(pchar(Forma),pchar(format('%.2f',[Valor])),pchar(Descricao))
  else
    iRetorno := Daruma_FI_EfetuaFormaPagamentoDescricaoForma(Forma,format('%.2f',[Valor]),Descricao);
  Analisa_iRetorno();
  Retorno_Impressora();
end;

procedure TImpFiscalB.EntradaDeDinheiro(Valor:Double; FormaPagamento:string);
{
Faz um suprimento na impressora (entrada de dinheiro).
Par�metros:
Valor: STRING com o Valor do suprimento com at� 14 d�gitos (2 casas decimais).
FormaPagamento: STRING com a Forma de pagamento com at� 16 caracteres. Se n�o for informada, o suprimento ser� feito em Dinheiro.
}
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_Suprimento(pchar(format('%.2f',[Valor])), pchar(FormaPagamento))
  else
    iRetorno := Daruma_FI_Suprimento(format('%.2f',[Valor]), FormaPagamento);
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.EstornoFormasPagamento(FormaOrigem, FormaDestino:string; Valor:Double);
{
Permite estornar valores de uma forma de pagamento e inserir em outra.
Par�metros:
FormaOrigem: STRING com a forma de pagamento de onde o valor ser� estornado, com at� 16 caracteres.
FormaDestino: STRING com a forma de pagamento onde o valor ser� inserido, com at� 16 caracteres.
Valor: STRING com o valor a ser estornado com at� 14 d�gitos. N�o pode ser maior que o total da forma de pagamento de origem.
}
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_EstornoFormasPagamento(pchar(FormaOrigem),pchar(FormaDestino),pchar(format('%.2f',[Valor])))
  else
    iRetorno := Daruma_FI_EstornoFormasPagamento(FormaOrigem,FormaDestino,format('%.2f',[Valor]));
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.FechamentoDoDia;
{
Faz o fechamento do dia emitindo uma redu��o Z.
Essa fun��o grava o COO final e o Grande Total final que ser�o
usados na fun��o Bematech_FI_RelatorioTipo60Mestre.
}
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_FechamentoDoDia
  else
    iRetorno := Daruma_FI_FechamentoDoDia;
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.FecharComprovanteNaoFiscalVinculado;
{
Encerrar o comprovante n�o fiscal vinculado.
}
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_FechaComprovanteNaoFiscalVinculado
  else
    iRetorno := Daruma_FI_FechaComprovanteNaoFiscalVinculado;
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.FecharCupomAouD(FormaPagamento, Mensagem:string; AouD:Char;PouV:Char;ValorPago,ValorAouD:Double);
var
  Total:Double;
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_FechaCupom( FormaPagamento, AouD, PouV,
                format('%.0f',[ValorAouD*100]), format('%.0f',[ValorPago*100]), Mensagem )
  else
    iRetorno := Daruma_FI_FechaCupom( FormaPagamento, AouD, PouV,
                format('%.0f',[ValorAouD*100]), format('%.0f',[ValorPago*100]), Mensagem );
  Analisa_iRetorno;
  Retorno_Impressora;
  if iRetorno = 1 then
  Begin
    if tela <> nil then
    Begin
      Total:=RetornoSubTotal;
      with Tela.Lines do
      begin
        if ValorAouD > 0 then
          add('Acr�scimo                     '+PreencheE(Format('%.2f', [ValorAouD]),' ', 18));
        add('TOTAL  R$                     '+PreencheE(Format('%.2f', [Total]),' ', 18));
        add('Dinheiro                      '+PreencheE(Format('%.2f', [Total]),' ', 18));
        add('VALOR RECEBIDO  R$            '+PreencheE(Format('%.2f', [Total]),' ', 18));
        if (ValorPago - Total) > 0.2 then
          add('TROCO  R$                     '+PreencheE(Format('%.2f', [ValorPago-Total]),' ', 18));
        add('------------------------------------------------');
        add(Mensagem);
      end;
    end;
  end;
end;

procedure TImpFiscalB.FecharCupomFim(Mensagem:string);
var
  Total:Double;
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_TerminaFechamentoCupom(Mensagem)
  else
    iRetorno := Daruma_FI_TerminaFechamentoCupom(Mensagem);
  Analisa_iRetorno;
  Retorno_Impressora;
  if iRetorno = 1 then
  Begin
    if tela <> nil then
    Begin
      Total:=RetornoSubTotal;
      with Tela.Lines do
      begin
        add('TOTAL R$                      '+PreencheE(Format('%.2f', [Total]),' ', 18));
        add('Dinheiro                      '+PreencheE(Format('%.2f', [Total]),' ', 18));
        add('VALOR RECEBIDO R$             '+PreencheE(Format('%.2f', [Total]),' ', 18));
        add('------------------------------------------------');
        add(Mensagem);
      end;
    end;
  end;
end;

procedure TImpFiscalB.FecharCupomInicio(AouD:Char;PouV:Char;Valor:Double);
begin
// AouD: 'A' = Acr�scimo, 'D' = Desconto
// PouV: 'P' = Porcentagem, 'V' = Valor
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_IniciaFechamentoCupom(AouD, PouV, format('%.0f',[Valor*100]))
  else
    iRetorno := Daruma_FI_IniciaFechamentoCupom(AouD, PouV, format('%.0f',[Valor*100]));
  Analisa_iRetorno;
  Retorno_Impressora;
end;


procedure TImpFiscalB.FecharCupomResumido(FormaPagamento, Mensagem:String);
var
  Total:Double;
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_FechaCupomResumido( FormaPagamento, Mensagem )
  else
    iRetorno := Daruma_FI_FechaCupomResumido( FormaPagamento, Mensagem );
  Analisa_iRetorno;
  Retorno_Impressora;
  if iRetorno = 1 then
  Begin
    if tela <> nil then
    Begin
      Total:=RetornoSubTotal;
      with Tela.Lines do
      begin
        add('TOTAL R$                      '+PreencheE(Format('%.2f', [Total]),' ', 18));
        add(FormaPagamento              +PreencheE(Format('%.2f', [Total]),' ', 18));
        add('VALOR RECEBIDO R$             '+PreencheE(Format('%.2f', [Total]),' ', 18));
        add('------------------------------------------------');
        add(Mensagem);
      end;
    end;
  end;
end;


procedure TImpFiscalB.FecharPorta;
Begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_FechaPortaSerial
  else
    iRetorno := Daruma_FI_FechaPortaSerial();
  Analisa_iRetorno;
  Retorno_Impressora;
end;


procedure TImpFiscalB.ImprimeComprovanteNaoFiscal(IndiceTotalizador:integer; Valor:Double; FormaPagamento:string);
{
Imprime o comprovante n�o fiscal n�o vinculado.
}
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_RecebimentoNaoFiscal(pchar(PreencheZero(2,IndiceTotalizador)),
                pchar(format('%.2f',[Valor])), pchar(FormaPagamento))
  else
    iRetorno := Daruma_FI_RecebimentoNaoFiscal(PreencheZero(2,IndiceTotalizador),
                format('%.2f',[Valor]), FormaPagamento);
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.ImprimeConfiguracoesImpressora;
{
Imprime configura��es da impressora fiscal em um relat�rio gerencial. Ser� emitida uma leitura X antes. Veja abaixo em �coment�rios� as informa��es que ser�o impressas.

Observa��es:
Ser�o impressas as seguintes configura��es:
Data da impressora                               27/06/2001
Hora da impressora                                 11:38:37
Vers�o do firmware                                     0310
N�mero de s�rie                               4708991023070
N�mero da loja                                         0001
N�mero do caixa                                        0001
S�mbolo da moeda                                         R$

Modo de opera��o                             Arredondamento
Hor�rio de ver�o                                        N�o
J� houve redu��o Z                                      N�o
Mem�ria fiscal                                   Com espa�o
Vers�o da dll                                           1.9
log da dll                                     Desabilitado

Lin. Imp. ap�s pouco papel                                0
Tipo Impressora                fiscal + gaveta+autentica��o
}
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_ImprimeConfiguracoesImpressora
  else
    iRetorno := Daruma_FI_ImprimeConfiguracoesImpressora;
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.ImprimeCupomFiscal(CPF,FormaPagamento:string;AouD, PouV:Char;ValorPago, ValorAouD:Double);
var
  i:Integer;
begin
  if Itens.Count=0 then
    raise Exception.Create('N�o h� itens para impress�o !');
  AbreCupom(CPF);
  {imprime itens}
  for i:=0 to Itens.Count-1 do
    with TItem(Itens.Objects[i]) do
      self.VendaDeItem(ICodigo, IDescricao, IUnidade, IReferencia, ITributacao, IQuantidade, IValorUnitario,
      IValorDesconto);
  FecharCupomAouD(FormaPagamento, MensagemPromocional, AouD, PouV, ValorPago, ValorAouD);
end;

function TImpFiscalB.ImprimeItemAtual(FormaPagamento:string;ValorPago:Double;AouD, PouV:Char;ValorAouD:Double;FecharAouD:Boolean;Fecha:Boolean=True):Integer;
begin
  with TItem(Itens.Objects[ItemAtual-1]) do
    self.VendaDeItem(ICodigo, IDescricao, IUnidade, IReferencia, ITributacao, IQuantidade, IValorUnitario,
    IValorDesconto);
  Analisa_iRetorno;
  Retorno_Impressora;
  if iRetorno = 1 then
  Begin
    ItemAtual:=ItemAtual+1;
    if Fecha then
    begin
      if ItemAtual > Itens.Count then
      begin
        if FecharAouD then
          FecharCupomAouD(FormaPagamento, MensagemPromocional, AouD, PouV, ValorPago, ValorAouD)
        else
          FecharCupomResumido(FormaPagamento,MensagemPromocional);
        Result := 2;
      end
      else
        Result := 1;
    end
    else
      Result := 1;
  end
  else
    Result := 0;
end;

procedure TImpFiscalB.ImprimeLeituraX;
Begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_LeituraX
  else
    iRetorno := Daruma_FI_LeituraX;
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.ImprimeMemoriaData( DataINI, DataFIM:string);
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_LeituraMemoriaFiscalData( DataINI, DataFIM)
  else
    iRetorno := Daruma_FI_LeituraMemoriaFiscalData( DataINI, DataFIM);
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.ImprimeMemoriaReducao(RedINI,RedFIM:string);
Begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_LeituraMemoriaFiscalReducao( RedINI, RedFIM)
  else
    iRetorno := Daruma_FI_LeituraMemoriaFiscalReducao( RedINI, RedFIM);
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.ImprimeReducaoZ;
Begin
  If MessageDlg('A Redu��o Z impossibilitar� novas impress�es de Cupons Fiscais Hoje!'+#13+
     'Continua ?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then
  Begin
    if CConfiguracao.CodigoImpFiscal = 0 then
      iRetorno := Bematech_FI_ReducaoZ('', '')
    else
      iRetorno := Daruma_FI_ReducaoZ('', '');
    Analisa_iRetorno;
    Retorno_Impressora;
  End;
end;

procedure TImpFiscalB.ImprimeRelatorioGerencialEnvia(Texto:string);
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_RelatorioGerencial( Texto )
  else
    iRetorno := Daruma_FI_RelatorioGerencial( Texto );
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.ImprimeRelatorioGerencialFechar;
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_FechaRelatorioGerencial
  else
    iRetorno := Daruma_FI_FechaRelatorioGerencial;
  Analisa_iRetorno;
  Retorno_Impressora;
end;

function TImpFiscalB.LimpaItens:integer;
var
  i, j:Integer;
begin
  j := 0;
  for i:=0 to Itens.Count-1 do
  Begin
    try
      Itens.Objects[0].Free;
    except
    end;
    sleep(5);
    Application.ProcessMessages;
    inc(j);
  end;
  sleep(50);
  Application.ProcessMessages;
  Itens.Clear;
  sleep(50);
  Application.ProcessMessages;
  Result := j;
end;

function TImpFiscalB.MonitoramentoPapel:Integer;
var
  iLinhas :Integer;
begin
  iLinhas  := 0;
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_MonitoramentoPapel(iLinhas)
  else
    iRetorno := Daruma_FI_MonitoramentoPapel(iLinhas);
  Result := iLinhas;
end;

procedure TImpFiscalB.NomeiaDepartamento(Indice:integer; Nome:string);
begin
  // M�x Nome = 20
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_NomeiaDepartamento( Indice, Nome )
  else
    iRetorno := Daruma_FI_NomeiaDepartamento( Indice, Nome );
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.NomeiaTotalizadorParcial(Indice:integer; Nome:string);
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_NomeiaTotalizadorNaoSujeitoIcms( Indice, Nome )
  else
    iRetorno := Daruma_FI_NomeiaTotalizadorNaoSujeitoIcms( Indice, Nome );
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.ProgamaSimboloMoeda(Simbolo:string);
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_AlteraSimboloMoeda( Simbolo )
  else
    iRetorno := Daruma_FI_AlteraSimboloMoeda( Simbolo );
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.ProgramaArredondamento;
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_ProgramaArredondamento
  else
    iRetorno := Daruma_FI_ProgramaArredondamento;
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.ProgramaCidadeFavorecido(Cidade, Favorecido:string);
{
Inclui o nome da cidade e do favorecido no arquivo de configura��o BEMAFI32.DLL.
Par�metros:
Cidade: STRING com o Nome da cidade com at� 27 caracteres.
Favorecido: STRING com o Nome do favorecido com at� 45 caracteres.
Retornos da Fun��o (INTEIRO):
Observa��es:
- Ap�s gravar o nome da cidade e do favorecido no arquivo de configura��o n�o � mais necess�rio passar essas informa��es como par�metros para a fun��o Bematech_FI_ImprimeCheque(), a n�o ser que seja necess�rio imprimir uma cidade ou um favorecido diferente aos que est�o programados.
}
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_IncluiCidadeFavorecido(pchar(Cidade),pchar(Favorecido))
  else
    iRetorno := Daruma_FI_IncluiCidadeFavorecido(Cidade,Favorecido);
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.ProgramaGraficoAutenticacao(cCoordenadas:string);
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_ProgramaCaracterAutenticacao( cCoordenadas )
  else
    iRetorno := Daruma_FI_ProgramaCaracterAutenticacao( cCoordenadas );
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.ProgramaHorarioVerao;
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_ProgramaHorarioVerao
  else
    iRetorno := Daruma_FI_ProgramaHorarioVerao;
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.ProgramaLinhasEntreCupom(Linhas:integer);
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_LinhasEntreCupons( Linhas )
  else
    iRetorno := Daruma_FI_LinhasEntreCupons( Linhas );
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.ProgramaQualidadeImpressao(Nivel:integer);
begin
  // O n�vel pode ser 1,2,3
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_ForcaImpactoAgulhas( Nivel )
  else
    iRetorno := Daruma_FI_ForcaImpactoAgulhas( Nivel );
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.ProgramaTruncamento;
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_ProgramaTruncamento
  else
    iRetorno := Daruma_FI_ProgramaTruncamento;
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.ResetarErro;
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_ResetaImpressora
  else
    iRetorno := Daruma_FI_ResetaImpressora;
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.RetiradaDeDinheiro(Valor:Double);
{
Faz uma sangria na impressora (retirada de dinheiro).
Par�metro:
Valor: STRING com o Valor da sangria com at� 14 d�gitos (2 casas decimais).
Observa��o:
- O cupom fiscal deve estar fechado.
}
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_Sangria(pchar(format('%.2f',[Valor])))
  else
    iRetorno := Daruma_FI_Sangria(format('%.2f',[Valor]));
  Analisa_iRetorno;
  Retorno_Impressora;
end;

function TImpFiscalB.RetornoAliquotas:string;
Var
  cAliquotas: String;
      iConta: Integer;
Begin
  For iConta := 1 To 79 Do
    cAliquotas := cAliquotas + ' ';
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_RetornoAliquotas( cAliquotas )
  else
    iRetorno := Daruma_FI_RetornoAliquotas( cAliquotas );
  Analisa_iRetorno;
  Retorno_Impressora;
  Result := cAliquotas;
end;

function TImpFiscalB.RetornoAliquotasISS:string;
{
Retorna as al�quotas de vincula��o ao ISS.
Par�metro:
AliquotasIss: Vari�vel string com 79 posi��es para receber as al�quotas vinculadas ao Iss.
Observa��o:
- As al�quotas retornadas estar�o separadas por v�rgula. Ex.: 0300, 0500
' Exemplo em Visual Basic
AliquotasIss = Space(79)
iRetorno = Bematech_FI_VerificaAliquotasIss(AliquotasIss)
}
var
  iConta:integer;
  AliquotasISS:string;
begin
  for iConta := 1 to 79 do
  begin
      AliquotasISS := AliquotasISS + ' ';
  end;
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_VerificaAliquotasIss( AliquotasISS )
  else
    iRetorno := Daruma_FI_VerificaAliquotasIss( AliquotasISS );
  Analisa_iRetorno();
  Retorno_Impressora();
  Result := AliquotasISS;
end;

function TImpFiscalB.RetornoCuponsCanceladosNumero:Integer;
var cCuponsCancelados : String;
    iConta            : Integer;
Begin
  // reserva 4 bytes para a vari�vel
  For iConta := 1 To 4 Do
  Begin
    cCuponsCancelados := cCuponsCancelados + ' ';
  End;
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_NumeroCuponsCancelados( cCuponsCancelados )
  else
    iRetorno := Daruma_FI_NumeroCuponsCancelados( cCuponsCancelados );
  Analisa_iRetorno();
  if cCuponsCancelados <> '' then
    Result := StrToInt(cCuponsCancelados)
  else
    Result := 0;
  Retorno_Impressora();
end;

function TImpFiscalB.RetornoCuponsCanceladosValor: Double;
var cCancelamentos : String;
    iConta         : Integer;
Begin
  // reserva 14 bytes para a vari�vel
  For iConta := 1 To 14 Do
    cCancelamentos := cCancelamentos + ' ';
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_Cancelamentos( cCancelamentos )
  else
    iRetorno := Daruma_FI_Cancelamentos( cCancelamentos );
  Analisa_iRetorno();
  if cCancelamentos <> '' then
    Result := StrToFloat(cCancelamentos)/100
  else
    Result := 0;
  Retorno_Impressora();
end;

function TImpFiscalB.RetornoDataHora:TDateTime;
var
  iConta:integer;
  Data, Hora  :string;
begin
  for iConta := 1 to 6 do
  begin
    Data := Data + ' ';
  end;
  for iConta := 1 to 6 do
  begin
    Hora := Hora + ' ';
  end;
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_DataHoraImpressora( Data, Hora )
  else
    iRetorno := Daruma_FI_DataHoraImpressora( Data, Hora );
  Analisa_iRetorno;
  Retorno_Impressora;
  Result := StrToDateTime(copy(Data,1,2)+'/'+copy(Data,3,2)+'/'+copy(Data,5,2)+' '+
                          copy(Hora,1,2)+':'+copy(Hora,3,2)+':'+copy(Hora,5,2));
end;

function TImpFiscalB.RetornoDataHoraUltimaReducao:TDateTime;
var
  iConta:integer;
  Data, Hora  :string;
begin
  for iConta := 1 to 6 do
  begin
    Data := Data + ' ';
  end;
  for iConta := 1 to 6 do
  begin
    Hora := Hora + ' ';
  end;
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_DataHoraReducao(Data,Hora)
  else
    iRetorno := Daruma_FI_DataHoraReducao(Data,Hora);
  Analisa_iRetorno();
  Retorno_Impressora();
  Result := StrToDateTime(copy(Data,1,2)+'/'+copy(Data,3,2)+'/'+copy(Data,5,2)+' '+
                          copy(Hora,1,2)+':'+copy(Hora,3,2)+':'+copy(Hora,5,2));
end;

function TImpFiscalB.RetornoDataUltimoMovimento:TDateTime;
var
  iConta:integer;
  Data  :string;
begin
  for iConta := 1 to 6 do
  begin
    Data := Data + ' ';
  end;

  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_DataMovimento( Data )
  else
    iRetorno := Daruma_FI_DataMovimento( Data );
  Analisa_iRetorno;
  Retorno_Impressora;
  Result := StrToDateTime(copy(Data,1,2)+'/'+copy(Data,3,2)+'/'+copy(Data,5,2));
end;

procedure TImpFiscalB.RetornoDepartamentos;
var
  cDepartamentos : String;
        iConta   : Integer;
Begin
  // reserva 1019 bytes para a vari�vel
  For iConta := 1 To 1019 Do
    cDepartamentos := cDepartamentos + ' ';

  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_VerificaDepartamentos( cDepartamentos )
  else
    iRetorno := Daruma_FI_VerificaDepartamentos( cDepartamentos );
  Analisa_iRetorno;
  ShowMessage( 'Departamentos:' + #13 + #13 + cDepartamentos );
  Retorno_Impressora;
end;

function TImpFiscalB.RetornoDescontos:Double;
var
  iConta:integer;
  Descontos:string;
begin
  for iConta := 1 to 14 do
  begin
    Descontos := Descontos + ' ';
  end;
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_Descontos( Descontos )
  else
    iRetorno := Daruma_FI_Descontos( Descontos );
  Analisa_iRetorno;
  Retorno_Impressora;
  Result := StrToFloat(Descontos);
end;

function TImpFiscalB.RetornoEstadoGaveta:Integer;
var
  iEstadoGaveta : Integer;
Begin
  iEstadoGaveta := 0;
  // fun��o que retorna o estado da gaveta
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_VerificaEstadoGaveta( iEstadoGaveta )
  else
    iRetorno := Daruma_FI_VerificaEstadoGaveta( iEstadoGaveta );
  Analisa_iRetorno;
  Result := iEstadoGaveta ;
  Retorno_Impressora;
end;

procedure TImpFiscalB.RetornoEstadoImpressora(var iAck:integer; var iSt1:integer; var iSt2: integer);
Begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_VerificaEstadoImpressora( iAck, iSt1, iSt2 )
  else
    iRetorno := Daruma_FI_VerificaEstadoImpressora( iAck, iSt1, iSt2 );
  Analisa_iRetorno;
end;

function TImpFiscalB.RetornoFlagsFiscais:Integer;
var
  iFlagsFiscais : Integer;
Begin
  iFlagsFiscais := 0;
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_FlagsFiscais( iFlagsFiscais )
  else
    iRetorno := Daruma_FI_FlagsFiscais( iFlagsFiscais );
  Analisa_iRetorno;
  Result:=iFlagsFiscais;
  Retorno_Impressora;
end;

function TImpFiscalB.RetornoGrandeTotal:Double;
var
  cGrandeTotal : String;
  iConta       : Integer;
Begin
  // reserva 18 bytes para a vari�vel
  For iConta := 1 To 18 Do
    cGrandeTotal := cGrandeTotal + ' ';
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_GrandeTotal( cGrandeTotal )
  else
    iRetorno := Daruma_FI_GrandeTotal( cGrandeTotal );
  Analisa_iRetorno;
  if cGrandeTotal <> '' then
    Result := StrToFloat(cGrandeTotal)/100
  else
    Result := 0;
  Retorno_Impressora;
end;

function TImpFiscalB.RetornoIndiceAliquotasISS:string;
{
Retorna os �ndices das al�quotas de ISS.
Par�metro:
IndiceAliquotas: Vari�vel string com o tamanho de 48 posi��es para receber os �ndices das al�quotas de ISS.
Observa��es:
- Os �ndices retornados estar�o separados por v�rgula. Ex.: 03, 05.
}
var
  iConta:integer;
  IndiceAliquotas:string;
begin
  for iConta := 1 to 48 do
  begin
    IndiceAliquotas := IndiceAliquotas + ' ';
  end;
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_VerificaIndiceAliquotasIss( IndiceAliquotas )
  else
    iRetorno := Daruma_FI_VerificaIndiceAliquotasIss( IndiceAliquotas );
  Analisa_iRetorno;
  Retorno_Impressora;
  Result := IndiceAliquotas;
end;

function TImpFiscalB.RetornoNumeroCupom:Integer;
var
  cNumeroCupom: String;
     iConta   : Integer;
Begin
  For iConta := 1 To 6 Do
    cNumeroCupom := cNumeroCupom + ' ';
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_NumeroCupom( cNumeroCupom )
  else
    iRetorno := Daruma_FI_NumeroCupom( cNumeroCupom );
  Analisa_iRetorno;
  if Trim(cNumeroCupom) <> '' then
    Result := StrToInt(cNumeroCupom)
  else
    Result := 0;
  Retorno_Impressora;
end;

function TImpFiscalB.RetornoNumeroSerie:string;
var
  cNumeroSerie : String;
  iConta       : Integer;
Begin
  // reserva 15 bytes para a vari�vel
  For iConta := 1 To 15 Do
    cNumeroSerie := cNumeroSerie + ' ';

  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_NumeroSerie( cNumeroSerie )
  else
    iRetorno := Daruma_FI_NumeroSerie( cNumeroSerie );
  Analisa_iRetorno;
  Result := cNumeroSerie;
  Retorno_Impressora;
End;

function TImpFiscalB.RetornoRecebimentoNaoFiscal:string;
{
Retorna os recebimentos n�o fiscais n�o vinculados programados na impressora.
Par�metro:
Recebimentos: Vari�vel string com 2200 posi��es para receber as informa��es.
Observa��es:
- Essa fun��o retorna as informa��es para os 50 totalizadores n�o fiscais n�o vinculados na seguinte ordem:

Valor indicando quantas vezes cada recebimento foi utilizado:  4 bytes
Valor acumulado para cada recebimento (2 casas decimais)....: 20 bytes
Descri��o do recebimento....................................: 19 bytes
Exemplo:
000200000000000000005460Conta de �gua      ,
001500000000000000145850Conta de Luz       ,
000000000000000000000000Carn�              ,

000000000000000000000000                   ,
000000000000000000000000                   ,
000000000000000000000000Iptu               ,
000500000000000000078437Conta de Telefone  ,
.
.
.
000000000000000000000000Prestacao de contas
- A impressora permite programar at� 50 totalizadores n�o fiscais n�o vinculados, os totalizadores que n�o estiverem programados estar�o com os valores zerados e a descri��o em branco (veja exemplo acima).
}
var
  iConta:integer;
  Recebimento:string;
begin
  for iConta := 1 to 2200 do
  begin
    Recebimento := Recebimento + ' ';
  end;
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_VerificaRecebimentoNaoFiscal( Recebimento )
  else
    iRetorno := Daruma_FI_VerificaRecebimentoNaoFiscal( Recebimento );
  Analisa_iRetorno;
  Result := Recebimento;
  Retorno_Impressora;
end;

function TImpFiscalB.RetornoReducaoZUltima:string;
{
Observa��es:
- S�o retornados os valores das seguintes informa��es separados por v�rgulas:
Modo de Redu��o Z.........................:   2 bytes (se 00 redu��o por comando, se 01 redu��o autom�tica)
Grande Total..............................:  18 bytes
Cancelamentos.............................:  14 bytes
Descontos.................................:  14 bytes
Tributos..................................:  64 bytes
Totalizadores Parciais Tributados.........: 266 bytes
Sangria...................................:  14 bytes

Suprimentos...............................:  14 bytes
Totalizadores n�o sujeitos ao ICMS........: 126 bytes
Contadores dos TP's n�o sujeitos ao ICMSl.:  36 bytes
Contador de ordem de opera��o.............:   6 bytes
Contador de opera��es n�o sujeitas ao ICMS:   6 bytes
N�mero de Al�quotas cadastradas...........:   2 bytes
Data do movimento.........................:   6 bytes
Acr�scimos................................:  14 bytes
Acr�scimo financeiro......................:  14 bytes
}
var
  cDadosReducao : String;
       iConta   : Integer;
Begin
  For iConta := 1 To 631 Do
    cDadosReducao := cDadosReducao + ' ';

  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_DadosUltimaReducao( cDadosReducao )
  else
    iRetorno := Daruma_FI_DadosUltimaReducao( cDadosReducao );
  Analisa_iRetorno;
  if iRetorno = 1 then
    Result := cDadosReducao
  else
    Result := '';
  Retorno_Impressora;
end;

function TImpFiscalB.RetornoSubTotal: Double;
var cSubTotal: String;
    iConta   : Integer;
Begin
  For iConta := 1 To 14 Do
    cSubTotal := cSubTotal + ' ';
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_SubTotal( cSubTotal )
  else
    iRetorno := Daruma_FI_SubTotal( cSubTotal );
  Analisa_iRetorno;
  if Trim(cSubTotal) <> '' then
    Result := (StrToFloat(cSubTotal))/100
  else
    Result := 0;
  Retorno_Impressora;
end;

function TImpFiscalB.RetornoTotalizadoresNaoFiscais:string;
{
Retorna a descri��o dos totalizadores n�o fiscais programados na impressora.
Par�metro:
Totalizadores: Vari�vel string com 179 posi��es para receber a descri��o dos totalizadores n�o fiscais programados.
Observa��es:
- Os totalizadores vir�o separados por v�rgula.
- A impressora permite a programa��o de at� 50 totalizadores n�o fiscais, por�m essa fun��o retorna somente os 9 primeiros cadastrados.
}
var
  iConta : integer;
  Totalizadores:string;
begin
  for iConta := 1 to 179 do
  begin
    Totalizadores := Totalizadores + ' ';
  end;
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_VerificaTotalizadoresNaoFiscais( Totalizadores )
  else
    iRetorno := Daruma_FI_VerificaTotalizadoresNaoFiscais( Totalizadores );
  Analisa_iRetorno;
  Retorno_Impressora;
  Result := Totalizadores;
end;

procedure TImpFiscalB.RetornoTotalizadoresParciais;
Var
  cTots: String;
  iConta: Integer;
  cValores_Aliquotas: String;
Begin
  For iConta := 1 To 445 Do
    cTots := cTots + ' ';

  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_VerificaTotalizadoresParciais( cTots )
  else
    iRetorno := Daruma_FI_VerificaTotalizadoresParciais( cTots );
  Analisa_iRetorno;
  Retorno_Impressora;
  cValores_Aliquotas := Copy( cTots, 1, 224 );
end;

function TImpFiscalB.Retorno_Impressora:Integer;
Var
  iACK, iST1, iST2: Integer;
  mensagem:string;
  vPoucoPapel, vErro: Boolean;
Begin
  mensagem:='';
  vPoucoPapel := False;
  vErro := False;
  iACK := 0; iST1 := 0; iST2 := 0;
  if CConfiguracao.CodigoImpFiscal = 0 then
    Bematech_FI_RetornoImpressora(iACK, iST1, iST2)
  else
    Daruma_FI_RetornoImpressora(iACK, iST1, iST2);
  If iACK = 6 then
  BEGIN
    // Verifica ST1
    IF iST1 >= 128 Then
    BEGIN
      iST1 := iST1 - 128;
      mensagem:=mensagem+'Fim do Papel!'+#13;
      vErro := True;
    END;
    IF iST1 >= 64  Then
    BEGIN
      iST1 := iST1 - 64;
      mensagem:=mensagem+'Pouco Papel!'+#13;
      vPoucoPapel := True;
    END;
    IF iST1 >= 32  Then
    BEGIN
      iST1 := iST1 - 32;
      mensagem:=mensagem+'Erro no Rel�gio!'+#13;
      vErro := True;
    END;
    IF iST1 >= 16  Then
    BEGIN
      iST1 := iST1 - 16;
      mensagem:=mensagem+'Impressora em Erro!'+#13;
      vErro := True;
    END;
    IF iST1 >= 8   Then
    BEGIN
      iST1 := iST1 - 8;
      mensagem:=mensagem+'Comando n�o iniciado com ESC!'+#13;
      vErro := True;
    END;
    IF iST1 >= 4   Then
    BEGIN
      iST1 := iST1 - 4;
      mensagem:=mensagem+'Comando Inexistente!'+#13;
      vErro := True;
    END;
    IF iST1 >= 2   Then
    BEGIN
      iST1 := iST1 - 2;
      mensagem:=mensagem+'Cupom Aberto!'+#13;
      vErro := True;
    END;
    IF iST1 >= 1   Then
    BEGIN
      iST1 := iST1 - 1;
      mensagem:=mensagem+'N�mero de Par�metros Inv�lidos!'+#13;
      vErro := True;
    END;

    // Verifica ST2
    IF iST2 >= 128 Then
    BEGIN
      iST2 := iST2 - 128;
      mensagem:=mensagem+'Tipo de Par�metro Inv�lido!'+#13;
      vErro := True;
    END;
    IF iST2 >= 64  Then
    BEGIN
      iST2 := iST2 - 64;
      mensagem:=mensagem+'Mem�ria Fiscal Lotada!'+#13;
      vErro := True;
    END;
    IF iST2 >= 32  Then
    BEGIN
      iST2 := iST2 - 32;
      mensagem:=mensagem+'Erro na mem�ria RAM!'+#13;
      vErro := True;
    END;
    IF iST2 >= 16  Then
    BEGIN
      iST2 := iST2 - 16;
      mensagem:=mensagem+'Al�quota N�o Programada!'+#13;
      vErro := True;
    END;
    IF iST2 >= 8   Then
    BEGIN
      iST2 := iST2 - 8;
      mensagem:=mensagem+'Capacidade de Al�quotas Lotada!'+#13;
      vErro := True;
    END;
    IF iST2 >= 4   Then
    BEGIN
      iST2 := iST2 - 4;
      mensagem:=mensagem+'Cancelamento n�o Permitido!'+#13;
      vErro := True;
    END;
    IF iST2 >= 2   Then
    BEGIN
      iST2 := iST2 - 2;
      mensagem:=mensagem+'CNPJ/IE do propriet�rio n�o Programado!'+#13;
      vErro := True;
    END;
    IF iST2 >= 1   Then
    BEGIN
      iST2 := iST2 - 1;
      mensagem:=mensagem+'Comando n�o Executado!'+#13;
      vErro := True;
    END;

    // Result = -1 (Erro); Result = 0 (Pouco Papel); Result = 1 (OK)
    if vErro then
      Result := -1
    else if vPoucoPapel then
      Result := 0
    else
      Result := 1;
  End
  else
    Result := -1;

  if mensagem <> '' then
    ShowMessage(mensagem);
end;

procedure TImpFiscalB.UsaComprovanteNaoFiscalVinculado(Texto:string);
{
Imprime o comprovante n�o fiscal vinculado.
Par�metros:
Texto: STRING com o Texto a ser impresso no comprovante n�o fiscal vinculado com at� 618 caracteres.
}
begin
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado(pchar(Texto))
  else
    iRetorno := Daruma_FI_UsaComprovanteNaoFiscalVinculado(Texto);
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.VendaDeItem(Codigo:Integer;Descricao, Unidade, Referencia, Tributacao:String;Quantidade:Double;ValorUnitario:Double;ValorDesconto:Double);
var
  sCodigo, sDescricao: string;
begin
  if Length(Descricao) > 29 then
  Begin
    if CConfiguracao.CodigoImpFiscal = 0 then
      iRetorno := Bematech_FI_AumentaDescricaoItem(Descricao)
    else
      iRetorno := Daruma_FI_AumentaDescricaoItem(Descricao);
    Analisa_iRetorno;
    Retorno_Impressora;
  end;
  if Unidade <> '' then
  Begin
    if CConfiguracao.CodigoImpFiscal = 0 then
      iRetorno := Bematech_FI_UsaUnidadeMedida( Copy(Unidade,1,2) )
    else
      iRetorno := Daruma_FI_UsaUnidadeMedida( Copy(Unidade,1,2) );
    Analisa_iRetorno();
    Retorno_Impressora();
  end;

  if (Trim(Tributacao) = '') or
     (Trim(Tributacao) = '0') then
    Tributacao := '1700';

  if (CConfiguracao.Empresa = empHope) and
     (Trim(Referencia) <> '') then
    sCodigo := Referencia
  else
    sCodigo := IntToStr(Codigo);

  sDescricao := PreencheEspaco(29,Descricao);

  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_VendeItem( sCodigo, sDescricao,
                Tributacao,'F', Format('%.0f', [Quantidade*1000]),
                2, Format('%.0f', [ValorUnitario*100]), '$',
                Format('%.0f', [ValorDesconto*100]))
  else
    iRetorno := Daruma_FI_VendeItem( sCodigo, sDescricao,
                Tributacao,'F', Format('%.0f', [Quantidade*1000]),
                2, Format('%.0f', [ValorUnitario*100]), '$',
                Format('%.0f', [ValorDesconto*100]));

  Analisa_iRetorno();
  Retorno_Impressora();
  if iRetorno = 1 then
  Begin
    if tela <> nil then
    Begin
      with Tela.Lines do
      begin
        add(PreencheE(IntToStr(ItemAtual), '0', 3) + ' ' + PreencheE(IntToStr(Codigo), '0', 13) + ' ' + Descricao);
        add(PreencheE(Format('%.3f', [Quantidade]), ' ', 9)+'x'+PreencheD
        (Format('%.2f', [ValorUnitario]), ' ', 12)+'T17,00% '+PreencheE(Format('%.2f',
        [Quantidade*ValorUnitario]), ' ', 18));
        if ValorDesconto>0 then
          add(' Desconto '+PreencheE('-'+Format('%.2f', [ValorDesconto]), ' ', 19)+
          PreencheE(Format('%.2f', [(Quantidade*ValorUnitario)-ValorDesconto]),' ', 19));
      end;
    end;
  end;
end;

procedure TImpFiscalB.VerificaTruncamento;
var sModo: string;
    iConta: integer;
begin
  for iConta := 1 to 2 do
    sModo := sModo + ' ';

  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_VerificaTruncamento( sModo )
  else
    iRetorno := Daruma_FI_VerificaTruncamento( sModo );
  if copy( sModo,1,1 ) = '1' then
     ShowMessage('A Impressora est� Truncando.')
  else
     ShowMessage('A Impressora est� Arredondando.');

  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.VerificaVersaoFirmware;
var sVersao: string;
     iConta: integer;
begin
  for iConta := 1 to 4 do
    sVersao := sVersao + ' ';
  if CConfiguracao.CodigoImpFiscal = 0 then
    iRetorno := Bematech_FI_VersaoFirmware( sVersao )
  else
    iRetorno := Daruma_FI_VersaoFirmware( sVersao );
  Analisa_iRetorno;
  Retorno_Impressora;
  ShowMessage('Vers�o do Firmaware: ' + sVersao );
end;

procedure TImpFiscalB.zzzTEF_ADM(Identificacao:integer);
{
Permite o acionamento da Solu��o TEF Discado para execu��o das fun��es administrativas.
Par�metro:
Identificacao: Indica o n�mero de controle da solicita��o que est� sendo feita.Este n�mero � gerado pelo aplicativo de automa��o comercial, o qual dever� colocar um conte�do diferente a cada nova solicita��o. Este mesmo conte�do � devolvido no arquivo de resposta. Tamanho: Num�rico de at� 10 bytes.
}
begin
//  if CConfiguracao.CodigoImpFiscal = 0 then
//    iRetorno := Bematech_FITEF_ADM( pchar(PreencheZero(10,Identificacao)) );


//  else
//    iRetorno := Daruma_FITEF_ADM( pchar(PreencheZero(10,Identificacao)) );
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.zzzTEF_ImprimeRelatorio;
{
Imprime todo tipo de relat�rio gerado por uma opera��o Administrativa
Observa��o:
- Ap�s ser feita a impress�o de algum relat�rio ou impress�o de cancelamento, via fun��o Administrativa, � preciso mandar uma Confirma��o de que a opera��o foi feita com sucesso.
}
begin
//  if CConfiguracao.CodigoImpFiscal = 0 then
//    iRetorno := Bematech_FITEF_ImprimeRelatorio;


//  else
//    iRetorno := Daruma_FITEF_ImprimeRelatorio;
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.zzzTEF_NaoConfirmaVendaImpressao(Identificacao: string; Valor:Double);
{
N�o confirma a venda e/ou a impress�o do cupom.
Par�metros:
Identificacao: Indica o n�mero de controle da solicita��o que est� sendo feita.Este n�mero � gerado pelo aplicativo de automa��o comercial, o qual dever� colocar um conte�do diferente a cada nova solicita��o.Este mesmo conte�do � devolvido no arquivo de resposta. Tamanho: Num�rico de at� 10 bytes.
ValorCompra: Valor total desta forma de pagamento. Tamanho: Num�rico de at� 12 bytes + separadores de grandezas.
}
begin
//  if CConfiguracao.CodigoImpFiscal = 0 then
//    iRetorno := Bematech_FITEF_NaoConfirmaVendaImpressao( pchar(PreencheZero(10,Identificacao)),
//      pchar(format('%.2f',[Valor])));


//  else
//    iRetorno := Daruma_FITEF_NaoConfirmaVendaImpressao( PreencheZero(10,Identificacao),
//      format('%.2f',[Valor]));
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.zzzTEF_Status(Identificacao:string);
begin
//  if CConfiguracao.CodigoImpFiscal = 0 then
//    iRetorno := Bematech_FITEF_Status( pchar(PreencheZero(10,Identificacao)) );


//  else
//    iRetorno := Daruma_FITEF_Status( PreencheZero(10,Identificacao) );
  case iRetorno of
      1: ShowMessage('Ativo!');
      0: ShowMessage('Inativo!');
    -18: ShowMessage('N�o foi poss�vel criar arquivo .001 ou .STS!');
  end;
  Retorno_Impressora();
end;

procedure TImpFiscalB.zzzTEF_VendaCompleta(Identificacao:string; Valor:Double; FormaPagamento, MensagemPromocional:string);
{
Faz uma venda com, executa o fechamento do cupom fiscal ap�s a venda e imprime o cupom TEF.
Par�metros:
Identificacao: N�mero do Documento (NSU).
ValorCompra: Valor de compra da Opera��o com Cart�o.
FormaPagamento: Descri��o da Forma de Pagamento.
Texto: Mensagem Promocional.
Observa��es:
- No arquivo BEMAFI32.INI existe uma chave chamada VIAS.Nela cont�m o n�mero de vias a serem impressas.
No caso de homologa��o a chave vias deve ser igual a 2(dois). Isso serve para impressoras que n�o t�m via carbonada.
}

begin
//  if CConfiguracao.CodigoImpFiscal = 0 then
//    iRetorno := Bematech_FITEF_VendaCompleta( pchar(PreencheZero(10,Identificacao)),
//       pchar(format('%.2f',[Valor])), pchar(FormaPagamento),
//       pchar(MensagemPromocional));


//  else
//    iRetorno := Daruma_FITEF_VendaCompleta( PreencheZero(10,Identificacao),
//       format('%.2f',[Valor]), FormaPagamento,
//       MensagemPromocional);
  Analisa_iRetorno();
  Retorno_Impressora();
end;

procedure TImpFiscalB.zzzzTEF_CancelaVendaCartao(Identificacao:integer;Valor:Double;NSU,Cupom:integer;Data, Hora:TDateTime;Rede:string);
{
Cancelamento de uma venda feita com qualquer tipo de cart�o.
Par�metros:
Identificacao: Indica o n�mero de controle da solicita��o que est� sendo feita.Este n�mero � gerado pelo aplicativo de automa��o comercial, o qual dever� colocar um conte�do diferente a cada nova solicita��o.Este mesmo conte�do � devolvido no arquivo de resposta. Tamanho: Num�rico de at� 10 bytes.
ValorCompra: Valor total desta forma de pagamento. Tamanho: Num�rico de at� 12 bytes + separadores de grandezas.
Nsu: Indica o n�mero de seq��ncia ( NSU - N�mero Seq�encial �nico ) da transa��o atribu�do pelo Host ( Sistema da Rede de Cart�o que recebe e trata as solicita��es das transa��es TEF ). Quando este campo � enviado do gerenciador padr�o para o aplicativo de Automa��o Comercial , ele representa o NSU da transa��o a ser tratada. Tamanho: Num�rico de at� 12 bytes.
NumeroCupom: N�mero do documento fiscal vinculado � forma de pagamento. Tamanho: Num�rico de at� 12 bytes.
Data: Data da transa��o. Tamanho: Num�rico de 8 bytes (DDMMAAAA)
Hora: Hora da transa��o. Tamanho: Num�rico (HHMMSS)
Rede : Nome da rede que tratou a transa��o. Tamanho: Alfanum�rico de at� 8 bytes.
}
begin
//  if CConfiguracao.CodigoImpFiscal = 0 then
//    iRetorno := Bematech_FITEF_CancelaVendaCartao( pchar(PreencheZero(10,Identificacao)),
//       pchar(format('%.2f',[Valor])), pchar(IntToStr(NSU)), pchar(PreencheZero(12,Cupom)),
//       pchar(formatDateTime('ddmmyyyy',Data)), pchar(formatDateTime('hhmmss',Hora)),
//       pchar(Rede));


{  else
    iRetorno := Daruma_FITEF_CancelaVendaCartao( PreencheZero(10,Identificacao),
       format('%.2f',[Valor]), IntToStr(NSU), PreencheZero(12,Cupom),
       formatDateTime('ddmmyyyy',Data), formatDateTime('hhmmss',Hora),
       Rede);
}
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.zzzzTEF_VendaCartao(Identificacao:string; Valor:Double);
{
Pedido de autoriza��o para transa��o por meio de cart�o.
Par�metros:
Identificacao: Indica o n�mero de controle da solicita��o que est� sendo feita.Este n�mero � gerado pelo aplicativo de automa��o comercial, o qual dever� colocar um conte�do diferente a cada nova solicita��o.Este mesmo conte�do � devolvido no arquivo de resposta. Tamanho: Num�rico de at� 10 bytes.
ValorCompra: Valor total desta forma de pagamento. Tamanho de at� 14 d�gitos.
}
begin
//  if CConfiguracao.CodigoImpFiscal = 0 then
//    iRetorno := Bematech_FITEF_VendaCartao(pchar(PreencheZero(10,Identificacao)),
//       pchar(format('%.2f',[Valor])));



//  else
//    iRetorno := Daruma_FITEF_VendaCartao(PreencheZero(10,Identificacao),
//       format('%.2f',[Valor]));
  Analisa_iRetorno();
  Retorno_Impressora();
end;

procedure TImpFiscalB.zzzzzzTEF_ConfirmaVenda(Identificacao:integer;Valor:Double;Header:string);
{
Confirma a venda e impress�o do cupom.
Par�metros:
Identificacao: Indica o n�mero de controle da solicita��o que est� sendo feita.Este n�mero � gerado pelo aplicativo de automa��o comercial, o qual dever� colocar um conte�do diferente a cada nova solicita��o.Este mesmo conte�do � devolvido no arquivo de resposta. Tamanho: Num�rico de at� 10 bytes.
ValorCompra: Valor total desta forma de pagamento. Tamanho: Num�rico de at� 12 bytes + separadores de grandezas.
Header: Identifica o tipo de opera��o (*). Tamanho: Alfanum�rico de 3 bytes.
Observa��o:
(*) = Os tipos de opera��es aceitas s�o: �CNF�,�CRT�,�CHQ� -> Para confirmar opera��o.
}
begin
//  if CConfiguracao.CodigoImpFiscal = 0 then
//    iRetorno := Bematech_FITEF_ConfirmaVenda( pchar(format('%.2f',[Valor])), pchar(Header) );


//  else
//    iRetorno := Daruma_FITEF_ConfirmaVenda( format('%.2f',[Valor]), Header );
  Analisa_iRetorno;
  Retorno_Impressora;
end;

procedure TImpFiscalB.zzzzzzTEF_ImprimeTEF(Identificacao, FormaPagamento:string; Valor:Double);
{
Fun��o usada para imprimir comprovante n�o fiscal vinculado referente a esse tipo de venda.
Par�metros:
Identificacao: Indica o n�mero de controle da solicita��o que est� sendo feita.Este n�mero � gerado pelo aplicativo de automa��o comercial, o qual dever� colocar um conte�do diferente a cada nova solicita��o. Este mesmo conte�do � devolvido no arquivo de resposta. Tamanho: Num�rico de at� 10 bytes.
FormaPagamento: Descri��o da forma de pagamento. Tamanho: Alfanum�rico de at� 16 bytes.
ValorCompra: Valor referente a essa forma de pagamento. Tamanho: Num�rico de at� 12 bytes + separadores de grandezas.
}
begin
//  if CConfiguracao.CodigoImpFiscal = 0 then
//    iRetorno := Bematech_FITEF_ImprimeTEF(pchar(PreencheZero(10,Identificacao)), pchar(FormaPagamento),
//      pchar(format('%.2f',[Valor])));

//  else
//    iRetorno := Daruma_FITEF_ImprimeTEF(PreencheZero(10,Identificacao), FormaPagamento,
//      format('%.2f',[Valor]));
  Analisa_iRetorno;
  Retorno_Impressora;
end;


end.
