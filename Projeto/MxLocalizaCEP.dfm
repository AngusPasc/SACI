object fMxLocalizaCEP: TfMxLocalizaCEP
  Left = 273
  Top = 160
  Hint = 'Localizar CEP'
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Localizar CEP'
  ClientHeight = 535
  ClientWidth = 760
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 760
    Height = 497
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 758
      Height = 495
      Align = alClient
      DataSource = DSCEP1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CEP_CEP'
          Title.Caption = 'CEP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Logradouro'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEP_ENDERECO'
          Title.Caption = 'Endere'#231'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEP_BAIRRO'
          Title.Caption = 'Bairro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEP_COMPLEMENTO'
          Title.Caption = 'Complemento'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CEP_BAIRRO2'
          Title.Caption = 'Bairro Antigo'
          Visible = True
        end>
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 497
    Width = 760
    Height = 38
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      760
      38)
    object SB_Fechar: TSpeedButton
      Left = 650
      Top = 7
      Width = 90
      Height = 25
      Hint = 'Sair'
      Anchors = [akTop, akRight]
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000120B0000120B00000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFD
        FD9249FDFDFDFDFDFDFDFDFDFDFDFDFDFDF7A4FDFDFDFDFDFDFDFDFDFDFD9292
        D2D249FDFDFDFDFDFDFDFDFDFDFDF7F7A4F7A4FDFDFDFDFDFDFDFDFD9292D3D3
        D2D249929292929292FDFDFDF7F7F7F7F7F7A4F7F7F7F7F7F7FDFDFD92DBDBDB
        DBD349E40909090992FDFDFDF7F7F7F7F7F7A40808080808F7FDFDFD92DBDBDB
        DBDB49723232320992FDFDFDF7F7F7F7F7F7A4A4A4A4A408F7FDFDFD92DBDBDB
        DBDB49723232320992FDFDFDF707F7F7F7F7A4F7F7F7A408F7FDFDFD92DBDBDB
        DBDB49723232320992FDFDFDF707070707F7A4A4A4F7A408F7FDFDFD92DBDBE4
        09DC49BD7B73730992FDFDFDF7070707F607A40807F7F708F7FDFDFD92E4DBE4
        09DC49FFFFFF080992FDFDFDF7070707F607A4F6F6F6F608F7FDFDFD92E4E4E4
        E4DB4909FFFFFF0992FDFDFDF707070707F7A4F6F6F6F608F7FDFDFD92E4E4E4
        E4DB4909FFFFFF0992FDFDFDF70707070707A4F6F6F6F608F7FDFDFD92E4E4E4
        E4DB4909FFFFFF0992FDFDFDF70707070707A4F6F6F6F608F7FDFDFD92E4E4E4
        E4E44909FFFFFF0992FDFDFDF70707070707A4F6F6F6F608F7FDFDFD9292E4E4
        E4E44909FFFFFF0992FDFDFDF7F707070707A4F6F6F6F608F7FDFDFDFDFD929B
        DBDB49929292929292FDFDFDFDFDF7F7F707A4F7F7F7F7F7F7FDFDFDFDFDFDFD
        929249FDFDFDFDFDFDFDFDFDFDFDFDFDF7F7A4FDFDFDFDFDFDFD}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SB_FecharClick
    end
  end
  object DSCEP1: TDataSource
    DataSet = CEP1
    Left = 179
    Top = 42
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 42
    object Fechar1: TMenuItem
      Caption = '&Fechar'
      OnClick = Fechar1Click
    end
    object Ordenar1: TMenuItem
      Caption = '&Ordenar'
      object Ordena2: TMenuItem
        Caption = 'CE&P'
        RadioItem = True
        OnClick = Ordena2Click
      end
      object Ordena3: TMenuItem
        Caption = 'En&dere'#231'o'
        Checked = True
        RadioItem = True
        OnClick = Ordena3Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object MenuOrdem: TMenuItem
        Caption = 'D&ecrescente'
        OnClick = MenuOrdemClick
      end
    end
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 55
    Top = 42
  end
  object CEP1: TCEP
    OnCalcFields = CEP1CalcFields
    DatabaseName = 'DBCEP'
    Filtered = True
    SQL.Strings = (
      'SELECT * FROM CEP'
      'WHERE CEP_UF=:CEP_UF AND CEP_CIDADE=:CEP_CIDADE'
      'ORDER BY CEP_UF, CEP_CIDADE,CEP_ENDERECO')
    CNCOrigem = 0
    CentroDeCusto = -1
    CodigoCNC = 0
    CodigoUSU = 0
    Mafalda = -1
    Maquina = -1
    Selecao.Strings = (
      ' AND CNC_CODIGO=:CNC_CODIGO')
    Tabela = 'CEP'
    CodigoCEP = 0
    Logradouro = 0
    Situacao = -1
    Left = 148
    Top = 42
    ParamData = <
      item
        DataType = ftString
        Name = 'CEP_UF'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CEP_CIDADE'
        ParamType = ptUnknown
      end>
    object CEP1CEP_CEP: TStringField
      FieldName = 'CEP_CEP'
      Origin = 'DBCOMSOL.CEP.CEP_CEP'
      Size = 10
    end
    object CEP1CEP_ENDERECO: TStringField
      FieldName = 'CEP_ENDERECO'
      Origin = 'DBCOMSOL.CEP.CEP_ENDERECO'
      Size = 50
    end
    object CEP1CEP_BAIRRO: TStringField
      FieldName = 'CEP_BAIRRO'
      Origin = 'DBCOMSOL.CEP.CEP_BAIRRO'
      Size = 30
    end
    object CEP1CEP_BAIRRO2: TStringField
      FieldName = 'CEP_BAIRRO2'
      Origin = 'DBCOMSOL.CEP.CEP_BAIRRO2'
      Size = 30
    end
    object CEP1CEP_CIDADE: TStringField
      FieldName = 'CEP_CIDADE'
      Origin = 'DBCOMSOL.CEP.CEP_CIDADE'
      Size = 30
    end
    object CEP1CEP_UF: TStringField
      FieldName = 'CEP_UF'
      Origin = 'DBCOMSOL.CEP.CEP_UF'
      Size = 2
    end
    object CEP1CEP_LOGRADOURO: TIntegerField
      FieldName = 'CEP_LOGRADOURO'
      Origin = 'DBGUERRA.CEP.CEP_LOGRADOURO'
    end
    object CEP1CEP_COMPLEMENTO: TStringField
      FieldName = 'CEP_COMPLEMENTO'
      Origin = 'DBGUERRA.CEP.CEP_COMPLEMENTO'
      Size = 30
    end
    object CEP1Logradouro: TStringField
      FieldKind = fkCalculated
      FieldName = 'Logradouro'
      Calculated = True
    end
  end
  object Parametro3: TParametro
    DatabaseName = 'DBguerra'
    SQL.Strings = (
      'SELECT * FROM PARAMETRO'
      'WHERE PAR_CODIGO=:PAR_CODIGO'
      ' ')
    CNCOrigem = 0
    CentroDeCusto = -1
    CodigoCNC = 0
    CodigoUSU = 0
    Mafalda = -1
    Maquina = -1
    CodigoPAR = 0
    CodigoTPR = 0
    Informacao = 0
    Situacao = 0
    Left = 86
    Top = 42
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PAR_CODIGO'
        ParamType = ptUnknown
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DBguerra'
    SQL.Strings = (
      'SELECT * FROM CEP'
      'WHERE CEP_UF=:CEP_UF AND CEP_CIDADE=:CEP_CIDADE'
      'ORDER BY CEP_UF, CEP_CIDADE,CEP_ENDERECO')
    Left = 117
    Top = 42
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CEP_UF'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CEP_CIDADE'
        ParamType = ptUnknown
      end>
  end
end
