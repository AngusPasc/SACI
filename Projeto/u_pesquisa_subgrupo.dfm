object f_pesquisa_subgrupo: Tf_pesquisa_subgrupo
  Left = 318
  Top = 211
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pesquisa de Sub Grupo'
  ClientHeight = 274
  ClientWidth = 454
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 454
    Height = 66
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 0
    object SB_Loc: TSpeedButton
      Left = 15
      Top = 24
      Width = 25
      Height = 26
      Hint = 'Localizar'
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000120B0000120B00000000000000000000FF00FFFF00FF
        A46769A46769A46769A46769A46769A46769A46769A46769A46769A46769A467
        69A46769A46769FF00FFFF00FFFF00FF9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C
        9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9CFF00FFFF00FFFF00FF
        485360FEE9C7F4DAB5F3D5AAF2D0A0EFCB96EFC68BEDC182EBC17FEBC180EBC1
        80F2C782A46769FF00FFFF00FFFF00FF6F6F6FE9E9E9DEDEDED9D9D9D4D4D4CF
        CFCFCACACAC5C5C5C3C3C3C4C4C4C4C4C4C7C7C79C9C9CFF00FFFF00FF4380B7
        1F6FC2656B86F3DABCF2D5B1F0D0A7EECB9EEDC793EDC28BE9BD81E9BD7FE9BD
        7FEFC481A46769FF00FFFF00FF9292928282828E8E8EE0E0E0DBDBDBD7D7D7D2
        D2D2CDCDCDC9C9C9C3C3C3C2C2C2C2C2C2C6C6C69C9C9CFF00FFFF00FFFF00FF
        32A3FF1672D76B6A80F2DABCF2D5B2EFD0A9EECB9EEDC796EBC28CE9BD82E9BD
        7FEFC481A46769FF00FFFF00FFFF00FFA5A5A58484848E8E8EE0E0E0DCDCDCD7
        D7D7D2D2D2CECECEC9C9C9C4C4C4C2C2C2C6C6C69C9C9CFF00FFFF00FFFF00FF
        A0675B34A1FF1572D45E6782F3DABBF2D5B1F0D0A6EECB9EEDC795EBC28AEABF
        81EFC480A46769FF00FFFF00FFFF00FF959595A6A6A6828282898989E0E0E0DB
        DBDBD6D6D6D2D2D2CDCDCDC8C8C8C4C4C4C5C5C59C9C9CFF00FFFF00FFFF00FF
        A7756BFFFBF033A6FF4078AD8E675EAC7F7597645EAC7D6FCAA083EDC695EBC2
        8AEFC583A46769FF00FFFF00FFFF00FF9F9F9FF9F9F9A5A5A58C8C8C8E8E8EA6
        A6A6929292A3A3A3B8B8B8CDCDCDC8C8C8C7C7C79C9C9CFF00FFFF00FFFF00FF
        A7756BFFFFFCFAF0E6AD8A88B78F84D8BAA5EED5B6D7B298B58877CBA083EBC7
        93F2C98CA46769FF00FFFF00FFFF00FF9F9F9FFEFEFEF3F3F3AFAFAFB1B1B1CC
        CCCCDCDCDCC6C6C6AAAAAAB9B9B9CCCCCCCCCCCC9C9C9CFF00FFFF00FFFF00FF
        BC8268FFFFFFFEF7F2AF847FDAC0B4F7E3CFF6E0C5FFFFF4D7B198AC7D6FEECC
        9EF3CE97A46769FF00FFFF00FFFF00FFA6A6A6FFFFFFF9F9F9ABABABD3D3D3E9
        E9E9E5E5E5FBFBFBC6C6C6A3A3A3D2D2D2D1D1D19C9C9CFF00FFFF00FFFF00FF
        BC8268FFFFFFFFFEFC976560F6E9E0F7EADAF6E3CFFFFFEBEFD4B797645EF0D0
        A6F6D3A0A46769FF00FFFF00FFFF00FFA6A6A6FFFFFFFEFEFE939393EFEFEFEE
        EEEEE9E9E9F7F7F7DDDDDD929292D6D6D6D6D6D69C9C9CFF00FFFF00FFFF00FF
        D1926DFFFFFFFFFFFFB08884DECAC4FAEFE5F8EAD9FFFFD4D9B8A5AC7F74F4D8
        B1EBCFA4A46769FF00FFFF00FFFF00FFB1B1B1FFFFFFFFFFFFAEAEAEDBDBDBF3
        F3F3EEEEEEEEEEEECDCDCDA5A5A5DCDCDCD3D3D39C9C9CFF00FFFF00FFFF00FF
        D1926DFFFFFFFFFFFFD5BFBCBA9793DECAC4F6E9DEDAC0B4B78F84B28C7BDECE
        B4B6AA93A46769FF00FFFF00FFFF00FFB1B1B1FFFFFFFFFFFFD5D5D5B9B9B9DB
        DBDBEFEFEFD3D3D3B1B1B1ABABABD5D5D5B7B7B79C9C9CFF00FFFF00FFFF00FF
        DA9D75FFFFFFFFFFFFFFFFFFD5BFBCB08884976560AF867FCAA79DA56B5FA56B
        5FA56B5FA46769FF00FFFF00FFFF00FFB8B8B8FFFFFFFFFFFFFFFFFFD5D5D5AE
        AEAE939393ABABABC3C3C39999999999999999999C9C9CFF00FFFF00FFFF00FF
        DA9D75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFFFEF7DAC1BAA56B5FE19E
        55E68F31B56D4DFF00FFFF00FFFF00FFB8B8B8FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFDFDFDFCFCFCD6D6D6999999ACACAC9B9B9B969696FF00FFFF00FFFF00FF
        E7AB79FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC7C5A56B5FF8B5
        5CBF7A5CFF00FFFF00FFFF00FFFF00FFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFDBDBDB999999B8B8B8A2A2A2FF00FFFF00FFFF00FFFF00FF
        E7AB79FBF4F0FBF4EFFAF3EFFAF3EFF8F2EFF7F2EFF7F2EFD8C2C0A56B5FC183
        6CFF00FFFF00FFFF00FFFF00FFFF00FFBFBFBFF8F8F8F7F7F7F7F7F7F7F7F7F6
        F6F6F6F6F6F6F6F6D7D7D7999999AAAAAAFF00FFFF00FFFF00FFFF00FFFF00FF
        E7AB79D1926DD1926DD1926DD1926DD1926DD1926DD1926DD1926DA56B5FFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFBFBFBFB1B1B1B1B1B1B1B1B1B1B1B1B1
        B1B1B1B1B1B1B1B1B1B1B1999999FF00FFFF00FFFF00FFFF00FF}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SB_LocClick
    end
    object Label19: TLabel
      Left = 44
      Top = 15
      Width = 42
      Height = 13
      Caption = '&Localizar'
      FocusControl = edtLocalizar
    end
    object Label20: TLabel
      Left = 323
      Top = 15
      Width = 33
      Height = 13
      Caption = '&Campo'
      FocusControl = cmbCampo
    end
    object edtLocalizar: TEdit
      Left = 44
      Top = 29
      Width = 277
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object cmbCampo: TComboBox
      Left = 323
      Top = 29
      Width = 113
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = 'C'#243'digo'
      Items.Strings = (
        'C'#243'digo'
        'Descri'#231#227'o')
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 66
    Width = 454
    Height = 168
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 452
      Height = 166
      Align = alClient
      DataSource = DSGrupo1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = bitConfirmaClick
      Columns = <
        item
          Expanded = False
          FieldName = 'SGP_CODIGO'
          Title.Caption = 'C'#243'digo'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SGP_DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 352
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 234
    Width = 454
    Height = 40
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 2
    object bitConfirma: TBitBtn
      Left = 258
      Top = 7
      Width = 90
      Height = 25
      Caption = '&Confirma '
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = bitConfirmaClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        0800000000000002000000000000000000000001000000000000000000000000
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
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD10
        10FDFDFDFDFDFDFDFDFDFDFDFDFDFD9B9BFDFDFDFDFDFDFDFDFDFDFDFDFD1029
        2910FDFDFDFDFDFDFDFDFDFDFDFD9BF7F79BFDFDFDFDFDFDFDFDFDFDFD103229
        292910FDFDFDFDFDFDFDFDFDFD9BF7F7F7F79BFDFDFDFDFDFDFDFDFD10737229
        10292910FDFDFDFDFDFDFDFD9B0707F79BF7F79BFDFDFDFDFDFDFD10737B2A10
        FD10212910FDFDFDFDFDFD9B0707F79BFD9BA4F79BFDFDFDFDFDFDFD107210FD
        FDFDFD102910FDFDFDFDFDFD9B079BFDFDFDFD9BF79BFDFDFDFDFDFDFD10FDFD
        FDFDFDFD102110FDFDFDFDFDFD9BFDFDFDFDFDFD9BA49BFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFD1010FDFDFDFDFDFDFDFDFDFDFDFDFDFD9B9BFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFD1010FDFDFDFDFDFDFDFDFDFDFDFDFDFD9B9BFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 347
      Top = 7
      Width = 90
      Height = 25
      Cancel = True
      Caption = '&Fechar'
      ModalResult = 2
      TabOrder = 1
      OnClick = BitBtn2Click
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
    end
  end
  object SubGrupo1: TSubGrupo
    DatabaseName = 'DBguerra'
    SQL.Strings = (
      'SELECT * '
      'FROM SUBGRUPO'
      'WHERE GRP_CODIGO=:GRP_CODIGO'
      'ORDER BY SGP_DESCRICAO')
    CNCOrigem = 0
    CentroDeCusto = 1
    CodigoCNC = 0
    CodigoUSU = 0
    Mafalda = 0
    Maquina = 1
    Tabela = 'SUBGRUPO'
    CodigoGRP = 0
    CodigoSGP = 0
    Fabricar = False
    PrecoDolar = False
    ServicoObrigatorio = False
    Situacao = 0
    Left = 35
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GRP_CODIGO'
        ParamType = ptUnknown
      end>
    object SubGrupo1SGP_CODIGO: TIntegerField
      FieldName = 'SGP_CODIGO'
      Origin = 'DBGUERRA.SUBGRUPO.SGP_CODIGO'
    end
    object SubGrupo1CNC_CODIGO: TIntegerField
      FieldName = 'CNC_CODIGO'
      Origin = 'DBGUERRA.SUBGRUPO.CNC_CODIGO'
    end
    object SubGrupo1GRP_CODIGO: TIntegerField
      FieldName = 'GRP_CODIGO'
      Origin = 'DBGUERRA.SUBGRUPO.GRP_CODIGO'
    end
    object SubGrupo1SGP_DESCRICAO: TStringField
      FieldName = 'SGP_DESCRICAO'
      Origin = 'DBGUERRA.SUBGRUPO.SGP_DESCRICAO'
      FixedChar = True
      Size = 40
    end
    object SubGrupo1SGP_OBSERVACAO: TStringField
      FieldName = 'SGP_OBSERVACAO'
      Origin = 'DBGUERRA.SUBGRUPO.SGP_OBSERVACAO'
      FixedChar = True
      Size = 30
    end
    object SubGrupo1SGP_QUANTIDADE_NORMAL: TFloatField
      FieldName = 'SGP_QUANTIDADE_NORMAL'
      Origin = 'DBGUERRA.SUBGRUPO.SGP_QUANTIDADE_NORMAL'
    end
    object SubGrupo1SGP_BASE_CHAVE: TStringField
      FieldName = 'SGP_BASE_CHAVE'
      Origin = 'DBGUERRA.SUBGRUPO.SGP_BASE_CHAVE'
      FixedChar = True
      Size = 100
    end
    object SubGrupo1SGP_FAMILIA: TStringField
      FieldName = 'SGP_FAMILIA'
      Origin = 'DBGUERRA.SUBGRUPO.SGP_FAMILIA'
      FixedChar = True
      Size = 100
    end
    object SubGrupo1SGP_SITUACAO: TIntegerField
      FieldName = 'SGP_SITUACAO'
      Origin = 'DBGUERRA.SUBGRUPO.SGP_SITUACAO'
    end
    object SubGrupo1SGP_DT_CADASTRO: TDateTimeField
      FieldName = 'SGP_DT_CADASTRO'
      Origin = 'DBGUERRA.SUBGRUPO.SGP_DT_CADASTRO'
    end
    object SubGrupo1SGP_DT_ALTERADO: TDateTimeField
      FieldName = 'SGP_DT_ALTERADO'
      Origin = 'DBGUERRA.SUBGRUPO.SGP_DT_ALTERADO'
    end
    object SubGrupo1USU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'DBGUERRA.SUBGRUPO.USU_CODIGO'
    end
    object SubGrupo1SGP_INDICE_REFRACAO: TFloatField
      FieldName = 'SGP_INDICE_REFRACAO'
      Origin = 'DBGUERRA.SUBGRUPO.SGP_INDICE_REFRACAO'
    end
    object SubGrupo1SGP_FABRICAR: TIntegerField
      FieldName = 'SGP_FABRICAR'
      Origin = 'DBGUERRA.SUBGRUPO.SGP_FABRICAR'
    end
    object SubGrupo1SGP_PRECO_DOLAR: TAutoIncField
      FieldName = 'SGP_PRECO_DOLAR'
      Origin = 'DBGUERRA.SUBGRUPO.SGP_PRECO_DOLAR'
    end
    object SubGrupo1SGP_EIXOS: TStringField
      FieldName = 'SGP_EIXOS'
      Origin = 'DBGUERRA.SUBGRUPO.SGP_EIXOS'
      FixedChar = True
      Size = 100
    end
    object SubGrupo1SGP_SERVICO_OBRIGATORIO: TIntegerField
      FieldName = 'SGP_SERVICO_OBRIGATORIO'
      Origin = 'DBGUERRA.SUBGRUPO.SGP_SERVICO_OBRIGATORIO'
    end
  end
  object DSGrupo1: TDataSource
    DataSet = SubGrupo1
    Left = 7
    Top = 240
  end
end
