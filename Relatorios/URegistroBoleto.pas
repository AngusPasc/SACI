unit URegistroBoleto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ZRCtrls, ZReport, Db, DBTables, SQuery, Cliente, StdCtrls, 
  Registro_Boleto;

type
  Trpt_RegistroBoleto = class(TForm)
    report: TSZReport;
    zrbCabecalhoPagina: TSZRBand;
    zrbDetalhe: TSZRBand;
    zrbRodapePagina: TSZRBand;
    ZRSysData1: TSZRSysData;
    ZRLabel2: TSZRLabel;
    ZRSysData2: TSZRSysData;
    ZRLabel3: TSZRLabel;
    ZRLabel5: TSZRLabel;
    ZRLabel8: TSZRLabel;
    ZRLabel4: TSZRLabel;
    ZRLabel1: TSZRLabel;
    zrlUsuario: TSZRLabel;
    Registro_Boleto1: TRegistro_Boleto;
    zrlMotivo: TSZRLabel;
    zrlNumeroEmpresa: TSZRLabel;
    zrlFiltros: TSZRLabel;
    SZRGroup1: TSZRGroup;
    SZRDBText3: TSZRDBText;
    SZRDBText4: TSZRDBText;
    SZRLabel6: TSZRLabel;
    SZRLabel3: TSZRLabel;
    zrlCodigoOperacao: TSZRLabel;
    zrlNomeSacado: TSZRLabel;
    zrlDataVencimento: TSZRLabel;
    zrlDataOperacao: TSZRLabel;
    zrlValorTitulo: TSZRLabel;
    zrlTarifa: TSZRLabel;
    zrlAcrescimo: TSZRLabel;
    zrlAbatimentoDesconto: TSZRLabel;
    zrlValorLiquido: TSZRLabel;
    zrlDC: TSZRLabel;
    zrlNossoNumero: TSZRLabel;
    zrlBancoRec: TSZRLabel;
    zrbRodapeGrupo: TSZRBand;
    SZRLabel12: TSZRLabel;
    SZRLabel15: TSZRLabel;
    SZRLabel16: TSZRLabel;
    SZRLabel17: TSZRLabel;
    SZRLabel18: TSZRLabel;
    SZRLabel19: TSZRLabel;
    SZRLabel20: TSZRLabel;
    SZRLabel21: TSZRLabel;
    SZRLabel22: TSZRLabel;
    SZRLabel23: TSZRLabel;
    SZRLabel24: TSZRLabel;
    SZRLabel25: TSZRLabel;
    SZRLabel26: TSZRLabel;
    SZRLabel27: TSZRLabel;
    SZRLabel28: TSZRLabel;
    SZRLabel30: TSZRLabel;
    SZRLabel31: TSZRLabel;
    SZRLabel29: TSZRLabel;
    zrlDescConta: TSZRLabel;
    SZRLabel32: TSZRLabel;
    zrlQtdRegistrado: TSZRLabel;
    zrlTotalRegistrado: TSZRLabel;
    zrlQtdLiquidado: TSZRLabel;
    zrlTotalLiquidado: TSZRLabel;
    zrlQtdLiquidadeFloat: TSZRLabel;
    zrlTotalLiquidadeFloat: TSZRLabel;
    zrlQtdValorRecebido: TSZRLabel;
    zrlTotalValorRecebido: TSZRLabel;
    zrlQtdDebitadoDesconto: TSZRLabel;
    zrlTotalDebitadoDesconto: TSZRLabel;
    zrlQtdLancamentoCobranca: TSZRLabel;
    zrlTotalLancamentoCobranca: TSZRLabel;
    zrlQtdDebitadoCobranca: TSZRLabel;
    zrlQtdCreditadoCobranca: TSZRLabel;
    zrlTotalDebitadoCobranca: TSZRLabel;
    zrlTotalCreditadoCobranca: TSZRLabel;
    zrlQtdTarifas: TSZRLabel;
    zrlTotalTarifas: TSZRLabel;
    zrlQtdCreditadoDesconto: TSZRLabel;
    zrlQtdLancamentoDesconto: TSZRLabel;
    zrlTotalCreditadoDesconto: TSZRLabel;
    zrlTotalLancamentoDesconto: TSZRLabel;
    zrlRegistradoCD: TSZRLabel;
    zrlLiquidadeFloatCD: TSZRLabel;
    zrlValorRecebidoCD: TSZRLabel;
    zrlDebitadoDescontoCD: TSZRLabel;
    zrlLancamentoCobrancaCD: TSZRLabel;
    zrlCreditadoCobrancaCD: TSZRLabel;
    zrlDebitadoCobrancaCD: TSZRLabel;
    zrlTarifasCD: TSZRLabel;
    zrlLancamentoDescontoCD: TSZRLabel;
    zrlCreditadoDescontoCD: TSZRLabel;
    ZRLabel6: TSZRLabel;
    SZRLabel2: TSZRLabel;
    SZRLabel4: TSZRLabel;
    SZRLabel1: TSZRLabel;
    SZRLabel5: TSZRLabel;
    zrlDescDataOperacao: TSZRLabel;
    SZRLabel7: TSZRLabel;
    SZRLabel8: TSZRLabel;
    SZRLabel9: TSZRLabel;
    SZRLabel10: TSZRLabel;
    SZRLabel11: TSZRLabel;
    SZRLabel13: TSZRLabel;
    SZRLabel14: TSZRLabel;
    SZRDBText1: TSZRDBText;
    SZRDBText2: TSZRDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure zrbCabecalhoPaginaBeforePrint(Sender: TObject; var DoPrint: Boolean);
    procedure zrbRodapePaginaBeforePrint(Sender: TObject; var DoPrint: Boolean);
    procedure zrbDetalheBeforePrint(Sender: TObject; var DoPrint: Boolean);
    procedure SZRGroup1BeforePrint(Sender: TObject; var DoPrint: Boolean);
    procedure zrbRodapeGrupoBeforePrint(Sender: TObject;
      var DoPrint: Boolean);
  private
    iQtdRegistrado, iQtdLiquidado, iQtdRecebido, iQtdTarifa: integer;
    vValorRegistrado, vValorLiquidado, vValorRecebido, vValorTarifa: Double;
  public
    Entidade: TRegistro_Boleto;
  end;

var
  rpt_RegistroBoleto: Trpt_RegistroBoleto;

implementation
uses
  UDM, Funcoes;

{$R *.DFM}

procedure Trpt_RegistroBoleto.FormCreate(Sender: TObject);
begin
  Entidade := Registro_Boleto1;
end;

procedure Trpt_RegistroBoleto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Entidade.Close;
  Action := cafree;
end;

procedure Trpt_RegistroBoleto.zrbCabecalhoPaginaBeforePrint(Sender: TObject;
  var DoPrint: Boolean);
begin
  ZRLabel3.Caption:=DM.Configuracao1.LojaNome;
  ZRLabel1.Caption:=DM.CentroCusto1.RazaoSocial;
end;

procedure Trpt_RegistroBoleto.zrbRodapePaginaBeforePrint(Sender: TObject;
  var DoPrint: Boolean);
begin
  zrlUsuario.Caption := 'Usuario: '+UpperCase(DM.NomeUsuario(DM.Configuracao1.CodigoUSU));
  ZRLabel4.Caption   := EmpresaDesenvolvedora;
end;

procedure Trpt_RegistroBoleto.zrbDetalheBeforePrint(Sender: TObject;
  var DoPrint: Boolean);
var
  sNossoNumero, sNumeroEmpresa, sNomeSacado, sVencimento, sDtOperacao,
    sValorTitulo, sTarifa, sAcrescimo, sAbatDesc, sOperacao,
    sLiquido, sDC, sBancoRec, sMotivo: string;
  CdMovimento, CdMotivo: integer;
begin
  sNossoNumero   := '';
  sNumeroEmpresa := '';
  sNomeSacado    := '';
  sVencimento    := '';
  sDtOperacao    := '';
  sValorTitulo   := '';
  sTarifa        := '';
  sAcrescimo     := '';
  sAbatDesc      := '';
  sOperacao      := '';
  sLiquido       := '';
  sDC            := '';
  sBancoRec      := '';
  sMotivo        := '';

  CdMovimento := 0;
  CdMotivo    := 0;
  if Entidade.Tipo = 1 then //Entrada
  Begin
    //C�digo do Movimento
    if (Trim(Copy(Entidade.SegmentoT, 16, 2)) <> '') then
      CdMovimento := StrToInt(Trim(Copy(Entidade.SegmentoT, 16, 2)));

    //C�digo do Motivo
    if (Trim(Copy(Entidade.SegmentoT, 214, 2)) <> '') then //Motivo da Ocorrencia  (Tamanho 10)
      CdMotivo := StrToInt(Trim(Copy(Entidade.SegmentoT, 214, 2)));

    //Nosso N�mero
    sNossoNumero := Trim(Copy(Entidade.SegmentoT, 38, 12));

    //Numero Empresa
    sNumeroEmpresa := Trim(Copy(Entidade.SegmentoT, 106, 10));

    //Tarifa
    sTarifa := Trim(Copy(Entidade.SegmentoT, 199, 15));

    if StringReal(sTarifa) > 0 then
    Begin
      Inc(iQtdTarifa);
      vValorTarifa := vValorTarifa + StringReal(sTarifa);
    end;

    //Acrescimo
    sAcrescimo := Trim(Copy(Entidade.SegmentoU, 18, 15));

    //Abatimento/Desconto
    sAbatDesc := Trim(Copy(Entidade.SegmentoU, 33, 15));

    //Valor do T�tulo
    sValorTitulo := Trim(Copy(Entidade.SegmentoT, 82, 15));

    //Valor Liquido
    sLiquido := Trim(Copy(Entidade.SegmentoU, 93, 15));

    //Data Vencimento
    sVencimento := Copy(Entidade.SegmentoT, 74, 2)+'/'+ //Dia
                   Copy(Entidade.SegmentoT, 76, 2)+'/'+ //Mes
                   Copy(Entidade.SegmentoT, 78, 4);     //Ano

    //Data Opera��o (Data da Ocorr�ncia)
    if (Copy(Entidade.SegmentoU, 138, 8) <> '00000000') then
      sDtOperacao := Copy(Entidade.SegmentoU, 138, 2)+'/'+ //Dia
                     Copy(Entidade.SegmentoU, 140, 2)+'/'+ //Mes
                     Copy(Entidade.SegmentoU, 142, 4);     //Ano

    //Nome do Sacado
    if (sNumeroEmpresa <> '') and
       (sNumeroEmpresa <> '0000000000') then
      with DM.QR_Consultas do
      Begin
        Close;
        SQL.Text := 'SELECT TOP 1 C1.CLI_RZ_SOCIAL AS NOME '+
          ' FROM CLIENTE C1, TITULO_A_RECEBER T1 '+
          ' WHERE T1.CNC_CODIGO='+Copy(sNumeroEmpresa,1,2)+
          ' AND T1.TRC_CODIGO='+Copy(sNumeroEmpresa,3,8)+
          ' AND C1.CNC_CODIGO=T1.CNC_CLIENTE '+
          ' AND C1.CLI_CODIGO=T1.CLI_CODIGO ';
        Open;
        sNomeSacado := Trim(FieldByName('NOME').asString);
      end;

    case CdMovimento of
      2: Begin //Registrado
           sOperacao := 'RG';
           Inc(iQtdRegistrado);
           vValorRegistrado := vValorRegistrado + StringReal(sValorTitulo);
         end;
      3: sOperacao := 'ER'; //Entrada Rejeitada
      6: Begin
           Inc(iQtdLiquidado);
           vValorLiquidado := vValorLiquidado + StringReal(sValorTitulo);
           Inc(iQtdRecebido);
           vValorRecebido := vValorRecebido + StringReal(sLiquido);
           case CdMotivo of
             0: sOperacao := 'LQ';  //
             else
               sOperacao := 'LQ';
           end;
         end;
      9: Begin
           case CdMotivo of
             0: sOperacao := 'BX'; //
             else
               sOperacao := 'BX';
           end;
         end;
     12: sOperacao := 'AB';
     13: sOperacao := 'ABC';
     14: sOperacao := 'VC';
     17: Begin
           sOperacao := 'Liqidacao Apos Baixa/Liquidado Titulo Nao Registrado';
         end;
     19: Begin
           sOperacao := 'Confirmacao Recebimento Instrucao Protesto';
         end;
     20: Begin
           sOperacao := 'SUS';
//           sOperacao := 'Confirmacao Recebimento Instrucao Sustacao/Canc Protesto';
         end;
     23: Begin
           sOperacao := 'TEC';
//           sOperacao := 'Remessa a Cartorio (aponte em cartorio)';
         end;
     24: sOperacao := 'Retirada de Cartorio e Manutencao em Carteira';
     25: sOperacao := 'BXP';
     26: sOperacao := 'Instrucao Rejeitada';
     27: sOperacao := 'Confirmacao do Pedido de Alteracao de Outros Dados';
     28: Begin
           sOperacao := 'Debito de Tarifas/Custa';
           Case CdMotivo of
             01: zrlMotivo.Caption := 'Tarifa de extrato de posi��o.';
             02: Begin
                   sOperacao := 'MTV';
                   zrlMotivo.Caption := 'Tarifa de manuten��o de t�tulo vencido.';
                 end;
             03: Begin
                   sOperacao := 'DDS';
                   zrlMotivo.Caption := 'Tarifa de susta��o.';
                 end;
             04: Begin
                   sOperacao := 'DDP';
                   zrlMotivo.Caption := 'Tarifa de protesto.';
                 end;
             05: zrlMotivo.Caption := 'Tarifa de outras instru��es.';
             06: zrlMotivo.Caption := 'Tarifa de outras ocorr�ncias.';
             07: zrlMotivo.Caption := 'Tarifa de envio de duplicata ao sacado.';
             08: Begin
                   sOperacao := 'DDP';
                   zrlMotivo.Caption := 'Custas de protesto.';
                 end;
             09: Begin
                   zrlMotivo.Caption := 'Custas de susta��o de protesto.';
                 end;
             10: zrlMotivo.Caption := 'Custas do cart�rio distribuidor.';
             11: zrlMotivo.Caption := 'Custas de edital.';
           end;
         end;
     30: sOperacao := 'Alteracao de Dados Rejeitada';
     36: sOperacao := 'Confirmacao Recebimento instrucao Desconto';
     37: sOperacao := 'Confirmacao Recebimento instrucao Cancelamento Desconto';
     43: sOperacao := 'Retorno de Protesto/Sustacao';
     44: sOperacao := 'Estorno de Baixa/Liquidacao';
     45: sOperacao := 'Alteracao de Dados';
    end;

    if CdMovimento in [3,26,30] then
    Begin
      case CdMotivo of
        01: zrlMotivo.Caption := 'C�digo do banco inv�lido.';
        02: zrlMotivo.Caption := 'C�digo do registro inv�lido.';
        03: zrlMotivo.Caption := 'C�digo do segmento inv�lido.';
        04: zrlMotivo.Caption := 'Codigo do movimento nao permitido para carteira.';
        05: zrlMotivo.Caption := 'C�digo de movimento inv�lido.';
        06: zrlMotivo.Caption := 'Tipo/n�mero de inscri��o do cedente inv�lidos.';
        07: zrlMotivo.Caption := 'Ag�ncia/Conta/DV inv�lido.';
        08: zrlMotivo.Caption := 'Nosso n�mero inv�lido.';
        09: zrlMotivo.Caption := 'Nosso n�mero duplicado.';
        10: zrlMotivo.Caption := 'Carteira inv�lida.';
        11: zrlMotivo.Caption := 'Forma de cadastramento do t�tulo inv�lido.';
        12: zrlMotivo.Caption := 'Tipo de documento inv�lido.';
        13: zrlMotivo.Caption := 'Identifica��o da emiss�o do bloqueto inv�lida.';
        14: zrlMotivo.Caption := 'Identifica��o da distribui��o do bloqueto inv�lida.';
        15: zrlMotivo.Caption := 'Caracter�sticas da cobran�a incompat�veis.';
        16: zrlMotivo.Caption := 'Data de vencimento inv�lida.';
        17: zrlMotivo.Caption := 'Data de vencimento anterior a data de emissao.';
        18: zrlMotivo.Caption := 'Vencimento fora do prazo de operacao.';
        19: zrlMotivo.Caption := 'Titulo a cargo de bancos correspondentes com vencimento inferior xx dias.';
        20: zrlMotivo.Caption := 'Valor do t�tulo inv�lido.';
        21: zrlMotivo.Caption := 'Esp�cie do t�tulo inv�lida.';
        22: zrlMotivo.Caption := 'Especie nao permitida para a carteira.';
        23: zrlMotivo.Caption := 'Aceite inv�lido.';
        24: zrlMotivo.Caption := 'Data da emiss�o inv�lida.';
        25: zrlMotivo.Caption := 'Data de emissao posterior a data.';
        26: zrlMotivo.Caption := 'C�digo de juros de mora inv�lido.';
        27: zrlMotivo.Caption := 'Valor/Taxa de juros de mora inv�lido.';
        28: zrlMotivo.Caption := 'C�digo do desconto inv�lido.';
        29: zrlMotivo.Caption := 'Valor do desconto maior ou igual ao valor do t�tulo.';
        30: zrlMotivo.Caption := 'Desconto a conceder n�o confere.';
        31: zrlMotivo.Caption := 'Concessao de desconto - ja existe desconto anterior.';
        32: zrlMotivo.Caption := 'Valor do IOF inv�lido.';
        33: zrlMotivo.Caption := 'Valor do abatimento inv�lido.';
        34: zrlMotivo.Caption := 'Valor do abatimento maior ou igual ao valor do titulo.';
        35: zrlMotivo.Caption := 'Abatimento a conceder nao confere.';
        36: zrlMotivo.Caption := 'Concessao de abatimento - ja existe abatimento anterior.';
        37: zrlMotivo.Caption := 'C�digo para protesto inv�lido.';
        38: zrlMotivo.Caption := 'Prazo para protesto inv�lido.';
        39: zrlMotivo.Caption := 'Pedido de protesto nao permitido para o titulo.';
        40: zrlMotivo.Caption := 'T�tulo com ordem de protesto emitida.';
        41: zrlMotivo.Caption := 'Pedido de cancelamento/sustacao para titulos sem instrucao de protesto.';
        42: zrlMotivo.Caption := 'C�digo para baixa/devolu��o inv�lido.';
        43: zrlMotivo.Caption := 'Prazo para baixa/devolu��o inv�lido.';
        44: zrlMotivo.Caption := 'C�digo da moeda inv�lido.';
        45: zrlMotivo.Caption := 'Nome do sacado n�o informado.';
        46: zrlMotivo.Caption := 'Tipo/n�mero de inscri��o do sacado inv�lidos.';
        47: zrlMotivo.Caption := 'Endere�o do sacado n�o informado.';
        48: zrlMotivo.Caption := 'CEP inv�lido.';
        49: zrlMotivo.Caption := 'CEP sem pra�a de cobran�a (n�o localizado).';
        50: zrlMotivo.Caption := 'CEP referente a um banco correspondente.';
        51: zrlMotivo.Caption := 'CEP incompativel com a unidade da federacao.';
        52: zrlMotivo.Caption := 'Unidade da federa��o inv�lida.';
        53: zrlMotivo.Caption := 'Tipo/n�mero de inscri��o do sacador/avalista inv�lidos.';
        54: zrlMotivo.Caption := 'Sacador/Avalista nao informado.';
        55: zrlMotivo.Caption := 'Nosso Numero no banco correspondente nao informado.';
        56: zrlMotivo.Caption := 'Codigo do banco correspondente nao informado.';
        57: zrlMotivo.Caption := 'C�digo da multa inv�lido.';
        58: zrlMotivo.Caption := 'Data da multa inv�lida.';
        59: zrlMotivo.Caption := 'Valor/Percentual da multa inv�lido.';
        60: zrlMotivo.Caption := 'Movimento para t�tulo n�o cadastrado.';
        61: zrlMotivo.Caption := 'Alteracao da Ag�ncia cobradora/dv inv�lida.';
        62: zrlMotivo.Caption := 'Tipo de impress�o inv�lido.';
        63: zrlMotivo.Caption := 'Entrada para t�tulo j� cadastrado.';
        64: zrlMotivo.Caption := 'Numero da linha invalido.';
        65: zrlMotivo.Caption := 'Codigo do banco para debito invalido.';
        66: zrlMotivo.Caption := 'Agencia/Conta/Dv para debito inv�lido.';
        67: zrlMotivo.Caption := 'Dados para debito incompativel com a identificacao da emissao do bloqueto.';
        68: zrlMotivo.Caption := 'Movimenta��o inv�lida para o t�tulo.';
        69: zrlMotivo.Caption := 'Altera��o de dados inv�lida.';
        70: zrlMotivo.Caption := 'Apelido do cliente n�o cadastrado.';
        71: zrlMotivo.Caption := 'Erro na composi��o do arquivo.';
        72: zrlMotivo.Caption := 'Lote de servi�o inv�lido.';
        73: zrlMotivo.Caption := 'C�digo do cedente inv�lido.';
        74: zrlMotivo.Caption := 'Cedente n�o pertence a cobran�a eletr�nica/apelido n�o confere com cedente.';
        75: zrlMotivo.Caption := 'Nome da empresa inv�lido.';
        76: zrlMotivo.Caption := 'Nome do banco inv�lido.';
        77: zrlMotivo.Caption := 'C�digo da remessa inv�lido.';
        78: zrlMotivo.Caption := 'Data/Hora de gera��o do arquivo inv�lida.';
        79: zrlMotivo.Caption := 'N�mero seq�encial do arquivo inv�lido.';
        80: zrlMotivo.Caption := 'N�mero da vers�o do Layout do arquivo/lote inv�lido.';
        81: zrlMotivo.Caption := 'Literal (REMESSA-TESTE) v�lida somente para fase de testes.';
        82: zrlMotivo.Caption := 'Literal (REMESSA-TESTE) obrigat�rio para fase de testes.';
        83: zrlMotivo.Caption := 'Tipo/n�mero de inscri��o da empresa inv�lidos.';
        84: zrlMotivo.Caption := 'Tipo de opera��o inv�lido.';
        85: zrlMotivo.Caption := 'Tipo de servi�o inv�lido.';
        86: zrlMotivo.Caption := 'Forma de lan�amento inv�lido.';
        87: zrlMotivo.Caption := 'N�mero da remessa inv�lido.';
        88: zrlMotivo.Caption := 'Arquivo em Duplicidade.';
        89: zrlMotivo.Caption := 'Lote de servi�o divergente.';
        90: zrlMotivo.Caption := 'N�mero seq�encial do registro inv�lido.';
        91: zrlMotivo.Caption := 'Erro na seq��ncia de segmento do registro detalhe.';
        92: zrlMotivo.Caption := 'C�digo de movimento divergente entre grupo de segmentos.';
        93: zrlMotivo.Caption := 'Quantidade de registros no lote inv�lido.';
        94: zrlMotivo.Caption := 'Quantidade de registros no lote divergente.';
        95: zrlMotivo.Caption := 'Quantidade de lotes do arquivo inv�lido.';
        96: zrlMotivo.Caption := 'Quantidade de lotes no arquivo divergente.';
        97: zrlMotivo.Caption := 'Quantidade de registros no arquivo inv�lido.';
        98: zrlMotivo.Caption := 'Quantidade de registros no arquivo divergente.';
        99: zrlMotivo.Caption := 'Contato inexistente.';
      end;
    end
    else if CdMovimento in [6,9,17]  then //Liquidado/Baixa/Liquidado ...
    Begin
      Case CdMotivo of
        01: zrlMotivo.Caption := 'Por Saldo.';
        02: zrlMotivo.Caption := 'Por Conta.';
        03: zrlMotivo.Caption := 'No pr�prio banco.';
        04: zrlMotivo.Caption := 'Compensa��o eletr�nica.';
        05: zrlMotivo.Caption := 'Compensa��o convencional.';
        06: zrlMotivo.Caption := 'Por meio eletr�nico.';
        07: zrlMotivo.Caption := 'Apos feriado local.';
        08: zrlMotivo.Caption := 'Em cart�rio.';
        09: Begin
              sOperacao := 'BX';
              zrlMotivo.Caption := 'Comandada banco.';
            end;
        10: zrlMotivo.Caption := 'Comandada cliente arquivo.';
        11: zrlMotivo.Caption := 'Comandada Cliente on-line.';
        12: zrlMotivo.Caption := 'Decurso prazo - Cliente.';
        13: zrlMotivo.Caption := 'Decurso prazo - banco.';
      end;
    end;
  end
  else if Trim(Entidade.DadosTitulo) <> '' then //CBR454
  Begin
    //C�digo do Movimento
    CdMovimento := 1; //Entrada de T�tulos

    //Nosso N�mero
    sNossoNumero := Trim(Copy(Entidade.DadosTitulo, 182, 11));

    //Numero Empresa
    sNumeroEmpresa := Trim(Copy(Entidade.DadosTitulo, 194, 15));

    //Valor do T�tulo
    sValorTitulo := Trim(Copy(Entidade.DadosTitulo, 226, 15));

    //Data Vencimento
    sVencimento := Copy(Entidade.DadosTitulo, 173, 2)+'/'+ //Dia
                   Copy(Entidade.DadosTitulo, 175, 2)+'/'+ //Mes
                   '20'+Copy(Entidade.DadosTitulo, 177, 2);     //Ano

    //Nome do Sacado
    sNomeSacado := Trim(Copy(Entidade.DadosTitulo, 19, 60));

    case CdMovimento of
      01: sOperacao := 'Entrada de Titulos.';
      02: sOperacao := 'Pedido de Baixa.';
      04: sOperacao := 'Concessao de Abatimento.';
      05: sOperacao := 'Cancelamento de Abatimento.';
      06: sOperacao := 'Alteracao de Vencimento.';
      07: sOperacao := 'Concessao de Desconto.';
      08: sOperacao := 'Cancelamento de Desconto.';
      09: sOperacao := 'Protestar.';
      10: sOperacao := 'Cancela/Sustacao da Instrucao de protesto';
      30: sOperacao := 'Recusa da Alegacao do Sacado.';
      31: sOperacao := 'Alteracao de Outros Dados.';
    end;
  end
  else //Diferente de CBR454 (Modelo Antigo)
  Begin
    //C�digo do Movimento
    if (Trim(Copy(Entidade.SegmentoP, 16, 2)) <> '') then
      CdMovimento := StrToInt(Trim(Copy(Entidade.SegmentoP, 16, 2)));

    //Nosso N�mero
    sNossoNumero := Trim(Copy(Entidade.SegmentoP, 38, 12));

    //Numero Empresa
    sNumeroEmpresa := Trim(Copy(Entidade.SegmentoP, 63, 10));

    //Valor do T�tulo
    sValorTitulo := Trim(Copy(Entidade.SegmentoP, 86, 15));

    //Data Vencimento
    sVencimento := Copy(Entidade.SegmentoP, 78, 2)+'/'+ //Dia
                   Copy(Entidade.SegmentoP, 80, 2)+'/'+ //Mes
                   Copy(Entidade.SegmentoP, 82, 4);     //Ano

//    //Data Opera��o (Data da Ocorr�ncia)
//    if (Copy(Entidade.SegmentoP, 138, 8) <> '00000000') then
//      sDtOperacao := Copy(Entidade.SegmentoP, 138, 2)+'/'+ //Dia
//                     Copy(Entidade.SegmentoP, 140, 2)+'/'+ //Mes
//                     Copy(Entidade.SegmentoP, 142, 4);     //Ano

    //Nome do Sacado
    sNomeSacado := Trim(Copy(Entidade.SegmentoQ, 34, 40));

    case CdMovimento of
      01: sOperacao := 'Entrada de Titulos.';
      02: sOperacao := 'Pedido de Baixa.';
      04: sOperacao := 'Concessao de Abatimento.';
      05: sOperacao := 'Cancelamento de Abatimento.';
      06: sOperacao := 'Alteracao de Vencimento.';
      07: sOperacao := 'Concessao de Desconto.';
      08: sOperacao := 'Cancelamento de Desconto.';
      09: sOperacao := 'Protestar.';
      10: sOperacao := 'Cancela/Sustacao da Instrucao de protesto';
      30: sOperacao := 'Recusa da Alegacao do Sacado.';
      31: sOperacao := 'Alteracao de Outros Dados.';
    end;
  end;

  zrlCodigoOperacao.Caption := sOperacao;

  if Length(sNossoNumero) = 12 then
    sNossoNumero := Copy(sNossoNumero, 1, 11) + '-' + Copy(sNossoNumero, 12, 1);
  zrlNossoNumero.Caption := sNossoNumero;

  zrlNumeroEmpresa.Caption := sNumeroEmpresa;

  zrlNomeSacado.Caption := sNomeSacado;

  zrlDataVencimento.Caption := sVencimento;

  zrlDataOperacao.Caption := sDtOperacao;

  zrlValorTitulo.Caption := format('%.2f',[StringReal(sValorTitulo)]);

  if Entidade.Tipo = 1 then //Entrada
  Begin
    if (StringReal(sLiquido) = 0) and
       (StringReal(sTarifa) > 0) then
    Begin
      sDC := 'D';
      zrlValorLiquido.Caption := format('%.2f',[StringReal(sTarifa)]);
    end
    else
    Begin
      zrlValorLiquido.Caption := format('%.2f',[StringReal(sLiquido)]);
      if CdMovimento in [6] then //Liquidacao
        sDC := '*'
      else
        sDC := '';
    end;

    //Banco Rec
    sBancoRec := Trim(Copy(Entidade.SegmentoU, 211, 3));
    if (sBancoRec = '000') or
       (sBancoRec = '') then
      sBancoRec := ''
    else
      PreencheZero(3, sBancoRec);

  end
  else
    zrlValorLiquido.Caption := '';

  zrlTarifa.Caption := format('%.2f',[StringReal(sTarifa)]);

  zrlAcrescimo.Caption := format('%.2f',[StringReal(sAcrescimo)]);

  zrlAbatimentoDesconto.Caption := format('%.2f',[StringReal(sAbatDesc)]);

  zrlDC.Caption := sDC;

  zrlBancoRec.Caption := sBancoRec;
end;

procedure Trpt_RegistroBoleto.SZRGroup1BeforePrint(Sender: TObject;
  var DoPrint: Boolean);
begin
  iQtdRegistrado := 0;
  iQtdLiquidado  := 0;
  iQtdRecebido   := 0;
  iQtdTarifa     := 0;

  vValorRegistrado := 0;
  vValorLiquidado  := 0;
  vValorRecebido   := 0;
  vValorTarifa     := 0;
end;

procedure Trpt_RegistroBoleto.zrbRodapeGrupoBeforePrint(Sender: TObject;
  var DoPrint: Boolean);
begin
  //Registrado
  zrlQtdRegistrado.Caption   := IntToStr(iQtdRegistrado);
  zrlTotalRegistrado.Caption := format('%.2f',[vValorRegistrado]);

  //Liquidado
  zrlQtdLiquidado.Caption   := IntToStr(iQtdLiquidado);
  zrlTotalLiquidado.Caption := format('%.2f',[vValorLiquidado]);

  //Valor Recebido
  zrlQtdValorRecebido.Caption   := IntToStr(iQtdRecebido);
  zrlTotalValorRecebido.Caption := format('%.2f',[vValorRecebido]);

  //Tarifas
  zrlQtdTarifas.Caption   := IntToStr(iQtdTarifa);
  zrlTotalTarifas.Caption := format('%.2f',[vValorTarifa]);
end;

end.
