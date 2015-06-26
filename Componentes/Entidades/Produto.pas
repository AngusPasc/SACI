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
unit Produto;

interface

uses WinTypes, WinProcs, Messages, SysUtils, Classes, Controls, 
     Forms, Graphics, Squery, Dbtables, Dialogs, Db, Stdctrls, 
     Mask, Dbctrls, Configuracao, Dbgrids, Produto_por_Fornecedor, 
     Funcoes, {ImpFiscalNova, }Extctrls, Variants;

type
  TProduto = class(TSQuery)
    private
      { Private fields of TProduto }
        { Storage for property ArquivoDeEtiquetas }
        FArquivoDeEtiquetas : String;
        { Storage for property BaseReal }
        FBaseReal : Double;
        { Storage for property CProduto_por_Fornecedor }
        FCProduto_por_Fornecedor : TProduto_por_Fornecedor;
        { Storage for property Caracteristica }
        FCaracteristica : String;
        FNCM : String;
        { Storage for property Catalogo }
        FCatalogo : Boolean;
        { Storage for property Classificacao }
        FClassificacao : Integer;
        { Storage for property CodigoCLF }
        FCodigoCLF : Integer;
        { Storage for property CodigoCNC }
        FCodigoCNC : Integer;
        { Storage for property CodigoCTP }
        FCodigoCTP : Integer;
        { Storage for property CodigoFOR }
        FCodigoFOR : Integer;
        { Storage for property CodigoGRP }
        FCodigoGRP : Integer;
        { Storage for property CodigoORF }
        FCodigoORF : Integer;
        { Storage for property CodigoPRD }
        FCodigoPRD : Integer;
        { Storage for property CodigoSGP }
        FCodigoSGP : Integer;
        { Storage for property CodigoUSU }
        FCodigoUSU : Integer;
        { Storage for property Comissao }
        FComissao : Double;
        { Storage for property Custo }
        FCusto : Double;
        { Storage for property DataAlterado }
        FDataAlterado : TDateTime;
        { Storage for property DataCadastro }
        FDataCadastro : TDateTime;
        { Storage for property Descricao }
        FDescricao : String;
        { Storage for property Detalhe }
        FDetalhe : String;
        { Storage for property Dtultcompra }
        FDtultcompra : Tdatetime;
        { Storage for property EBaseReal }
        FEBaseReal : TEdit;
        { Storage for property ECaracteristica }
        FECaracteristica : TEdit;
        FENCM : TEdit;
        { Storage for property ECatalogo }
        FECatalogo : TCheckBox;
        { Storage for property EClassificacao }
        FEClassificacao : TDBLookupComboBox;
        { Storage for property ECodigoCLF }
        FECodigoCLF : TDBLookupComboBox;
        { Storage for property ECodigoCTP }
        FECodigoCTP : TDBLookupComboBox;
        { Storage for property ECodigoFOR }
        FECodigoFOR : TEdit;
        { Storage for property ECodigoGRP }
        FECodigoGRP : TDBLookupComboBox;
        { Storage for property ECodigoORF }
        FECodigoORF : TDBLookupComboBox;
        { Storage for property ECodigoPRD }
        FECodigoPRD : TEdit;
        { Storage for property ECodigoSGP }
        FECodigoSGP : TDBLookupComboBox;
        { Storage for property EComissao }
        FEComissao : TEdit;
        { Storage for property ECusto }
        FECusto : TEdit;
        { Storage for property EDbgrid }
        FEDbgrid : TDBGrid;
        { Storage for property EDescricao }
        FEDescricao : TEdit;
        { Storage for property EDetalhe }
        FEDetalhe : TEdit;
        { Storage for property EDtultcompra }
        FEDtultcompra : TMaskEdit;
        { Storage for property EEstmedio }
        FEEstmedio : TEdit;
        { Storage for property EEstminimo }
        FEEstminimo : TEdit;
        { Storage for property EEstoqueDetalhado }
        FEEstoqueDetalhado : TCheckBox;
        { Storage for property EForaDeLinha }
        FEForaDeLinha : Tcheckbox;
        { Storage for property EForaPrevisao }
        FEForaPrevisao : Tcheckbox;
        { Storage for property EForaTabela }
        FEForaTabela : Tcheckbox;
        { Storage for property EFoto }
        FEFoto : TImage;
        { Storage for property EInsumo }
        FEInsumo : TCheckBox;
        { Storage for property ELocal }
        FELocal : TEdit;
        { Storage for property EMarca }
        FEMarca : TEdit;
        { Storage for property ENivel }
        FENivel : TEdit;
        { Storage for property EObs }
        FEObs : TEdit;
        { Storage for property EPesoLiquido }
        FEPesoLiquido : TEdit;
        { Storage for property EPrecocompra }
        FEPrecocompra : TEdit;
        { Storage for property EPrecomedio }
        FEPrecomedio : TEdit;
        { Storage for property EPrecovenda }
        FEPrecovenda : TEdit;
        { Storage for property EPrevisao }
        FEPrevisao : TEdit;
        { Storage for property EReferencia }
        FEReferencia : TEdit;
        { Storage for property ESituacao }
        FESituacao : TComboBox;
        { Storage for property ETempoMedio }
        FETempoMedio : TEdit;
        { Storage for property EUnidade }
        FEUnidade : TEdit;
        { Storage for property Estmedio }
        FEstmedio : Double;
        { Storage for property Estminimo }
        FEstminimo : Double;
        { Storage for property EstoqueDetalhado }
        FEstoqueDetalhado : Boolean;
        { Storage for property ForaDeLinha }
        FForaDeLinha : Boolean;
        { Storage for property ForaPrevisao }
        FForaPrevisao : Boolean;
        { Storage for property ForaTabela }
        FForaTabela : Boolean;
        { Storage for property Insumo }
        FInsumo : Boolean;
        { Storage for property Local }
        FLocal : String;
        { Storage for property Marca }
        FMarca : String;
        { Storage for property Nivel }
        FNivel : Integer;
        { Storage for property Obs }
        FObs : String;
        { Storage for property PesoLiquido }
        FPesoLiquido : Double;
        { Storage for property Precocompra }
        FPrecocompra : Double;
        { Storage for property Precomedio }
        FPrecomedio : Double;
        { Storage for property Precovenda }
        FPrecovenda : Double;
        { Storage for property Previsao }
        FPrevisao : Integer;
        { Storage for property Referencia }
        FReferencia : String;
        { Storage for property Servico }
        FServico : Boolean;
        { Storage for property Situacao }
        FSituacao : Integer;
        { Storage for property TempoMedio }
        FTempoMedio : Integer;
        { Storage for property Unidade }
        FUnidade : String;

      { Private methods of TProduto }
        { Method to set variable and property values and create objects }
        procedure AutoInitialize;
        { Method to free any objects created by AutoInitialize }
        procedure AutoDestroy;
        { Read method for property BaseReal }
        function GetBaseReal : Double;
        { Write method for property BaseReal }
        procedure SetBaseReal(Value : Double);
        { Read method for property Caracteristica }
        function GetCaracteristica : String;
        { Write method for property Caracteristica }
        procedure SetCaracteristica(Value : String);
        function GetNCM : String;
        procedure SetNCM(Value : String);
        { Read method for property Catalogo }
        function GetCatalogo : Boolean;
        { Write method for property Catalogo }
        procedure SetCatalogo(Value : Boolean);
        { Read method for property Classificacao }
        function GetClassificacao : Integer;
        { Write method for property Classificacao }
        procedure SetClassificacao(Value : Integer);
        { Read method for property CodigoCLF }
        function GetCodigoCLF : Integer;
        { Write method for property CodigoCLF }
        procedure SetCodigoCLF(Value : Integer);
        { Read method for property CodigoCNC }
        function GetCodigoCNC : Integer;
        { Write method for property CodigoCNC }
        procedure SetCodigoCNC(Value : Integer);
        { Read method for property CodigoCTP }
        function GetCodigoCTP : Integer;
        { Write method for property CodigoCTP }
        procedure SetCodigoCTP(Value : Integer);
        { Read method for property CodigoFOR }
        function GetCodigoFOR : Integer;
        { Write method for property CodigoFOR }
        procedure SetCodigoFOR(Value : Integer);
        { Read method for property CodigoGRP }
        function GetCodigoGRP : Integer;
        { Write method for property CodigoGRP }
        procedure SetCodigoGRP(Value : Integer);
        { Read method for property CodigoORF }
        function GetCodigoORF : Integer;
        { Write method for property CodigoORF }
        procedure SetCodigoORF(Value : Integer);
        { Read method for property CodigoPRD }
        function GetCodigoPRD : Integer;
        { Write method for property CodigoPRD }
        procedure SetCodigoPRD(Value : Integer);
        { Read method for property CodigoSGP }
        function GetCodigoSGP : Integer;
        { Write method for property CodigoSGP }
        procedure SetCodigoSGP(Value : Integer);
        { Read method for property CodigoUSU }
        function GetCodigoUSU : Integer;
        { Write method for property CodigoUSU }
        procedure SetCodigoUSU(Value : Integer);
        { Read method for property Comissao }
        function GetComissao : Double;
        { Write method for property Comissao }
        procedure SetComissao(Value : Double);
        { Read method for property Custo }
        function GetCusto : Double;
        { Write method for property Custo }
        procedure SetCusto(Value : Double);
        { Read method for property DataAlterado }
        function GetDataAlterado : TDateTime;
        { Write method for property DataAlterado }
        procedure SetDataAlterado(Value : TDateTime);
        { Read method for property DataCadastro }
        function GetDataCadastro : TDateTime;
        { Write method for property DataCadastro }
        procedure SetDataCadastro(Value : TDateTime);
        { Read method for property Descricao }
        function GetDescricao : String;
        { Write method for property Descricao }
        procedure SetDescricao(Value : String);
        { Read method for property Detalhe }
        function GetDetalhe : String;
        { Write method for property Detalhe }
        procedure SetDetalhe(Value : String);
        { Read method for property Dtultcompra }
        function GetDtultcompra : Tdatetime;
        { Write method for property Dtultcompra }
        procedure SetDtultcompra(Value : Tdatetime);
        { Read method for property Estmedio }
        function GetEstmedio : Double;
        { Write method for property Estmedio }
        procedure SetEstmedio(Value : Double);
        { Read method for property Estminimo }
        function GetEstminimo : Double;
        { Write method for property Estminimo }
        procedure SetEstminimo(Value : Double);
        { Read method for property EstoqueDetalhado }
        function GetEstoqueDetalhado : Boolean;
        { Write method for property EstoqueDetalhado }
        procedure SetEstoqueDetalhado(Value : Boolean);
        { Read method for property ForaDeLinha }
        function GetForaDeLinha : Boolean;
        { Write method for property ForaDeLinha }
        procedure SetForaDeLinha(Value : Boolean);
        { Read method for property ForaPrevisao }
        function GetForaPrevisao : Boolean;
        { Write method for property ForaPrevisao }
        procedure SetForaPrevisao(Value : Boolean);
        { Read method for property ForaTabela }
        function GetForaTabela : Boolean;
        { Write method for property ForaTabela }
        procedure SetForaTabela(Value : Boolean);
        { Read method for property Insumo }
        function GetInsumo : Boolean;
        { Write method for property Insumo }
        procedure SetInsumo(Value : Boolean);
        { Read method for property Local }
        function GetLocal : String;
        { Write method for property Local }
        procedure SetLocal(Value : String);
        { Read method for property Marca }
        function GetMarca : String;
        { Write method for property Marca }
        procedure SetMarca(Value : String);
        { Read method for property Nivel }
        function GetNivel : Integer;
        { Write method for property Nivel }
        procedure SetNivel(Value : Integer);
        { Read method for property Obs }
        function GetObs : String;
        { Write method for property Obs }
        procedure SetObs(Value : String);
        { Read method for property PesoLiquido }
        function GetPesoLiquido : Double;
        { Write method for property PesoLiquido }
        procedure SetPesoLiquido(Value : Double);
        { Read method for property Precocompra }
        function GetPrecocompra : Double;
        { Write method for property Precocompra }
        procedure SetPrecocompra(Value : Double);
        { Read method for property Precomedio }
        function GetPrecomedio : Double;
        { Write method for property Precomedio }
        procedure SetPrecomedio(Value : Double);
        { Read method for property Precovenda }
        function GetPrecovenda : Double;
        { Write method for property Precovenda }
        procedure SetPrecovenda(Value : Double);
        { Read method for property Previsao }
        function GetPrevisao : Integer;
        { Write method for property Previsao }
        procedure SetPrevisao(Value : Integer);
        { Read method for property Referencia }
        function GetReferencia : String;
        { Write method for property Referencia }
        procedure SetReferencia(Value : String);
        { Read method for property Servico }
        function GetServico : Boolean;
        { Write method for property Servico }
        procedure SetServico(Value : Boolean);
        { Read method for property Situacao }
        function GetSituacao : Integer;
        { Write method for property Situacao }
        procedure SetSituacao(Value : Integer);
        { Read method for property TempoMedio }
        function GetTempoMedio : Integer;
        { Write method for property TempoMedio }
        procedure SetTempoMedio(Value : Integer);
        { Read method for property Unidade }
        function GetUnidade : String;
        { Write method for property Unidade }
        procedure SetUnidade(Value : String);

    protected
      { Protected fields of TProduto }
        FEtiquetas : TextFile;

      { Protected methods of TProduto }
        { Resets prop of component type if referenced component deleted }
        procedure Notification(AComponent : TComponent; Operation : TOperation); override;

    public
      { Public fields and properties of TProduto }

      { Public methods of TProduto }
        procedure AdicionaEtiqueta(Produto:Integer;Preco:Real;Qtde:Integer;PDesc,PReferencia,PDetalhe,PCaracteristica,PMarca:string;PCodBarras:string='';PUmaPorQtd:Boolean=False;PAspas:Boolean=False);
        function AlterarAuto:Boolean;
        procedure AtualizaControles(Habilitar:Boolean);
        procedure CancelaEdicao;
        procedure CarregaDados;
        constructor Create(AOwner: TComponent); override;
        function Deletar(CdCNC,CDPRD:Integer):Boolean;
        destructor Destroy; override;
        procedure FechaEtiquetas;
        function FinalizaEdicao(PServico:Boolean=False):Boolean;
        { Insere um Produto }
        function Inserir(CdPRD,PCdFOR,PCdCTP,PCdSGP,PCdGRP,PCdCLF,PCdORf: integer;PInsumo:boolean;PDescricao,PLocal,PUnidade,PMarca,PReferencia,PDetalhe:string;PCusto,PPrecocompra,PPrecomedio,PPrecovenda,PEstminimo,PEstmedio,PComissao:Double;PDtcompra:TDateTime):boolean;
        function InserirAuto(PServico:Boolean=False):Boolean;
        procedure LimpaCampos(PServico: Boolean=False);
        procedure LimpaEtiquetas;
        { Localiza um Produto }
        function LocalizarCod(CDPRD:Integer):Boolean;
        procedure PreparaAlteracao;
        procedure PreparaInsercao(PServico: Boolean=False);
        function deletarauto:Boolean;

    published
      { Published properties of TProduto }
        property ArquivoDeEtiquetas : String
             read FArquivoDeEtiquetas write FArquivoDeEtiquetas;
        property BaseReal : Double read GetBaseReal write SetBaseReal;
        property CProduto_por_Fornecedor : TProduto_por_Fornecedor
             read FCProduto_por_Fornecedor write FCProduto_por_Fornecedor;
        property Caracteristica : String read GetCaracteristica write SetCaracteristica;
        property NCM : String read GetNCM write SetNCM;
        property Catalogo : Boolean read GetCatalogo write SetCatalogo;
        property Classificacao : Integer
             read GetClassificacao write SetClassificacao;
        property CodigoCLF : Integer read GetCodigoCLF write SetCodigoCLF;
        property CodigoCNC : Integer read GetCodigoCNC write SetCodigoCNC;
        property CodigoCTP : Integer read GetCodigoCTP write SetCodigoCTP;
        property CodigoFOR : Integer read GetCodigoFOR write SetCodigoFOR;
        property CodigoGRP : Integer read GetCodigoGRP write SetCodigoGRP;
        property CodigoORF : Integer read GetCodigoORF write SetCodigoORF;
        { C�digo do Cliente }
        property CodigoPRD : Integer read GetCodigoPRD write SetCodigoPRD;
        property CodigoSGP : Integer read GetCodigoSGP write SetCodigoSGP;
        property CodigoUSU : Integer read GetCodigoUSU write SetCodigoUSU;
        property Comissao : Double read GetComissao write SetComissao;
        property Custo : Double read GetCusto write SetCusto;
        property DataAlterado : TDateTime
             read GetDataAlterado write SetDataAlterado;
        property DataCadastro : TDateTime
             read GetDataCadastro write SetDataCadastro;
        property Descricao : String read GetDescricao write SetDescricao;
        property Detalhe : String read GetDetalhe write SetDetalhe;
        property Dtultcompra : Tdatetime
             read GetDtultcompra write SetDtultcompra;
        property EBaseReal : TEdit read FEBaseReal write FEBaseReal;
        property ECaracteristica : TEdit read FECaracteristica write FECaracteristica;
        property ENCM : TEdit read FENCM write FENCM;
        property ECatalogo : TCheckBox read FECatalogo write FECatalogo;
        property EClassificacao : TDBLookupComboBox
             read FEClassificacao write FEClassificacao;
        property ECodigoCLF : TDBLookupComboBox
             read FECodigoCLF write FECodigoCLF;
        property ECodigoCTP : TDBLookupComboBox
             read FECodigoCTP write FECodigoCTP;
        property ECodigoFOR : TEdit read FECodigoFOR write FECodigoFOR;
        property ECodigoGRP : TDBLookupComboBox
             read FECodigoGRP write FECodigoGRP;
        property ECodigoORF : TDBLookupComboBox
             read FECodigoORF write FECodigoORF;
        property ECodigoPRD : TEdit read FECodigoPRD write FECodigoPRD;
        property ECodigoSGP : TDBLookupComboBox
             read FECodigoSGP write FECodigoSGP;
        property EComissao : TEdit read FEComissao write FEComissao;
        property ECusto : TEdit read FECusto write FECusto;
        property EDbgrid : TDBGrid read FEDbgrid write FEDbgrid;
        property EDescricao : TEdit read FEDescricao write FEDescricao;
        property EDetalhe : TEdit read FEDetalhe write FEDetalhe;
        property EDtultcompra : TMaskEdit
             read FEDtultcompra write FEDtultcompra;
        property EEstmedio : TEdit read FEEstmedio write FEEstmedio;
        property EEstminimo : TEdit read FEEstminimo write FEEstminimo;
        property EEstoqueDetalhado : TCheckBox
             read FEEstoqueDetalhado write FEEstoqueDetalhado;
        property EForaDeLinha : Tcheckbox
             read FEForaDeLinha write FEForaDeLinha;
        property EForaPrevisao : Tcheckbox
             read FEForaPrevisao write FEForaPrevisao;
        property EForaTabela : Tcheckbox read FEForaTabela write FEForaTabela;
        property EFoto : TImage read FEFoto write FEFoto;
        property EInsumo : TCheckBox read FEInsumo write FEInsumo;
        property ELocal : TEdit read FELocal write FELocal;
        property EMarca : TEdit read FEMarca write FEMarca;
        property ENivel : TEdit read FENivel write FENivel;
        property EObs : TEdit read FEObs write FEObs;
        property EPesoLiquido : TEdit read FEPesoLiquido write FEPesoLiquido;
        property EPrecocompra : TEdit read FEPrecocompra write FEPrecocompra;
        property EPrecomedio : TEdit read FEPrecomedio write FEPrecomedio;
        property EPrecovenda : TEdit read FEPrecovenda write FEPrecovenda;
        property EPrevisao : TEdit read FEPrevisao write FEPrevisao;
        property EReferencia : TEdit read FEReferencia write FEReferencia;
        property ESituacao : TComboBox read FESituacao write FESituacao;
        property ETempoMedio : TEdit read FETempoMedio write FETempoMedio;
        property EUnidade : TEdit read FEUnidade write FEUnidade;
        property Estmedio : Double read GetEstmedio write SetEstmedio;
        property Estminimo : Double read GetEstminimo write SetEstminimo;
        property EstoqueDetalhado : Boolean
             read GetEstoqueDetalhado write SetEstoqueDetalhado;
        property ForaDeLinha : Boolean
             read GetForaDeLinha write SetForaDeLinha;
        property ForaPrevisao : Boolean
             read GetForaPrevisao write SetForaPrevisao;
        property ForaTabela : Boolean read GetForaTabela write SetForaTabela;
        property Insumo : Boolean read GetInsumo write SetInsumo;
        property Local : String read GetLocal write SetLocal;
        property Marca : String read GetMarca write SetMarca;
        property Nivel : Integer read GetNivel write SetNivel;
        property Obs : String read GetObs write SetObs;
        property PesoLiquido : Double read GetPesoLiquido write SetPesoLiquido;
        property Precocompra : Double read GetPrecocompra write SetPrecocompra;
        property Precomedio : Double read GetPrecomedio write SetPrecomedio;
        property Precovenda : Double read GetPrecovenda write SetPrecovenda;
        property Previsao : Integer read GetPrevisao write SetPrevisao;
        property Referencia : String read GetReferencia write SetReferencia;
        property Servico : Boolean read GetServico write SetServico;
        property Situacao : Integer read GetSituacao write SetSituacao;
        property TempoMedio : Integer read GetTempoMedio write SetTempoMedio;
        property Unidade : String read GetUnidade write SetUnidade;

  end;

procedure Register;

implementation

procedure Register;
begin
     { Register TProduto with Softech as its
       default page on the Delphi component palette }
     RegisterComponents('Softech', [TProduto]);
end;

{ Method to set variable and property values and create objects }
procedure TProduto.AutoInitialize;
begin
     FEBaseReal := nil;
     FECaracteristica := nil;
     FENCM := nil;
     FECatalogo := nil;
     FEClassificacao := nil;
     FECodigoCLF := nil;
     FECodigoCTP := nil;
     FECodigoFOR := nil;
     FECodigoGRP := nil;
     FECodigoORF := nil;
     FECodigoPRD := nil;
     FECodigoSGP := nil;
     FEComissao := nil;
     FECusto := nil;
     FEDbgrid := nil;
     FEDescricao := nil;
     FEDetalhe := nil;
     FEDtultcompra := nil;
     FEEstmedio := nil;
     FEEstminimo := nil;
     FEEstoqueDetalhado := nil;
     FEForaDeLinha := nil;
     FEForaPrevisao := nil;
     FEForaTabela := nil;
     FEFoto := nil;
     FEInsumo := nil;
     FELocal := nil;
     FEMarca := nil;
     FENivel := nil;
     FEObs := nil;
     FEPesoLiquido := nil;
     FEPrecocompra := nil;
     FEPrecomedio := nil;
     FEPrecovenda := nil;
     FEPrevisao := nil;
     FEReferencia := nil;
     FESituacao := nil;
     FETempoMedio := nil;
     FEUnidade := nil;
end; { of AutoInitialize }

{ Resets prop of component type if referenced component deleted }
procedure TProduto.Notification(AComponent : TComponent; Operation : TOperation);
begin
     inherited Notification(AComponent, Operation);
     if Operation <> opRemove then
        Exit;
     { Has a component referenced by a property of 
       this component been deleted?  If so, update 
       the property. }
     if AComponent = FEBaseReal then
        FEBaseReal := nil;
     if AComponent = FECaracteristica then
        FECaracteristica := nil;
     if AComponent = FENCM then
        FENCM := nil;
     if AComponent = FECatalogo then
        FECatalogo := nil;
     if AComponent = FEClassificacao then
        FEClassificacao := nil;
     if AComponent = FECodigoCLF then
        FECodigoCLF := nil;
     if AComponent = FECodigoCTP then
        FECodigoCTP := nil;
     if AComponent = FECodigoFOR then
        FECodigoFOR := nil;
     if AComponent = FECodigoGRP then
        FECodigoGRP := nil;
     if AComponent = FECodigoORF then
        FECodigoORF := nil;
     if AComponent = FECodigoPRD then
        FECodigoPRD := nil;
     if AComponent = FECodigoSGP then
        FECodigoSGP := nil;
     if AComponent = FEComissao then
        FEComissao := nil;
     if AComponent = FECusto then
        FECusto := nil;
     if AComponent = FEDbgrid then
        FEDbgrid := nil;
     if AComponent = FEDescricao then
        FEDescricao := nil;
     if AComponent = FEDetalhe then
        FEDetalhe := nil;
     if AComponent = FEDtultcompra then
        FEDtultcompra := nil;
     if AComponent = FEEstmedio then
        FEEstmedio := nil;
     if AComponent = FEEstminimo then
        FEEstminimo := nil;
     if AComponent = FEEstoqueDetalhado then
        FEEstoqueDetalhado := nil;
     if AComponent = FEForaDeLinha then
        FEForaDeLinha := nil;
     if AComponent = FEForaPrevisao then
        FEForaPrevisao := nil;
     if AComponent = FEForaTabela then
        FEForaTabela := nil;
     if AComponent = FEFoto then
        FEFoto := nil;
     if AComponent = FEInsumo then
        FEInsumo := nil;
     if AComponent = FELocal then
        FELocal := nil;
     if AComponent = FEMarca then
        FEMarca := nil;
     if AComponent = FENivel then
        FENivel := nil;
     if AComponent = FEObs then
        FEObs := nil;
     if AComponent = FEPesoLiquido then
        FEPesoLiquido := nil;
     if AComponent = FEPrecocompra then
        FEPrecocompra := nil;
     if AComponent = FEPrecomedio then
        FEPrecomedio := nil;
     if AComponent = FEPrecovenda then
        FEPrecovenda := nil;
     if AComponent = FEPrevisao then
        FEPrevisao := nil;
     if AComponent = FEReferencia then
        FEReferencia := nil;
     if AComponent = FESituacao then
        FESituacao := nil;
     if AComponent = FETempoMedio then
        FETempoMedio := nil;
     if AComponent = FEUnidade then
        FEUnidade := nil;
end;

{ Method to free any objects created by AutoInitialize }
procedure TProduto.AutoDestroy;
begin
     { No objects from AutoInitialize to free }
end; { of AutoDestroy }

{ Read method for property BaseReal }
function TProduto.GetBaseReal : Double;
begin
  try
    Result := Self.fieldByName('PRD_BASE_REAL').asFloat;
  except
    result:= 0;
  end;
end;

{ Write method for property BaseReal }
procedure TProduto.SetBaseReal(Value : Double);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      Self.fieldByName('PRD_BASE_REAL').asFloat := Value;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "PRD_BASE_REAL"!');
    end;
end;

{ Read method for property Caracteristica }
function TProduto.GetCaracteristica : String;
begin
  try
    Result := Self.fieldByName('PRD_CARACTERISTICA').asString;
  except
    result:= ''
  end;
end;

{ Write method for property Caracteristica }
procedure TProduto.SetCaracteristica(Value : String);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
  try
    Self.fieldByName('PRD_CARACTERISTICA').asString := Value;
  except
    ShowMessage('N�o foi poss�vel alterar o campo "PRD_CARACTERISTICA"!');
  end;
end;

{ Read method for property Catalogo }
function TProduto.GetCatalogo : Boolean;
begin
  try
    result := (Self.fieldByName('PRD_CATALOGO').asInteger=1);
  except
    result := False;
  end;
end;

{ Write method for property Catalogo }
procedure TProduto.SetCatalogo(Value : Boolean);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      if Value=True then
        Self.fieldByName('PRD_CATALOGO').asInteger := 1
      else
        Self.fieldByName('PRD_CATALOGO').asInteger := 0;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "PRD_CATALOGO"!');
    end;
end;

{ Read method for property Classificacao }
function TProduto.GetClassificacao : Integer;
begin
  try
    Result := Self.fieldByName('PRD_CLASSIFICACAO').asInteger;
  except
    result:= 0;
  end;
end;

{ Write method for property Classificacao }
procedure TProduto.SetClassificacao(Value : Integer);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      Self.fieldByName('PRD_CLASSIFICACAO').asInteger := Value;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "PRD_CLASSIFICACAO"!');
    end;
end;

{ Read method for property CodigoCLF }
function TProduto.GetCodigoCLF : Integer;
begin
  try
    Result := Self.fieldByName('CLF_CODIGO').asInteger;
  except
    result:= 0;
  end;
end;

{ Write method for property CodigoCLF }
procedure TProduto.SetCodigoCLF(Value : Integer);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      Self.fieldByName('CLF_CODIGO').asInteger := Value;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "CLF_CODIGO"!');
    end;
end;


{ Read method for property CodigoCNC }
function TProduto.GetCodigoCNC : Integer;
begin
  try
    Result := Self.fieldByName('CNC_CODIGO').asInteger;
  except
    result:= 0
  end;
end;

{ Write method for property CodigoCNC }
procedure TProduto.SetCodigoCNC(Value : Integer);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      Self.fieldByName('CNC_CODIGO').asInteger := Value;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "CNC_CODIGO"!');
    end;
end;

{ Read method for property CodigoCTP }
function TProduto.GetCodigoCTP : Integer;
begin
  try
    Result := Self.fieldByName('CTP_CODIGO').asInteger;
  except
    result:= 0
  end;
end;

{ Write method for property CodigoCTP }
procedure TProduto.SetCodigoCTP(Value : Integer);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      Self.fieldByName('CTP_CODIGO').asInteger := Value;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "CTP_CODIGO"!');
    end;
end;

{ Read method for property CodigoFOR }
function TProduto.GetCodigoFOR : Integer;
begin
  try
    Result := Self.fieldByName('FOR_CODIGO').asInteger;
  except
    result:= 0
  end;
end;

{ Write method for property CodigoFOR }
procedure TProduto.SetCodigoFOR(Value : Integer);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      Self.fieldByName('FOR_CODIGO').asInteger := Value;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "FOR_CODIGO"!');
    end;
end;

{ Read method for property CodigoGRP }
function TProduto.GetCodigoGRP : Integer;
begin
  try
    Result := Self.fieldByName('GRP_CODIGO').asInteger;
  except
    result:= 0
  end;
end;

{ Write method for property CodigoGRP }
procedure TProduto.SetCodigoGRP(Value : Integer);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      Self.fieldByName('GRP_CODIGO').asInteger := Value;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "GRP_CODIGO"!');
    end;
end;

{ Read method for property CodigoORF }
function TProduto.GetCodigoORF : Integer;
begin
  try
    Result := Self.fieldByName('ORF_CODIGO').asInteger;
  except
    result:= 0
  end;
end;

{ Write method for property CodigoORF }
procedure TProduto.SetCodigoORF(Value : Integer);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      Self.fieldByName('ORF_CODIGO').asInteger := Value;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "ORF_CODIGO"!');
    end;
end;

{ Read method for property CodigoPRD }
function TProduto.GetCodigoPRD : Integer;
begin
  try
    Result := Self.fieldByName('PRD_CODIGO').asInteger;
  except
    result:= 0
  end;
end;

{ Write method for property CodigoPRD }
procedure TProduto.SetCodigoPRD(Value : Integer);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      Self.fieldByName('PRD_CODIGO').asInteger := Value;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "PRD_CODIGO"!');
    end;
end;

{ Read method for property CodigoSGP }
function TProduto.GetCodigoSGP : Integer;
begin
  try
    Result := Self.fieldByName('SGP_CODIGO').asInteger;
  except
    result:= 0
  end;
end;

{ Write method for property CodigoSGP }
procedure TProduto.SetCodigoSGP(Value : Integer);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      Self.fieldByName('SGP_CODIGO').asInteger := Value;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "SGP_CODIGO"!');
    end;
end;

{ Read method for property CodigoUSU }
function TProduto.GetCodigoUSU : Integer;
begin
  try
    Result := Self.fieldByName('USU_CODIGO').asInteger;
  except
    result:= 0
  end;
end;

{ Write method for property CodigoUSU }
procedure TProduto.SetCodigoUSU(Value : Integer);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      Self.fieldByName('USU_CODIGO').asInteger := Value;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "USU_CODIGO"!');
    end;
end;

{ Read method for property Comissao }
function TProduto.GetComissao : Double;
begin
  try
    Result := Self.fieldByName('PRD_COMISSAO').asFloat;
  except
    result:= 0
  end;
end;

{ Write method for property Comissao }
procedure TProduto.SetComissao(Value : Double);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      Self.fieldByName('PRD_COMISSAO').asFloat := Value;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "PRD_COMISSAO"!');
    end;
end;


{ Read method for property Custo }
function TProduto.GetCusto : Double;
begin
  try
    Result := Self.fieldByName('PRD_CUSTO').asFloat;
  except
    result:= 0
  end;
end;

{ Write method for property Custo }
procedure TProduto.SetCusto(Value : Double);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      Self.fieldByName('PRD_CUSTO').asFloat := Value;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "PRD_CUSTO"!');
    end;
end;

{ Read method for property DataAlterado }
function TProduto.GetDataAlterado : TDateTime;
begin
  try
    Result := Self.fieldByName('PRD_DT_ALTERADO').asDateTime;
  except
    result:= 0;
  end;
end;

{ Write method for property DataAlterado }
procedure TProduto.SetDataAlterado(Value : TDateTime);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
  try
    Self.fieldByName('PRD_DT_ALTERADO').asDateTime := Value;
  except
    ShowMessage('N�o foi poss�vel alterar o campo "PRD_DT_ALTERADO"!');
  end;
end;

{ Read method for property DataCadastro }
function TProduto.GetDataCadastro : TDateTime;
begin
  try
    Result := Self.fieldByName('PRD_DT_CADASTRO').asDateTime;
  except
    result:= 0;
  end;
end;

{ Write method for property DataCadastro }
procedure TProduto.SetDataCadastro(Value : TDateTime);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
  try
    Self.fieldByName('PRD_DT_CADASTRO').asDateTime := Value;
  except
    ShowMessage('N�o foi poss�vel alterar o campo "PRD_DT_CADASTRO"!');
  end;
end;

{ Read method for property Descricao }
function TProduto.GetDescricao : String;
begin
  try
    Result := Self.fieldByName('PRD_DESCRICAO').asString;
  except
    result:= ''
  end;
end;

{ Write method for property Descricao }
procedure TProduto.SetDescricao(Value : String);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
  try
    Self.fieldByName('PRD_DESCRICAO').asString := Value;
  except
    ShowMessage('N�o foi poss�vel alterar o campo "PRD_DESCRICAO"!');
  end;
end;

{ Read method for property Detalhe }
function TProduto.GetDetalhe : String;
begin
  try
    Result := Self.fieldByName('PRD_DETALHE').asString;
  except
    result:= ''
  end;
end;

{ Write method for property Detalhe }
procedure TProduto.SetDetalhe(Value : String);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
  try
    Self.fieldByName('PRD_DETALHE').asString := Value;
  except
    ShowMessage('N�o foi poss�vel alterar o campo "PRD_DETALHE"!');
  end;
end;

{ Read method for property Dtultcompra }
function TProduto.GetDtultcompra : Tdatetime;
begin
  try
    Result := Self.fieldByName('PRD_DT_ULT_COMPRA').asDateTime;
  except
    result:= 0;
  end;
end;

{ Write method for property Dtultcompra }
procedure TProduto.SetDtultcompra(Value : Tdatetime);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
  try
    Self.fieldByName('PRD_DT_ULT_COMPRA').asDateTime := Value;
  except
    ShowMessage('N�o foi poss�vel alterar o campo "PRD_DT_ULT_COMPRA"!');
  end;
end;

{ Read method for property Estmedio }
function TProduto.GetEstmedio : Double;
 begin
  try
    Result := Self.fieldByName('PRD_EST_MEDIO').asFloat;
  except
    result:= 0
  end;
end;

{ Write method for property Estmedio }
procedure TProduto.SetEstmedio(Value : Double);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      Self.fieldByName('PRD_EST_MEDIO').asFloat := Value;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "PRD_EST_MEDIO"!');
    end;
end;

{ Read method for property Estminimo }
function TProduto.GetEstminimo : Double;
begin
  try
    Result := Self.fieldByName('PRD_EST_MINIMO').asFloat;
  except
    result:= 0
  end;
end;

{ Write method for property Estminimo }
procedure TProduto.SetEstminimo(Value : Double);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      Self.fieldByName('PRD_EST_MINIMO').asFloat := Value;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "PRD_EST_MINIMO"!');
    end;
end;

{ Read method for property EstoqueDetalhado }
function TProduto.GetEstoqueDetalhado : Boolean;
begin
  try
    result := (Self.fieldByName('PRD_ESTOQUE_DETALHADO').asInteger=1);
  except
    result := False;
  end;
end;

{ Write method for property EstoqueDetalhado }
procedure TProduto.SetEstoqueDetalhado(Value : Boolean);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      if Value=True then
        Self.fieldByName('PRD_ESTOQUE_DETALHADO').asInteger := 1
      else
        Self.fieldByName('PRD_ESTOQUE_DETALHADO').asInteger := 0;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "PRD_ESTOQUE_DETALHADO"!');
    end;
end;

{ Read method for property ForaDeLinha }
function TProduto.GetForaDeLinha : Boolean;
begin
  try
    result := (Self.fieldByName('PRD_FORA_DE_LINHA').asInteger=1);
  except
    result := False;
  end;
end;

{ Write method for property ForaDeLinha }
procedure TProduto.SetForaDeLinha(Value : Boolean);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      if Value=True then
        Self.fieldByName('PRD_FORA_DE_LINHA').asInteger := 1
      else
        Self.fieldByName('PRD_FORA_DE_LINHA').asInteger := 0;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "PRD_FORA_DE_LINHA"!');
    end;
end;

{ Read method for property ForaPrevisao }
function TProduto.GetForaPrevisao : Boolean;
begin
  try
    result := (Self.fieldByName('PRD_FORA_PREVISAO').asInteger=1);
  except
    result := False;
  end;
end;

{ Write method for property ForaPrevisao }
procedure TProduto.SetForaPrevisao(Value : Boolean);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      if Value=True then
        Self.fieldByName('PRD_FORA_PREVISAO').asInteger := 1
      else
        Self.fieldByName('PRD_FORA_PREVISAO').asInteger := 0;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "PRD_FORA_PREVISAO"!');
    end;
end;

{ Read method for property ForaTabela }
function TProduto.GetForaTabela : Boolean;
begin
  try
    result := (Self.fieldByName('PRD_FORA_TABELA').asInteger=1);
  except
    result := False;
  end;
end;

{ Write method for property ForaTabela }
procedure TProduto.SetForaTabela(Value : Boolean);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      if Value=True then
        Self.fieldByName('PRD_FORA_TABELA').asInteger := 1
      else
        Self.fieldByName('PRD_FORA_TABELA').asInteger := 0;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "PRD_FORA_TABELA"!');
    end;
end;

{ Read method for property Insumo }
function TProduto.GetInsumo : Boolean;
begin
  try
    result := (Self.fieldByName('PRD_INSUMO').asInteger=1);
  except
    result := False;
  end;
end;

{ Write method for property Insumo }
procedure TProduto.SetInsumo(Value : Boolean);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      if Value=True then
        Self.fieldByName('PRD_INSUMO').asInteger := 1
      else
        Self.fieldByName('PRD_INSUMO').asInteger := 0;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "PRD_INSUMO"!');
    end;
end;

{ Read method for property Local }
function TProduto.GetLocal : String;
begin
  try
    Result := Self.fieldByName('PRD_LOCAL').asString;
  except
    result:= ''
  end;
end;

{ Write method for property Local }
procedure TProduto.SetLocal(Value : String);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
  try
    Self.fieldByName('PRD_LOCAL').asString := Value;
  except
    ShowMessage('N�o foi poss�vel alterar o campo "PRD_LOCAL"!');
  end;
end;

{ Read method for property Marca }
function TProduto.GetMarca : String;
begin
  try
    Result := Self.fieldByName('PRD_MARCA').asString;
  except
    result:= ''
  end;
end;

{ Write method for property Marca }
procedure TProduto.SetMarca(Value : String);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
  try
    Self.fieldByName('PRD_MARCA').asString := Value;
  except
    ShowMessage('N�o foi poss�vel alterar o campo "PRD_MARCA"!');
  end;
end;

{ Read method for property Nivel }
function TProduto.GetNivel : Integer;
begin
  try
    Result := Self.fieldByName('PRD_NIVEL').asInteger;
  except
    result:= 0;
  end;
end;

{ Write method for property Nivel }
procedure TProduto.SetNivel(Value : Integer);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      Self.fieldByName('PRD_NIVEL').asInteger := Value;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "PRD_NIVEL"!');
    end;
end;

{ Read method for property Obs }
function TProduto.GetObs : String;
begin
  try
    Result := Self.fieldByName('PRD_OBSERVACAO').asString;
  except
    result:= ''
  end;
end;

{ Write method for property Obs }
procedure TProduto.SetObs(Value : String);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
  try
    Self.fieldByName('PRD_OBSERVACAO').asString := Value;
  except
    ShowMessage('N�o foi poss�vel alterar o campo "PRD_OBSERVACAO"!');
  end;
end;

{ Read method for property PesoLiquido }
function TProduto.GetPesoLiquido : Double;
begin
  try
    Result := Self.fieldByName('PRD_PESO_LIQUIDO').asFloat;
  except
    result:= 0
  end;
end;

{ Write method for property PesoLiquido }
procedure TProduto.SetPesoLiquido(Value : Double);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      Self.fieldByName('PRD_PESO_LIQUIDO').asFloat := Value;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "PRD_PESO_LIQUIDO"!');
    end;
end;

{ Read method for property Precocompra }
function TProduto.GetPrecocompra : Double;
begin
  try
    Result := Self.fieldByName('PRD_PRECO_COMPRA').asFloat;
  except
    result:= 0
  end;
end;

{ Write method for property Precocompra }
procedure TProduto.SetPrecocompra(Value : Double);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      Self.fieldByName('PRD_PRECO_COMPRA').asFloat := Value;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "PRD_PRECO_COMPRA"!');
    end;
end;

{ Read method for property Precomedio }
function TProduto.GetPrecomedio : Double;
begin
  try
    Result := Self.fieldByName('PRD_PRECO_MEDIO').asFloat;
  except
    result:= 0
  end;
end;

{ Write method for property Precomedio }
procedure TProduto.SetPrecomedio(Value : Double);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
  try
    Self.fieldByName('PRD_PRECO_MEDIO').asFloat := Value;
  except
    ShowMessage('N�o foi poss�vel alterar o campo "PRD_PRECO_MEDIO"!');
  end;
end;

{ Read method for property Precovenda }
function TProduto.GetPrecovenda : Double;
begin
  try
    Result := Self.fieldByName('PRD_PRECO_VENDA').asFloat;
  except
    result:= 0
  end;
end;


{ Write method for property Precovenda }
procedure TProduto.SetPrecovenda(Value : Double);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
  try
    Self.fieldByName('PRD_PRECO_VENDA').asFloat := Value;
  except
    ShowMessage('N�o foi poss�vel alterar o campo "PRD_PRECO_VENDA"!');
  end;
end;

{ Read method for property Previsao }
function TProduto.GetPrevisao : Integer;
begin
  try
    Result := Self.fieldByName('PRD_PREVISAO').asInteger;
  except
    result:= 0;
  end;
end;

{ Write method for property Previsao }
procedure TProduto.SetPrevisao(Value : Integer);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      Self.fieldByName('PRD_PREVISAO').asInteger := Value;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "PRD_PREVISAO"!');
    end;
end;

{ Read method for property Referencia }
function TProduto.GetReferencia : String;
begin
  try
    Result := Self.fieldByName('PRD_REFERENCIA').asString;
  except
    result:= ''
  end;
end;

{ Write method for property Referencia }
procedure TProduto.SetReferencia(Value : String);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
  try
    Self.fieldByName('PRD_REFERENCIA').asString := Value;
  except
    ShowMessage('N�o foi poss�vel alterar o campo "PRD_REFERENCIA"!');
  end;
end;

{ Read method for property Servico }
function TProduto.GetServico : Boolean;
begin
  try
    result := (Self.fieldByName('PRD_SERVICO').asInteger=1);
  except
    result := False;
  end;
end;

{ Write method for property Servico }
procedure TProduto.SetServico(Value : Boolean);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      if Value=True then
        Self.fieldByName('PRD_SERVICO').asInteger := 1
      else
        Self.fieldByName('PRD_SERVICO').asInteger := 0;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "PRD_SERVICO"!');
    end;
end;

{ Read method for property Situacao }
function TProduto.GetSituacao : Integer;
begin
  try
    Result := Self.fieldByName('PRD_SITUACAO').asInteger;
  except
    result:= 0;
  end;
end;

{ Write method for property Situacao }
procedure TProduto.SetSituacao(Value : Integer);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      Self.fieldByName('PRD_SITUACAO').asInteger := Value;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "PRD_SITUACAO"!');
    end;
end;

{ Read method for property TempoMedio }
function TProduto.GetTempoMedio : Integer;
begin
  try
    Result := Self.fieldByName('PRD_TEMPO_MEDIO').asInteger;
  except
    result:= 0;
  end;
end;

{ Write method for property TempoMedio }
procedure TProduto.SetTempoMedio(Value : Integer);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
    try
      Self.fieldByName('PRD_TEMPO_MEDIO').asInteger := Value;
    except
      ShowMessage('N�o foi poss�vel alterar o campo "PRD_TEMPO_MEDIO"!');
    end;
end;

{ Read method for property Unidade }
function TProduto.GetUnidade : String;
begin
  try
    Result := Self.fieldByName('PRD_UNIDADE').asString;
  except
    result:= ''
  end;
end;

{ Write method for property Unidade }
procedure TProduto.SetUnidade(Value : String);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
  try
    Self.fieldByName('PRD_UNIDADE').asString := Value;
  except
    ShowMessage('N�o foi poss�vel alterar o campo "PRD_UNIDADE"!');
  end;
end;

procedure TProduto.AdicionaEtiqueta(Produto:Integer;Preco:Real;Qtde:Integer;PDesc,PReferencia,PDetalhe,PCaracteristica,PMarca:string;PCodBarras:string='';PUmaPorQtd:Boolean=False;PAspas:Boolean=False);
var
  i,j,vQtd:Integer;
  Linha, sAspas:String;
begin
  sAspas := '';
  if PAspas then
    sAspas := '"';
  vQtd := Qtde;
  if PUmaPorQtd then
    Qtde := 1;
  for i:=1 to Qtde do
  begin
    Linha:=IntToStr(Produto);
    for j:=1 to length(Linha) do
      if linha[j]='0' then
        linha[j]:='C'
      else if linha[j]='6' then
        linha[j]:='D';
    VirgPonto(PDesc, ';', ' '); //Tirar ;
    VirgPonto(PReferencia, ';', ' '); //Tirar ;
    VirgPonto(PDetalhe, ';', ' '); //Tirar ;
    VirgPonto(PCaracteristica, ';', ' '); //Tirar ;
    Linha:=sAspas+PreencheE(Linha, 'C', 6)+sAspas+';'+sAspas+
      PreencheE(IntToStr(Produto), '0', 6)+sAspas+';'+sAspas+
      Format('%.2f',[Preco])+sAspas+';'+sAspas+
      PDesc+sAspas+';'+sAspas+
      PReferencia+sAspas+';'+sAspas+
      PDetalhe+sAspas+';'+sAspas+
      PCaracteristica+sAspas+';'+sAspas+
      PMarca+sAspas+';'+sAspas+
      PCodBarras+sAspas+';'+sAspas+
      IntToStr(vQtd)+sAspas+';'+sAspas+
      Format('%.2f',[vQtd*Preco])+sAspas;
    Writeln(FEtiquetas, linha);
  end;
end;

function TProduto.AlterarAuto:Boolean;
var
  CdCNC,CdPRD,CdFOR,CTP,SGP,GRP,CLF,ORF, iForaPre, iForaTab, iForaLinha, iCatalogo, iInsumo:integer;
  sCdFOR, PCompra, PCusto, PMedio, PVenda, EstMin, EstMed, DtCompra,
  Peso, sBaseReal, sTempoMedio, sNivel, sPrevisao, sClassificacao, sEstDetalhado:string;
begin
  Result:=false;
  CdCNC := CodigoCNC;
  CdPRD := CodigoPRD;

  if (Trim(EReferencia.Text) <> '') and
     (CConfiguracao.PRDReferenciaUnica) then
  Begin
    with CConfiguracao.QueryConsultas do
    Begin
      Close;
      SQL.Text := 'SELECT PRD_CODIGO '+
        ' FROM PRODUTO '+
        ' WHERE PRD_REFERENCIA="'+EReferencia.Text+'" '+
        ' AND PRD_CODIGO<>'+IntToStr(CdPRD);
      Open;
      if not isEmpty then
        Raise exception.Create('Refer�ncia cadastrada em outro produto! ('+FieldByName('PRD_CODIGO').asString+')');
    end;
  end;

  try
    CdFOR := StrToInt(ECodigoFOR.Text);
  except
    CdFOR := 0;
  end;

  if not LocalizarCod(StrToInt(ECodigoPRD.Text)) then
    ShowMessage('N�o foi poss�vel alterar registro corrente pois o registro n�o existe!')
  else
  Begin
    try
      try
        if EForaPrevisao.Checked then
          iForaPre := 1
        else
          iForaPre := 0;
      except
        iForaPre := 0;
      end;
      try
        if EForaDeLinha.Checked then
          iForaLinha := 1
        else
          iForaLinha := 0;
      except
        iForaLinha := 0;
      end;
      try
        if ECatalogo.Checked then
          iCatalogo := 1
        else
          iCatalogo := 0;
      except
        iCatalogo := 0;
      end;
      try
        if EInsumo.Checked then
          iInsumo := 1
        else
          iInsumo := 0;
      except
        iInsumo := 0;
      end;
      try
        if EForaTabela.Checked then
          iForaTab := 1
        else
          iForaTab := 0;
      except
        iForaTab := 0;
      end;
      try
        if ECOdigoCTP.KeyValue > 0 then
          CTP := ECodigoCTP.KeyValue
        else
          CTP := 0;
      except
        CTP := 0;
      end;
      try
        if ECodigoGRP.KeyValue > 0 then
          GRP := ECodigoGRP.KeyValue
        else
          GRP := 0;
      except
        GRP := 0;
      end;
      try
        if ECodigoSGP.KeyValue > 0 then
          SGP := ECodigoSGP.KeyValue
        else
          SGP := 0;
      except
        SGP := 0;
      end;
      try
        if ECodigoCLF.KeyValue > 0 then
          CLF := ECodigoCLF.KeyValue
        else
          CLF := 0;
      except
        CLF := 0;
      end;
      try
        if ECodigoORF.KeyValue > 0 then
          ORF := ECodigoORF.KeyValue
        else
          ORF := 0;
      except
        ORF := 0;
      end;
      try
        if EPrecocompra.Text <> '' then
          PCompra := VirgPonto(EPrecocompra.Text)
        else
          PCompra := '0';
      except
        PCompra := '0';
      end;
      try
        if ECusto.Text <> '' then
          PCusto := VirgPonto(ECusto.Text)
        else
          PCusto := '0';
      except
        PCusto := '0';
      end;
      try
        if EPrecomedio.Text <> '' then
          PMedio := VirgPonto(EPrecomedio.Text)
        else
          PMedio := '0';
      except
        PMedio := '0';
      end;
      try
        if EPrecovenda.Text <> '' then
          PVenda := VirgPonto(EPrecovenda.Text)
        else
          PVenda := '0';
      except
        PVenda := '0';
      end;
      try
        if EEstminimo.Text <> '' then
          EstMin := VirgPonto(EEstminimo.Text)
        else
          EstMin := '0';
      except
        EstMin := '0';
      end;
      try
        if EEstmedio.Text <> '' then
          EstMed := VirgPonto(EEstmedio.Text)
        else
          EstMed := '0';
      except
        EstMed := '0';
      end;
      try
        if EPesoLiquido.Text <> '' then
          Peso := VirgPonto(EPesoLiquido.Text)
        else
          Peso := '0';
      except
        Peso := '0';
      end;
      try
        if EBaseReal.Text <> '' then
          sBaseReal := VirgPonto(EBaseReal.Text)
        else
          sBaseReal := '0';
      except
        sBaseReal := '0';
      end;
      try
        if EDtultcompra.Text <> '  /  /    ' then
          DtCompra := MesDia(EDtultcompra.Text)
        else
          DtCompra := '12/30/1899';
      except
        DtCompra := '12/30/1899';
      end;
      try
        if ETempoMedio.Text <> '' then
          sTempoMedio := ETempoMedio.Text
        else
          sTempoMedio := '0';
      except
        sTempoMedio := '0';
      end;
      try
        if ENivel.Text <> '' then
          sNivel := ENivel.Text
        else
          sNivel := '0';
      except
        sNivel := '0';
      end;
      try
        if (Trim(ECodigoFOR.Text) <> '') then
          sCdFOR := ECodigoFOR.Text
        else
          sCdFOR := '0';
      except
        sCdFOR := '0';
      end;
      try
        sPrevisao := IntToStr(StrToInt(EPrevisao.Text)); // Horas
      except
        sPrevisao := '0';
      end;
      try
        sClassificacao := IntToStr(EClassificacao.KeyValue);
      except
        sClassificacao := '0';
      end;

      try
        if CConfiguracao.EstoqueDetalhado and
           EEstoqueDetalhado.Checked then
          sEstDetalhado := ',PRD_ESTOQUE_DETALHADO=1'
        else
          sEstDetalhado := ',PRD_ESTOQUE_DETALHADO=0';
      except
        sEstDetalhado := '';
      end;

      ExecutaSQL(CConfiguracao.QueryComandos,'UPDATE PRODUTO SET '+
        '  USU_CODIGO='         +IntToStr(CConfiguracao.CodigoUSU)+
        ' ,FOR_CODIGO='         +sCdFOR+
        ' ,PRD_DESCRICAO="'     +EDescricao.Text+
        '",PRD_LOCAL="'         +ELocal.Text+
        '",PRD_MARCA="'         +EMarca.Text+
        '",PRD_REFERENCIA="'    +EReferencia.Text+
        '",PRD_UNIDADE="'       +EUnidade.Text+
        '",PRD_DETALHE="'       +EDetalhe.Text+
        '",CTP_CODIGO='         +IntToStr(CTP)+
        ' ,GRP_CODIGO='         +IntToStr(GRP)+
        ' ,SGP_CODIGO='         +IntToStr(SGP)+
        ' ,CLF_CODIGO='         +IntToStr(CLF)+
        ' ,ORF_CODIGO='         +IntToStr(ORF)+
        ' ,PRD_DT_ALTERADO="'   +MesDiaHora(CConfiguracao.DataHora)+
        '",PRD_PRECO_COMPRA='   +PCompra+
        ' ,PRD_CUSTO='          +PCusto+
        ' ,PRD_PRECO_MEDIO='    +PMedio+
        ' ,PRD_PRECO_VENDA='    +PVenda+
        ' ,PRD_EST_MEDIO='      +EstMed+
        ' ,PRD_EST_MINIMO='     +EstMin+
        ' ,PRD_PESO_LIQUIDO='   +Peso+
        ' ,PRD_DT_ULT_COMPRA="' +DtCompra+
        '",PRD_FORA_PREVISAO='  +IntToStr(iForaPre)+
        ' ,PRD_FORA_TABELA='    +IntToStr(iForaTab)+
        ' ,PRD_CATALOGO='       +IntToStr(iCatalogo)+
        ' ,PRD_FORA_DE_LINHA='  +IntToStr(iForaLinha)+
        ' ,PRD_INSUMO='         +IntToStr(iInsumo)+
        ' ,PRD_CARACTERISTICA="'+ECaracteristica.Text+
        '",PRD_OBSERVACAO="'    +EOBS.Text+
        '",PRD_NCM="'           +ENCM.Text+
        '",PRD_SITUACAO='       +IntToStr(ESituacao.ItemIndex)+
        ' ,PRD_BASE_REAL='      +sBaseReal+
        ' ,PRD_TEMPO_MEDIO='    +sTempoMedio+
        ' ,PRD_PREVISAO='       +sPrevisao+
        ' ,PRD_NIVEL='          +sNivel+
        ' ,PRD_CLASSIFICACAO='  +sClassificacao+
        sEstDetalhado+
        ' WHERE PRD_CODIGO='+ECodigoPRD.Text);

      //Atualizar Produto por Fornecedor...
      if not Servico then
      Begin
        CProduto_por_Fornecedor.Close;
        CProduto_por_Fornecedor.ParamByName('PRD_CODIGO').asInteger := CdPRD;
        CProduto_por_Fornecedor.ParamByName('FOR_CODIGO').asInteger := CdFOR;
        CProduto_por_Fornecedor.Open;
        If CProduto_por_Fornecedor.isEmpty then
        Begin
          CProduto_por_Fornecedor.Inserir(0,CdPRD,CdFor);
          CProduto_por_Fornecedor.Close;
          CProduto_por_Fornecedor.Open;
        end;
      end;
      Result := True;
      GeraLog(480,CdCNC,CdPRD,EDescricao.Text+' '+EReferencia.Text+
        ' '+EDetalhe.Text+' Compra:'+PCompra+' Custo:'+PCusto+' Venda:'+PVenda+
        ' M�nimo:'+PMedio);
    except
      ShowMessage('N�o foi poss�vel alterar registro corrente. Verifique se a tabela encontra-se em modo de somente leitura.');
    end;
  end;
end;

procedure TProduto.AtualizaControles(Habilitar:Boolean);
begin
 Try
   EDbgrid.Enabled           :=not Habilitar;
 except
 end;
 try
   EForaPrevisao.Enabled         := Habilitar;
 except
 end;
 try
   ECatalogo.Enabled             := Habilitar;
 except
 end;
 try
   EForaDeLinha.Enabled          := Habilitar;
 except
 end;
 try
   EInsumo.Enabled                := Habilitar;
 except
 end;
 try
   EForaTabela.Enabled         := Habilitar;
 except
 end;
 try
   EPrecocompra.Enabled         := Habilitar;
 except
 end;
 try
   EPrecovenda.Enabled          := Habilitar;
 except
 end;
 try
   EPrecomedio.Enabled          := Habilitar;
 except
 end;
 try
   EUnidade.Enabled             := Habilitar;
 except
 end;
 try
   EDetalhe.Enabled             := Habilitar;
 except
 end;
 try
   EDescricao.Enabled           := Habilitar;
 except
 end;
 try
   ELocal.Enabled           := Habilitar;
 except
 end;
 try
   EDtultcompra.Enabled         := Habilitar;
 except
 end;
 try
   ECusto.Enabled               := Habilitar;
 except
 end;
 try
   EEstminimo.Enabled           := Habilitar;
 except
 end;
 try
   EEstmedio.Enabled            := Habilitar;
 except
 end;
 try
   EPesoLiquido.Enabled         := Habilitar;
 except
 end;
 try
   ECodigoGRP.Enabled           := Habilitar;
 except
 end;
 try
   ECodigoFOR.Enabled           := Habilitar;
 except
 end;
 try
   ECodigoSGP.Enabled           := Habilitar;
 except
 end;
 try
   ECodigoCLF.Enabled           := Habilitar;
 except
 end;
 try
   ECodigoORF.Enabled           := Habilitar;
 except
 end;
 try
   EMarca.Enabled               := Habilitar;
 except
 end;
 try
   EReferencia.Enabled          := Habilitar;
 except
 end;
 try
   ECaracteristica.Enabled      := Habilitar;
 except
 end;
 try
   ENCM.Enabled                 := Habilitar;
 except
 end;
 try
   EBaseReal.Enabled            := Habilitar;
 except
 end;
 try
   ETempoMedio.Enabled          := Habilitar;
 except
 end;
 try
   EPrevisao.Enabled            := Habilitar;
 except
 end;
 try
   ENivel.Enabled               := Habilitar;
 except
 end;
 try
   EClassificacao.Enabled       := Habilitar;
 except
 end;
 try
   if CConfiguracao.EstoqueDetalhado then
     EEstoqueDetalhado.Enabled  := Habilitar
   else
     EEstoqueDetalhado.Enabled  := False;
 except
 end;
 try
   ESituacao.Enabled            := Habilitar;
 except
 end;
 try
   EObs.Enabled                 := Habilitar;
 except
 end;
end;



procedure TProduto.CancelaEdicao;
begin
  Estado:=0;
  AtualizaControles(False);
  if isEmpty then
    LimpaCampos
  else
    CarregaDados;
end;

procedure TProduto.CarregaDados;
var
  Foto : string;
begin
  Try
    ECodigoPRD.Text              := IntToStr(CodigoPRD);
  Except
  End;
  Try
    EForaPrevisao.Checked         := ForaPrevisao;
  Except
  End;
  Try
    ECatalogo.Checked             := Catalogo;
  Except
  End;
  Try
    EForaDeLinha.Checked          := ForaDeLinha;
  Except
  End;
  Try
    EInsumo.Checked                := Insumo;
  Except
  End;
  Try
    EForaTabela.Checked           := ForaTabela;
  Except
  End;
  try
    ECodigoFOR.Text              := IntToStr(CodigoFOR);
  Except
  End;
  Try
    ECodigoCTP.KeyValue          := CodigoCTP;
  Except
  End;
  Try
    ECodigoGRP.KeyValue          := CodigoGRP;
  Except
  End;
  Try
    ECodigoSGP.KeyValue          := CodigoSGP;
  Except
  End;
  Try
    ECodigoCLF.KeyValue          := CodigoCLF;
  Except
  End;
  Try
    ECodigoORF.KeyValue          := CodigoORF;
  Except
  End;
  Try
    EPrecocompra.Text            := Format('%.'+IntToStr(iCasasDecimaisVenda)+'f',[Precocompra]);
  Except
  End;
  Try
    EPrecovenda.Text             := Format('%.'+IntToStr(iCasasDecimaisVenda)+'f',[Precovenda]);
  Except
  End;
  Try
    EPrecomedio.Text             := Format('%.'+IntToStr(iCasasDecimaisVenda)+'f',[Precomedio]);
  Except
  End;
  Try
    EUnidade.Text                := Unidade;
  Except
  End;
  Try
    EDetalhe.Text                := Detalhe;
  Except
  End;
  Try
    EDescricao.Text              := Descricao;
  Except
  End;
  Try
    ELocal.Text              := Local;
  Except
  End;
  Try
    if Dtultcompra=0 then
      EDtultcompra.Text:=''
    else
      EDtultcompra.Text            := FormatDateTime('dd/mm/yyyy', Dtultcompra);
  Except
  End;
  Try
    ECusto.Text                  := Format('%.2f',[Custo]);
  Except
  End;
  Try
    EEstminimo.Text              := Format('%.2f',[Estminimo]);
  Except
  End;
  Try
    EEstmedio.Text               := IntToStr(Trunc(Estmedio));
  Except
  End;
  Try
    EPesoLiquido.Text            := Format('%.2f',[PesoLiquido]);
  Except
  End;
  Try
    EComissao.Text               := Format('%.2f',[Comissao]);
  Except
  End;
  Try
    EMarca.Text                  := Marca;
  Except
  End;
  Try
    EReferencia.Text             := Referencia;
  Except
  End;
  Try
    ECaracteristica.Text             := Caracteristica;
  Except
  End;
  Try
    ENCM.Text                       := NCM;
  Except
  End;
  Try
    EBaseReal.Text                  := Format('%.2f',[BaseReal]);
  Except
  End;
  Try
    ETempoMedio.Text             := IntToStr(TempoMedio);
  Except
  End;
  Try
    EPrevisao.Text               := IntToStr(Previsao);
  Except
  End;
  Try
    ENivel.Text                  := IntToStr(Nivel);
  Except
  End;
  Try
    EClassificacao.KeyValue      := Classificacao;
  Except
  End;
  Try
    EEstoqueDetalhado.Checked    := EstoqueDetalhado;
  Except
  End;
  Try
    ESituacao.ItemIndex          := Situacao;
  Except
  End;
  Try
    EObs.Text             := OBS;
  Except
  End;
  try
    foto:=CConfiguracao.PastaImagens+'\Produto\00'+'-'+IntToStr(CodigoPRD)+'.JPG';
    Efoto.Picture.LoadFromFile(foto);
  Except
    try
      foto:=CConfiguracao.PastaImagens+'\Grupo\00'+'-'+IntToStr(CodigoGRP)+'.JPG';
      Efoto.Picture.LoadFromFile(foto);
    except
      try
        EFoto.Picture:=nil;
      except
      end;
    end;
  end;
end;

constructor TProduto.Create(AOwner: TComponent);
begin
     { Call the Create method of the parent class }
     inherited Create(AOwner);

     { AutoInitialize sets the initial values of variables and      }
     { properties; also, it creates objects for properties of       }
     { standard Delphi object types (e.g., TFont, TTimer,           }
     { TPicture) and for any variables marked as objects.           }
     { AutoInitialize method is generated by Component Create.      }
     AutoInitialize;
     Tabela := 'PRODUTO';

     { Code to perform other tasks when the component is created }

end;

function TProduto.Deletar(CdCNC,CDPRD:Integer):Boolean;
var
  sDetalhe :String;
begin
  Result := False;
  If not localizarCod(CdPRD) Then
    ShowMessage('N�o foi poss�vel deletar registro corrente pois o registro n�o existe!')
  Else
  Begin
    try
      sDetalhe := 'Desc: '+Descricao;
      if Delete then
      Begin
        Result := True;
        GeraLog(470,CdCNC,CdPRD,sDetalhe);
        if TQuery(Self).isEmpty then
          LimpaCampos;
      end;
    Except
      ShowMessage('N�o foi poss�vel deletar registro corrente!');
    End;
  End;
end;

destructor TProduto.Destroy;
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

procedure TProduto.FechaEtiquetas;
begin
  CloseFile(FEtiquetas);
end;

function TProduto.FinalizaEdicao(PServico:Boolean=False):Boolean;
var
  mensagem:string;
  aux:TDataSetNotifyEvent;
begin
  Result := False;
  if not PServico then
    if (EEstMedio.Text = '0') or (EEstMedio.Text = '') then
      EestMedio.Text := '1';
  mensagem:='';
  if EDescricao.Text = '' then
    mensagem:=mensagem+'Descri��o incorreta!'+#13;
  if not PServico then
  Begin
    If not VerificaInteiroBranco(ECodigoFOR.text) Then
      mensagem:=mensagem+'C�digo do Fornecedor incorreto!'+#13;
    If not VerificaInteiroBranco(EEstMedio.text) Then
      mensagem:=mensagem+'Volume incorreto!'+#13;
    If not Verificadata(EDtultcompra.text) Then
      mensagem:=mensagem+'Data da �ltima compra incorreta!'+#13;
    if not verificafloatBranco(EPrecocompra.text) then
      mensagem:= mensagem + 'Pre�o de compra digitado incorretamente!'+#13;
    if not verificafloat(EEstmedio.text) then
      mensagem:= mensagem + 'Estoque m�dio digitado incorretamente!'+#13;
    if not verificafloat(EEstminimo.text) then
      mensagem:= mensagem + 'Estoque m�nimo digitado incorretamente!'+#13;
    if not verificafloat(EPesoLiquido.text) then
      mensagem:= mensagem + 'Peso L�quido digitado incorretamente!'+#13;
    if (ECodigoORF.Text = '') then
      mensagem:= mensagem + 'Origem Fiscal inv�lida!'+#13;
    if (ECodigoCLF.Text = '')then
      mensagem:= mensagem + 'Classifica��o Fiscal inv�lida!'+#13;
  end
  else //Se For Servi�o
  Begin
    If not VerificaInteiroBranco(EPrevisao.text) Then
      mensagem:=mensagem+'Horas de Previs�o incorreta!'+#13;
  end;
  if not verificafloat(ECusto.text) then
    mensagem:= mensagem + 'Custo digitado incorretamente!'+#13;
  if not verificafloatBranco(EPrecomedio.text) then
    mensagem:= mensagem + 'Pre�o m�nimo digitado incorretamente!'+#13;
  if not verificafloatBranco(EPrecovenda.text) then
    mensagem:= mensagem + 'Pre�o de venda digitado incorretamente!'+#13;
  if (ECodigoGRP.Text = '') then
    mensagem:= mensagem + 'Grupo inv�lido!'+#13;
  if (ECodigoSGP.Text = '') then
    mensagem:= mensagem + 'SubGrupo Inv�lido!'+#13;
  if mensagem = '' then
    if StrToFloat(EPrecomedio.Text) > StrToFloat(EPrecoVenda.Text) then
      mensagem:=mensagem+'Pre�o M�nimo n�o pode ser maior que Pre�o de Venda!'+#13;
  If mensagem <>'' Then
  Begin
    ShowMessage(mensagem);
    Exit;
  end
  else
  Begin
    Aux:=AfterScroll;
    AfterScroll:=nil;
    If Estado=1 then
    Begin
      if Inserirauto(PServico) then
      Begin
        Result := True;
        Estado:=0;
        AtualizaControles(False);
        Carregadados;
      end;
    End
    Else If Estado=2 then
    Begin
      if Alterarauto then
      Begin
        Result := True;
        Estado:=0;
        AtualizaControles(False);
        Carregadados;
      end;
    End;
    AfterScroll:=Aux;
  end;
end;

{ Insere um Produto }
function TProduto.Inserir(CdPRD,PCdFOR,PCdCTP,PCdSGP,PCdGRP,PCdCLF,PCdORf: integer;PInsumo:boolean;PDescricao,PLocal,PUnidade,PMarca,PReferencia,PDetalhe:string;PCusto,PPrecocompra,PPrecomedio,PPrecovenda,PEstminimo,PEstmedio,PComissao:Double;PDtcompra:TDateTime):boolean;
Var
  Cod:Integer;
begin
  result:=false;
  if CdPRD=0 then
    Cod    := ProximoCodigo('PRD_CODIGO')
  else
    Cod    := CdPRD;
  If localizarCod(Cod) Then
    ShowMessage('N�o foi poss�vel inserir o registro corrente pois o mesmo j� existe!')
  Else
  begin
    Insert;
    try
      CodigoPRD          := Cod;
      CodigoUSU          := CConfiguracao.CodigoUSU;
      DataCadastro       := CConfiguracao.DataHora;
      CodigoCNC          := CConfiguracao.CodigoCNC;
      CodigoFOR          := PCdFOR;
      CodigoCTP          := PCdCTP;
      CodigoSGP          := PCdSGP;
      CodigoGRP          := PCdGRP;
      CodigoCLF          := PCdCLF;
      CodigoORF          := PCdORF;
      Precocompra        := PPrecocompra;
      Precovenda         := PPrecovenda;
      Precomedio         := PPrecomedio;
      Unidade            := PUnidade;
      Detalhe            := PDetalhe;
      Descricao          := PDescricao;
      Local              := PLocal;
      Dtultcompra        := PDtcompra;
      Custo              := PCusto;
      Estminimo          := PEstminimo;
      Estmedio           := PEstmedio;
      Comissao           := PComissao;
      Marca              := PMarca;
      Referencia         := PReferencia;
      Insumo             := PInsumo;
      Classificacao      := 0;
      EstoqueDetalhado   := False;
      Situacao           := 0;
      try
        Post;
        GeraLog(460,CConfiguracao.CodigoCNC,CdPRD);
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

function TProduto.InserirAuto(PServico:Boolean=False):Boolean;
var
  sDetalhes: String;
begin
  Result := False;
  sDetalhes := '';
  if LocalizarCod(StrToInt(ECodigoPRD.Text)) then
    ShowMessage('C�digo de Produto j� Cadastrado!')
  else
  Begin
    if (Trim(EReferencia.Text) <> '') and
       (CConfiguracao.PRDReferenciaUnica) then
    Begin
      with CConfiguracao.QueryConsultas do
      Begin
        Close;
        SQL.Text := 'SELECT PRD_CODIGO '+
          ' FROM PRODUTO '+
          ' WHERE PRD_REFERENCIA="'+EReferencia.Text+'" ';
        Open;
        if not isEmpty then
          Raise exception.Create('Refer�ncia cadastrada em outro produto! ('+FieldByName('PRD_CODIGO').asString+')');
      end;
    end;

    if CConfiguracao.Empresa = empLBM then
    Begin
      with CConfiguracao.QueryConsultas do
      Begin
        Close;
        SQL.Text := 'SELECT TOP 1 PRD_CODIGO '+
          ' FROM PRODUTO '+
          ' WHERE PRD_DESCRICAO="'+EDescricao.Text+'" '+
          ' AND PRD_REFERENCIA="'+EReferencia.Text+'" '+
          ' AND PRD_DETALHE="'+EDetalhe.Text+'" ';
        Open;
        if not isEmpty then
        Begin
          ShowMessage('Produto J� Cadastrado!');
          Exit;
        end;
      end;
    end;
    try
      SCodigo       :=StrToInt(ECodigoPRD.Text);
      append;
      try
        CodigoPRD   := SCodigo;
      except
      end;
      try
        CodigoUSU   := CConfiguracao.CodigoUSU;
      except
      end;
      try
        ForaPrevisao   := EForaPrevisao.Checked;
      except
      end;
      try
        ForaDeLinha    := EForaDeLinha.Checked;
      except
      end;
      try
        Insumo        := EInsumo.Checked;
      except
      end;
      try
        ForaTabela    := EForaTabela.Checked;
      except
      end;
      try
        Catalogo      := ECatalogo.Checked;
      except
      end;
      try
        DataCadastro := CConfiguracao.DataHora;
      except
      end;
      try
        codigoCNC   := CConfiguracao.CodigoCNC;
      except
      end;
      try
        Descricao   := Trim(EDescricao.Text);
        sDetalhes := sDetalhes + 'Desc:'+Trim(EDescricao.Text);
      except
      end;
      try
        Local       := ELocal.Text;
      except
      end;
      try
        Marca         :=        EMarca.Text;
      except
      end;
      try
        Unidade     := EUnidade.Text;
      except
      end;
      try
        Detalhe     := EDetalhe.Text;
      except
      end;
      try
        Referencia  := EReferencia.Text;
      except
      end;
      try
        CodigoFOR   := StrToInt(ECodigoFOR.Text);
      except
      end;
      try
        CodigoGRP   := ECodigoGRP.KeyValue;
      except
      end;
      try
        CodigoSGP   := ECodigoSGP.KeyValue;
      except
      end;
      try
        CodigoORF   := ECodigoORF.KeyValue;
      except
      end;
      try
        CodigoCLF   := ECodigoCLF.KeyValue;
      except
      end;
      try
        CodigoCTP   := ECodigoCTP.KeyValue;
      except
      end;
      try
        Dtultcompra   := StrToDatetime(EDtultcompra.Text);
      except
      end;
      try
        Precocompra   := StrToFloat(EPrecocompra.Text);
      except
      end;
      try
        Custo         := StrToFloat(ECusto.Text);
      except
      end;
      try
        Precomedio    := StrToFloat(EPrecomedio.Text);
      except
      end;
      try
        Precovenda    := StrToFloat(EPrecovenda.Text);
      except
      end;
      try
        Estminimo     := StrToFloat(EEstminimo.Text);
      except
      end;
      try
        Estmedio      := StrToFloat(EEstmedio.Text);
      except
      end;
      try
        PesoLiquido   := StrToFloat(EPesoLiquido.Text);
      except
      end;
      try
        Comissao      := StrToFloat(EComissao.Text);
      except
      end;
      try
        Caracteristica := ECaracteristica.Text;
      except
      end;
      try
        NCM := ENCM.Text;
      except
      end;
      try
        BaseReal       := StrToFloat(EBaseReal.Text);
      except
      end;
      try
        Servico       := PServico;
        if PServico then
          sDetalhes := sDetalhes + ' (Servi�o)';
      except
      end;
      try
        if PServico then
          TempoMedio       := StrToInt(ETempoMedio.Text);
      except
      end;
      try
        if PServico then
          Previsao         := StrToInt(EPrevisao.Text);
      except
      end;
      try
        if PServico then
          Nivel          := StrToInt(ENivel.Text);
      except
      end;
      try
        if not PServico then
          Classificacao  := EClassificacao.KeyValue;
      except
      end;
      try
        if (not PServico) and
           CConfiguracao.EstoqueDetalhado then
          EstoqueDetalhado := EEstoqueDetalhado.Checked
        else
          EstoqueDetalhado := False;
      except
      end;
      try
        Situacao      := ESituacao.ItemIndex;
      except
      end;
      try
        Obs           := EObs.Text;
      except
      end;
      try
        Post;
        if not PServico then
        Begin
          CProduto_por_Fornecedor.Close;
          CProduto_por_Fornecedor.ParamByName('PRD_CODIGO').asInteger:=CodigoPRD;
          CProduto_por_Fornecedor.ParamByName('FOR_CODIGO').asInteger:=CodigoFOR;
          CProduto_por_Fornecedor.Open;
          If CProduto_por_Fornecedor.isEmpty then
          Begin
            CProduto_por_Fornecedor.Inserir(0,CodigoPRD,CodigoFor);
            CProduto_por_Fornecedor.Close;
            CProduto_por_Fornecedor.Open;
          end;
        end;
        GeraLog(460,CConfiguracao.CodigoCNC,SCodigo,sDetalhes);
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

procedure TProduto.LimpaCampos(PServico: Boolean=False);
begin
  try
    if Estado<>1 then
      ECodigoPRD.Clear;
  except
  end;
  try
    if Estado<>1 then
      ECodigoFOR.Clear
    else if CConfiguracao.Empresa = empHope then
      ECodigoFOR.Text := '101';
  except
  end;
  try
    if Estado <> 1 then
      EPrecocompra.Clear
    else if (not (CConfiguracao.Empresa in [3,4])) or
       (Trim(EPrecoCompra.Text)='') then
      EPrecocompra.Text := '0,00';
  except
  end;
  try
    if Estado <> 1 then
    Begin
      ECodigoCLF.KeyValue := 0;
      ECodigoCTP.KeyValue := 0;
    end
    else
    Begin
      ECodigoCLF.KeyValue := 1;
      ECodigoCTP.KeyValue := 0;
    end;
  except
  end;
  try
    if estado <> 1 then
      ECodigoORF.KeyValue := -1
    else
      ECodigoORF.KeyValue := 0;
  except
  end;
  try
    if Estado <> 1 then
      EPrecovenda.Clear
    else if (not (CConfiguracao.Empresa in [empLBM,empMotical,empHOPE])) or
       (Trim(EPrecovenda.Text)='') then
      EPrecovenda.Text := '0,00';
  except
  end;
  try
    if Estado <> 1 then
      EPrecomedio.Clear
    else if (not (CConfiguracao.Empresa in [empLBM,empMotical,empHOPE])) or
       (Trim(EPrecomedio.Text)='') then
      EPrecomedio.Text := '0,00';
  except
  end;
  try
    if Estado <> 1 then
      EUnidade.Clear
    else if (not (CConfiguracao.Empresa in [empLBM,empMotical,empHOPE])) or
       (Trim(EUnidade.Text)='') then
    Begin
      if CConfiguracao.Empresa = empHOPE then
        EUnidade.Text := 'PC'
      else
        EUnidade.Text := 'UN';
    end;
  except
  end;
  try
    if Estado <> 1 then
      EDetalhe.Clear
    else if (not (CConfiguracao.Empresa in [3,4])) then
      EDetalhe.Clear;
  except
  end;
  try
    if Estado <> 1 then
      EDescricao.Clear
    else if (not (CConfiguracao.Empresa in [empLBM,empMotical,empHOPE])) then
      EDescricao.Clear;
  except
  end;
  try
    if Estado <> 1 then
      ELocal.Clear
    else if (not (CConfiguracao.Empresa in [3,4])) then
      ELocal.Clear;
  except
  end;
  try
    EDtultcompra.Clear;
  except
  end;
  try
    if Estado <> 1 then
      ECusto.Clear
    else if (not (CConfiguracao.Empresa in [empLBM,empMotical,empHOPE])) or
       (Trim(ECusto.Text)='') then
      ECusto.Text := '0,00';
  except
  end;
  try
    if Estado <> 1 then
      EEstminimo.Clear
    else if (not (CConfiguracao.Empresa in [empLBM,empMotical,empHOPE])) or
       (Trim(EEstminimo.Text)='') then
      EEstminimo.Text := '0';
  except
  end;
  try
    //Volume
    if Estado <> 1 then
      EEstmedio.Clear
    else
      EEstmedio.Text := '1';
  except
  end;
  try
    if Estado <> 1 then
      EPesoLiquido.Clear
    else
      EPesoLiquido.Text := '0,00';
  except
  end;
  try
    if Estado <> 1 then
      EComissao.Clear
    else if (not (CConfiguracao.Empresa in [empLBM,empMotical,empHOPE])) or
       (Trim(EComissao.Text)='') then
      EComissao.Text := '0,00';
  except
  end;
  try
    if Estado <> 1 then
      EMarca.Clear
    else if (not (CConfiguracao.Empresa in [empLBM,empMotical])) then
    Begin
      if CConfiguracao.Empresa = empHope then
        EMarca.Text := 'HOPE'
      else
        EMarca.Clear;
    end;
  except
  end;
  try
    if Estado <> 1 then
      EReferencia.Clear
    else if (not (CConfiguracao.Empresa in [empLBM,empMotical])) then
      EReferencia.Clear;
  except
  end;
  try
    if Estado <> 1 then
      ECodigoCLF.KeyValue := 0
    else if (not (CConfiguracao.Empresa in [empLBM,empMotical,empHOPE])) or
       (Trim(ECodigoCLF.Text)='') then
      ECodigoCLF.KeyValue := 1;
  except
  end;
  try
    if Estado <> 1 then
      EInsumo.Checked := False
    else if (not (CConfiguracao.Empresa in [empLBM,empMotical,empHOPE])) then
      EInsumo.Checked := False;
  except
  end;
  try
    if Estado <> 1 then
      ECaracteristica.Clear
    else if (not (CConfiguracao.Empresa in [empLBM,empMotical,empHOPE])) then
      ECaracteristica.Clear;
  except
  end;

  try
    if Estado <> 1 then
      ENCM.Clear;
  except
  end;

  try
    if Estado <> 1 then
      EForaPrevisao.Checked := False
    else if (CConfiguracao.Empresa = empLBM) and
            (not PServico) then
      EForaPrevisao.Checked := True
    else if (CConfiguracao.Empresa <> empMotical) then
      EForaPrevisao.Checked := False;
  except
  end;
  try
    EForaDeLinha.Checked := False
  except
  end;
  try
    if Estado <> 1 then
      EForaTabela.Checked := False
    else if (CConfiguracao.Empresa = empLBM) and
            (not PServico) then
      EForaTabela.Checked := True
    else if (CConfiguracao.Empresa <> empMotical) then
      EForaTabela.Checked := False;
  except
  end;
  try
    if Estado <> 1 then
      EBaseReal.Clear
    else
      EBaseReal.Text := '0';
  except
  end;
  try
    if Estado <> 1 then
      ETempoMedio.Clear
    else
      ETempoMedio.Text := '0';
  except
  end;
  try
    if Estado <> 1 then
      EPrevisao.Clear
    else
      EPrevisao.Text := '0';
  except
  end;
  try
    if Estado <> 1 then
      ENivel.Clear
    else
      ENivel.Text := '0';
  except
  end;
  try
    EClassificacao.KeyValue := -1;
  except
  end;
  try
    if Estado <> 1 then
      EEstoqueDetalhado.Checked := False
    else if (not (CConfiguracao.Empresa in [empLBM,empMotical,empHOPE])) then
      EEstoqueDetalhado.Checked := False;
  except
  end;
  try
    if Estado <> 1 then
      ESituacao.ItemIndex := -1
    else if (CConfiguracao.Empresa = 3) and
            (not PServico) then
      ESituacao.ItemIndex := 1
    else if (CConfiguracao.Empresa <> 4) or
      (ESituacao.ItemIndex < 0) then
      ESituacao.ItemIndex := 0;
  except
  end;
  try
    if Estado <> 1 then
      EObs.Clear
    else if (not (CConfiguracao.Empresa in [empLBM,empMotical,empHOPE])) then
      EObs.Clear;
  except
  end;
  try
    EFoto.Picture:=nil;
  except
  end;
end;

procedure TProduto.LimpaEtiquetas;
begin
  AssignFile(FEtiquetas, ArquivoDeEtiquetas);
  Rewrite(FEtiquetas);
  If MessageDlg('Deseja gerar cabe�alho do arquivo?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Writeln(FEtiquetas, 'produto1;produto2;preco;descricao;Referencia;Detalhe;Caracteristica;Marca;CodBarras;Quantidade;QtdxPreco');
end;


{ Localiza um Produto }
function TProduto.LocalizarCod(CDPRD:Integer):Boolean;
begin
  If CDPRD<>CodigoPRD Then
  Begin
    If locate('PRD_CODIGO', CDPRD, []) Then
      Result:=True
    else
      Result:=False
  End
  Else
    Result:=True;
end;

procedure TProduto.PreparaAlteracao;
begin
  Estado:=2;
  AtualizaControles(True);
end;

procedure TProduto.PreparaInsercao(PServico: Boolean=False);
begin
  ProximoCodigo('PRD_CODIGO');
  Estado:=1;
  AtualizaControles(True);
  LimpaCampos(PServico);
end;

function TProduto.deletarauto:Boolean;
var
  CNC,PRD:integer;
  sDetalhe: string;
begin
  Result := False;
  try
    CNC:=CodigoCNC;
    PRD:=CodigoPRD;
    sDetalhe := 'Desc: '+Descricao;
    if Delete then
    Begin
      result:=true;
      GeraLog(470,CNC,PRD,sDetalhe);
      if TQuery(Self).isEmpty then
        LimpaCampos;
    end;
  Except
    ShowMessage('N�o foi poss�vel deletar registro corrente!');
  End;
end;


function TProduto.GetNCM: String;
begin
  try
    Result := Self.fieldByName('PRD_NCM').asString;
  except
    result:= ''
  end;
end;

procedure TProduto.SetNCM(Value: String);
begin
  if (Self.State=dsEdit) or (Self.State=dsInsert) then
  try
    Self.fieldByName('PRD_NCM').asString := Value;
  except
    ShowMessage('N�o foi poss�vel alterar o campo "PRD_NCM"!');
  end;
end;

end.
