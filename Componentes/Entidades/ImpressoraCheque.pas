unit ImpressoraCheque;

interface
Uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls;

// Fun��o para abrir a porta de comunica��o.
function Bematech_DP_IniciaPorta(Porta: string): integer; stdcall; far; external 'BemaDP32.dll';
// Fun��o para fechar a porta de comunica��o.
function Bematech_DP_FechaPorta: integer; stdcall; far; external 'BemaDP32.dll';
// Fun��o para imprimir o cheque.
function Bematech_DP_ImprimeCheque(Banco: string; Valor: string; Favorecido: string; Cidade: string; Data: string; Mensagem: string): integer; stdcall; far; external 'BemaDP32.dll';
// Fun��o para imprimir o cheque transfer�ncia.
function Bematech_DP_ImprimeChequeTransferencia(Banco: string; Valor: string; Agencia: string; Conta: string; Cidade: string; Data: string; Mensagem: string): integer; stdcall; far; external 'BemaDP32.dll';
// Fun��o para imprimir a c�pia do cheque.
function Bematech_DP_ImprimeCopiaCheque: integer; stdcall; far; external 'BemaDP32.dll';
// Fun��o para travar o documento.
function Bematech_DP_TravaDocumento(Trava: integer): integer; stdcall; far; external 'BemaDP32.dll';
// Fun��o para imprimir texto comum, sem formata��o.
function Bematech_DP_ImprimeTexto(Texto: string; AvancaLinha: integer): integer; stdcall; far; external 'BemaDP32.dll';
// Fun��o para imprimir texto formatado: it�lico, expandido, negrito.
function Bematech_DP_FormataTexto (Texto: string; Letra: string; Italico: integer; Expandido: integer; Negrito: integer): integer; stdcall; far; external 'BemaDP32.dll';
// Fun��o para incluir o nome da cidade e do favorecido no arquivo bemadp32.ini.
function Bematech_DP_IncluiCidadeFavorecido (Cidade: string; Favorecido: string): integer; stdcall; far; external 'BemaDP32.dll';
// Fun��o para incluir e alterar o banco e suas coordenadas no arquivo bemadp32.ini.
function Bematech_DP_IncluiAlteraBanco (Banco: string; Coordenadas: string): integer; stdcall; far; external 'BemaDP32.dll';
// Fun��o para programar moeda na impressora com teclado
function Bematech_DP_ProgramaMoeda (MoedaSingular: string; MoedaPlural: string): integer; stdcall; far; external 'BemaDP32.dll';
// Fun��o para programar favorecido na impressora com teclado.
function Bematech_DP_ProgramaFavorecido (CodiFavorecido: string; NomeFavorecido: string): integer; stdcall; far; external 'BemaDP32.dll';
// Fun��o para desprogramar favorecido na impressora com teclado.
function Bematech_DP_DesprogramaFavorecido (CodiFavorecido: string): integer; stdcall; far; external 'BemaDP32.dll';
// Fun��o para programa o banco e suas coordenadas na impressora com teclado.
function Bematech_DP_ProgramaBanco (Banco: string; Coordenadas: string): integer; stdcall; far; external 'BemaDP32.dll';
// Fun��o para excluir um banco do arquivo bemadp.ini
function Bematech_DP_ExcluiBanco (Banco: string): integer; stdcall; far; external 'BemaDP32.dll';
// Fun��o para enviar comandos para a impressora
function Bematech_DP_EnviaComando (Comando: string): integer;  stdcall; far; external 'BemaDP32.dll';
// Fun��o para configura��es especiais na impressora com teclado.
function Bematech_DP_ConfiguraImpressora (LinhaChancela: integer; Preenchimento: integer; Velocidade: integer; NumeroBits: integer; Paridade: integer; Centavos: integer): integer; stdcall; far; external 'BemaDP32.dll';
// Fun��o para configurar o modelo da impressora.
function Bematech_DP_ConfiguraModeloImpressora (ModeloImpressora: integer): integer; stdcall; far; external 'BemaDP32.dll';
// Fun��o para reinicializar a configura��o de mem�ria da impressora com teclado.
function Bematech_DP_ReinicializaConfiguracao: integer; stdcall; far; external 'BemaDP32.dll';
// Fun��o para Cancelamento de Relat�rios.
function Bematech_DP_CancelaRelatorio (Opcao: string): integer; stdcall; far; external 'BemaDP32.dll';

implementation

end.
