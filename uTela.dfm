object fTela: TfTela
  Left = 264
  Top = 64
  Width = 864
  Height = 600
  Caption = 'Importa'#231#227'o NFSe  (10/05/2016) V.20.00'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 848
    Height = 116
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 45
      Top = 11
      Width = 219
      Height = 13
      Alignment = taRightJustify
      Caption = 'Informar o local para gravar o arquivo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Diretorio: TLabel
      Left = 234
      Top = 33
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pasta:'
    end
    object Label1: TLabel
      Left = 229
      Top = 75
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Layout:'
    end
    object Label10: TLabel
      Left = 25
      Top = 60
      Width = 37
      Height = 13
      Caption = '% IRPJ:'
      Visible = False
    end
    object Label11: TLabel
      Left = 22
      Top = 80
      Width = 40
      Height = 13
      Caption = '% CSLL:'
      Visible = False
    end
    object Label13: TLabel
      Left = 160
      Top = 98
      Width = 104
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#225'lculo do Pis/Cofins:'
    end
    object DirectoryEdit1: TDirectoryEdit
      Left = 266
      Top = 5
      Width = 400
      Height = 21
      NumGlyphs = 1
      TabOrder = 0
    end
    object edtDiretorio: TDirectoryEdit
      Left = 266
      Top = 27
      Width = 400
      Height = 21
      DialogKind = dkWin32
      InitialDir = 'C:\'
      MultipleDirs = True
      NumGlyphs = 1
      TabOrder = 1
    end
    object chkSub: TCheckBox
      Left = 266
      Top = 50
      Width = 145
      Height = 17
      Caption = 'Incluir Subpastas'
      TabOrder = 2
    end
    object ComboBox1: TComboBox
      Left = 266
      Top = 67
      Width = 145
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ItemIndex = 3
      ParentFont = False
      TabOrder = 3
      Text = 'Porto Alegre'
      Items.Strings = (
        'Campo Bom'
        'Novo Hamburgo'
        'S'#227'o Leopoldo'
        'Porto Alegre')
    end
    object CheckBox1: TCheckBox
      Left = 48
      Top = 36
      Width = 90
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Empresa Geral'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      Visible = False
      OnClick = CheckBox1Click
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 65
      Top = 52
      Width = 73
      Height = 21
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '0.00'
      ParentCtl3D = False
      TabOrder = 5
      Value = 32.000000000000000000
      Visible = False
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 65
      Top = 72
      Width = 73
      Height = 21
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '0.00'
      ParentCtl3D = False
      TabOrder = 6
      Value = 32.000000000000000000
      Visible = False
    end
    object ckCampoBom_Novo: TCheckBox
      Left = 434
      Top = 48
      Width = 223
      Height = 17
      Caption = 'Usar novo m'#233'todo de Campo Bom'
      Checked = True
      State = cbChecked
      TabOrder = 7
      Visible = False
    end
    object ckPis: TCheckBox
      Left = 712
      Top = 4
      Width = 100
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Gerar Pis'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
      OnClick = CheckBox1Click
    end
    object ComboBox2: TComboBox
      Left = 266
      Top = 90
      Width = 279
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ItemIndex = 0
      ParentFont = False
      TabOrder = 9
      Text = '0=C'#225'lculo de PIS COFINS '#233' conforme vem na nfse'
      Items.Strings = (
        '0=C'#225'lculo de PIS COFINS '#233' conforme vem na nfse'
        '1=Autom'#225'tico')
    end
    object ckCofins: TCheckBox
      Left = 712
      Top = 20
      Width = 100
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Gerar Cofins'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 10
      OnClick = CheckBox1Click
    end
    object ckCSLL: TCheckBox
      Left = 712
      Top = 36
      Width = 100
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Gerar CSLL'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 11
      OnClick = CheckBox1Click
    end
    object ckIRPJ: TCheckBox
      Left = 712
      Top = 52
      Width = 100
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Gerar IRPJ'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 12
      OnClick = CheckBox1Click
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 116
    Width = 848
    Height = 446
    ActivePage = TabSheet3
    ActivePageDefault = TabSheet2
    Align = alClient
    UseColoredTabs = True
    TabIndex = 4
    TabOrder = 1
    FixedDimension = 19
    object TabSheet5: TRzTabSheet
      Caption = 'Campo Bom'
      object RzGroupBox1: TRzGroupBox
        Left = 0
        Top = 256
        Width = 844
        Height = 167
        Align = alBottom
        BorderColor = clOlive
        BorderInner = fsButtonUp
        BorderOuter = fsBump
        Caption = ' Itens (Campo Bom)'
        Color = clSilver
        Ctl3D = True
        FlatColor = clOlive
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        VisualStyle = vsGradient
        object SMDBGrid2: TSMDBGrid
          Left = 5
          Top = 18
          Width = 834
          Height = 144
          Align = alClient
          DataSource = dsCBomDet
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clGreen
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Flat = False
          BandsFont.Charset = DEFAULT_CHARSET
          BandsFont.Color = clWindowText
          BandsFont.Height = -11
          BandsFont.Name = 'MS Sans Serif'
          BandsFont.Style = []
          Groupings = <>
          GridStyle.Style = gsCustom
          GridStyle.OddColor = clWindow
          GridStyle.EvenColor = clWindow
          TitleHeight.PixelCount = 24
          FooterColor = clBtnFace
          ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 2
          RowCount = 2
        end
      end
      object RzGroupBox2: TRzGroupBox
        Left = 0
        Top = 33
        Width = 844
        Height = 223
        Align = alClient
        BorderColor = clOlive
        BorderInner = fsButtonUp
        BorderOuter = fsBump
        Caption = ' Notas '
        Color = clSilver
        Ctl3D = True
        FlatColor = clOlive
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        VisualStyle = vsGradient
        object SMDBGrid1: TSMDBGrid
          Left = 5
          Top = 18
          Width = 834
          Height = 200
          Align = alClient
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clGreen
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Flat = False
          BandsFont.Charset = DEFAULT_CHARSET
          BandsFont.Color = clWindowText
          BandsFont.Height = -11
          BandsFont.Name = 'MS Sans Serif'
          BandsFont.Style = []
          Groupings = <>
          GridStyle.Style = gsCustom
          GridStyle.OddColor = clWindow
          GridStyle.EvenColor = clWindow
          TitleHeight.PixelCount = 24
          FooterColor = clBtnFace
          ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          ColCount = 2
          RowCount = 2
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 844
        Height = 33
        Align = alTop
        Color = 16751415
        TabOrder = 2
        DesignSize = (
          844
          33)
        object Label2: TLabel
          Left = 30
          Top = 14
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Arquivo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object FilenameEdit1: TFilenameEdit
          Left = 80
          Top = 6
          Width = 361
          Height = 21
          Filter = 'Arquivo XML|*.xml|All files (*.*)|*.*'
          NumGlyphs = 1
          TabOrder = 0
          Text = 'FilenameEdit1'
        end
        object btnCarregaXML: TBitBtn
          Left = 639
          Top = 4
          Width = 200
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Carregar um arquivo XML espec'#237'fico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btnCarregaXMLClick
        end
      end
    end
    object TabSheet6: TRzTabSheet
      Caption = 'Novo Hamburgo / S'#227'o Leopoldo'
      object dbgNFSeToCds: TDBGrid
        Left = 0
        Top = 33
        Width = 844
        Height = 390
        Align = alClient
        DataSource = dsNFSe
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 844
        Height = 33
        Align = alTop
        Color = 16751415
        TabOrder = 1
        DesignSize = (
          844
          33)
        object btnCarregarXML: TBitBtn
          Left = 639
          Top = 4
          Width = 200
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Carregar um arquivo XML espec'#237'fico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnCarregarXMLClick
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Gerar V'#225'rios XML'
      object MemLista: TMemo
        Left = 0
        Top = 33
        Width = 844
        Height = 232
        Align = alTop
        Lines.Strings = (
          'MemLista')
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 265
        Width = 844
        Height = 158
        Align = alClient
        Caption = 
          ' Arquivos que apresentaram erros e n'#227'o gravaram os Clientes/Prod' +
          'utos '
        TabOrder = 1
        object Memo1: TMemo
          Left = 2
          Top = 15
          Width = 840
          Height = 141
          Align = alClient
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 844
        Height = 33
        Align = alTop
        Color = 16751415
        TabOrder = 2
        DesignSize = (
          844
          33)
        object Label4: TLabel
          Left = 7
          Top = 12
          Width = 97
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total XML Lidos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 196
          Top = 12
          Width = 84
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total XML OK:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 370
          Top = 12
          Width = 118
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total XML Com Erro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 490
          Top = 12
          Width = 70
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
          Color = cl3DLight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label8: TLabel
          Left = 282
          Top = 12
          Width = 70
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
          Color = cl3DLight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label9: TLabel
          Left = 106
          Top = 12
          Width = 70
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
          Color = cl3DLight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object BitBtn2: TBitBtn
          Left = 680
          Top = 4
          Width = 160
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Gerar Importa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn2Click
        end
      end
    end
    object TS_Nova_Geracao: TRzTabSheet
      Caption = 'Nova Gera'#231#227'o'
      object DBGrid: TDBGrid
        Left = 0
        Top = 41
        Width = 844
        Height = 382
        Align = alClient
        DataSource = dsNovaGeracao
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 844
        Height = 41
        Align = alTop
        Color = 16760962
        TabOrder = 1
        object Label12: TLabel
          Left = 368
          Top = 8
          Width = 84
          Height = 23
          Caption = 'Label12'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Button2: TButton
          Left = 8
          Top = 8
          Width = 105
          Height = 25
          Caption = 'NFSe-CB'
          TabOrder = 0
          Visible = False
          OnClick = Button2Click
        end
        object Button1: TButton
          Left = 232
          Top = 8
          Width = 105
          Height = 25
          Caption = 'NFSe-NH'
          TabOrder = 1
          Visible = False
          OnClick = Button1Click
        end
        object btnNFSePOA: TButton
          Left = 121
          Top = 8
          Width = 105
          Height = 25
          Caption = 'NFSe-POA'
          TabOrder = 2
          OnClick = btnNFSePOAClick
        end
      end
    end
    object TabSheet3: TRzTabSheet
      Caption = 'Gerar o Arquivo EBS'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 844
        Height = 33
        Align = alTop
        Color = 16751415
        TabOrder = 0
        DesignSize = (
          844
          33)
        object BitBtn1: TBitBtn
          Left = 678
          Top = 4
          Width = 160
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Gerar Arq. NotaSai.TXT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn1Click
        end
      end
      object SMDBGrid3: TSMDBGrid
        Left = 0
        Top = 33
        Width = 844
        Height = 390
        Align = alClient
        DataSource = dsmAuxiliar
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Flat = False
        BandsFont.Charset = DEFAULT_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'MS Sans Serif'
        BandsFont.Style = []
        Groupings = <>
        GridStyle.Style = gsCustom
        GridStyle.OddColor = clWindow
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 89
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'Cab_CNPJ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cab_Opc_CalcImpCont'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cab_Opc_CalcRet'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Det_CNPJ_CPF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Det_Nome_Cliente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Det_Fantasia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Det_UF_Cli'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Det_InscEstadual_Cli'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Det_Endereco_Cli'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Det_Bairro_Cli'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Det_Cidade_Cli'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Det_Cep_Cli'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Det_CodMunicipio_SIAFI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Det_DDD_Cli'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Det_Fone_Cli'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Det_Conta_CTB_Cli'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Det_Hist_CTB_Cli'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Det_Conta_CTB_Forn'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Det_Hist_CTB_Forn'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Det_Produto_Rural'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Det_Pais'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Det_Num_End'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Det_Complemento_Cli'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Det_Suframa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Det_CodPais'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Det_NatJuridica'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Det_CodMunicipio_IBGE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_DtLancamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Nota_Inicial'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Nota_Final'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_DtEmissao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Modelo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Serie'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_SubSerie'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_CFOP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_CFOP_Variacao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Classificacao1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Classificacao2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_CNPJCPF_Dest'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Vlr_Contabil'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Base_Pis'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Base_Cofins'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Base_CSLL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Base_IRPJ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Base_ICMS_A'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Base_ICMS_B'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Base_ICMS_C'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Base_ICMS_D'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Aliq_ICMS_A'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Aliq_ICMS_B'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Aliq_ICMS_C'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Aliq_ICMS_D'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Vlr_ICMS_A'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Vlr_ICMS_B'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Vlr_ICMS_C'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Vlr_ICMS_D'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Isentas_ICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Outras_ICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Base_IPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Vlr_IPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Isentas_IPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Outras_IPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Vlr_SubstTributaria'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Base_ST'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_ICMS_ST'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Diferidas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Base_ISS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Aliq_ISS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Vlr_ISS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Isentas_ISS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_IRRF_Retido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Obs_LivroFiscal'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Especie'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_VendaAVista'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_CFOP_ST'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Base_PisCofins_ST'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Modalidade_Frete'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Pis_Retido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Cofins_Retido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_CSLL_Retido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_DtRecebimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Operacao_CTB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Vlr_Materiais'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Vlr_SubEmpreitada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Cod_Servico'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Pais'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Not_Obs_LivroFiscal_2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cpl_Vlr_Desconto'
            Title.Alignment = taCenter
            Title.Caption = 'cpl Vlr. Desconto'
            Visible = True
          end>
      end
    end
    object TabSheet4: TRzTabSheet
      Caption = 'Cidade Por SIAFI'
      object RzGroupBox3: TRzGroupBox
        Left = 0
        Top = 0
        Width = 844
        Height = 423
        Align = alClient
        BorderColor = clOlive
        BorderInner = fsButtonUp
        BorderOuter = fsBump
        Caption = 'Munic'#237'pios '
        Color = clSilver
        Ctl3D = True
        FlatColor = clOlive
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        VisualStyle = vsGradient
        OnExit = RzGroupBox3Exit
        object SMDBGrid4: TSMDBGrid
          Left = 5
          Top = 18
          Width = 834
          Height = 400
          Align = alClient
          DataSource = dsmCidade
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clGreen
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Flat = False
          BandsFont.Charset = DEFAULT_CHARSET
          BandsFont.Color = clWindowText
          BandsFont.Height = -11
          BandsFont.Name = 'MS Sans Serif'
          BandsFont.Style = []
          Groupings = <>
          GridStyle.Style = gsCustom
          GridStyle.OddColor = clWindow
          GridStyle.EvenColor = clWindow
          TitleHeight.PixelCount = 24
          FooterColor = clBtnFace
          ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
          RegistryKey = 'Software\Scalabium'
          RegistrySection = 'SMDBGrid'
          WidthOfIndicator = 11
          DefaultRowHeight = 17
          ScrollBars = ssHorizontal
          RowCount = 2
          Columns = <
            item
              Expanded = False
              FieldName = 'NomeCidade'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Cidade'
              Width = 297
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UF'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Width = 39
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CodSIAFI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'd. SIAFI'
              Width = 110
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CodIBGE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'd. IBGE'
              Width = 137
              Visible = True
            end>
        end
      end
    end
  end
  object XMLTransformProvider1: TXMLTransformProvider
    TransformRead.TransformationFile = 'Z:\$Servisoft\ImportaNotas\novo_hamburgo.xtr'
    XMLDataFile = 
      'D:\Documentos Servisoft\XMLNFe\2013-03\NF00093121270001105500T00' +
      '0000473931346412.xml'
    CacheData = True
    Left = 168
    Top = 304
  end
  object cdsCampoBom: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'XMLTransformProvider1'
    Left = 168
    Top = 336
    object cdsCampoBomversao: TStringField
      FieldName = 'versao'
      Size = 4
    end
    object cdsCampoBomcNFSe: TStringField
      FieldName = 'cNFS-e'
      Size = 9
    end
    object cdsCampoBomnatOp: TStringField
      FieldName = 'natOp'
      Size = 21
    end
    object cdsCampoBommod: TStringField
      FieldName = 'mod'
      Size = 2
    end
    object cdsCampoBomserie: TStringField
      FieldName = 'serie'
      Size = 3
    end
    object cdsCampoBomnNFSe: TStringField
      FieldName = 'nNFS-e'
      Size = 9
    end
    object cdsCampoBomdEmi: TStringField
      FieldName = 'dEmi'
      Size = 10
    end
    object cdsCampoBomdSaiEnt: TStringField
      FieldName = 'dSaiEnt'
      Size = 32
    end
    object cdsCampoBomcMunFG: TStringField
      FieldName = 'cMunFG'
      Size = 1
    end
    object cdsCampoBomrefNF: TStringField
      FieldName = 'refNF'
      Size = 39
    end
    object cdsCampoBomanulada: TStringField
      FieldName = 'anulada'
      Size = 1
    end
    object cdsCampoBomnotadebito: TStringField
      FieldName = 'notadebito'
      Size = 1
    end
    object cdsCampoBomdescDesconto: TStringField
      FieldName = 'descDesconto'
      Size = 32
    end
    object cdsCampoBomdescCondEsp: TStringField
      FieldName = 'descCondEsp'
      Size = 32
    end
    object cdsCampoBomnumeroArt: TStringField
      FieldName = 'numeroArt'
      Size = 32
    end
    object cdsCampoBomnumeroCei: TStringField
      FieldName = 'numeroCei'
      Size = 32
    end
    object cdsCampoBomemit_CNPJ: TStringField
      FieldName = 'emit_CNPJ'
      Size = 14
    end
    object cdsCampoBomemit_xNome: TStringField
      FieldName = 'emit_xNome'
      Size = 26
    end
    object cdsCampoBomxFant: TStringField
      FieldName = 'xFant'
      Size = 32
    end
    object cdsCampoBomend_xLgr: TStringField
      FieldName = 'end_xLgr'
      Size = 26
    end
    object cdsCampoBomend_nro: TStringField
      FieldName = 'end_nro'
      Size = 3
    end
    object cdsCampoBomend_xCpl: TStringField
      FieldName = 'end_xCpl'
      Size = 7
    end
    object cdsCampoBomend_xBairro: TStringField
      FieldName = 'end_xBairro'
      Size = 32
    end
    object cdsCampoBomend_cMun: TStringField
      FieldName = 'end_cMun'
      Size = 4
    end
    object cdsCampoBomend_xMun: TStringField
      FieldName = 'end_xMun'
    end
    object cdsCampoBomend_UF: TStringField
      FieldName = 'end_UF'
      Size = 2
    end
    object cdsCampoBomend_CEP: TStringField
      FieldName = 'end_CEP'
      Size = 8
    end
    object cdsCampoBomend_cPais: TStringField
      FieldName = 'end_cPais'
      Size = 2
    end
    object cdsCampoBomend_xPais: TStringField
      FieldName = 'end_xPais'
      Size = 6
    end
    object cdsCampoBomfone: TStringField
      FieldName = 'fone'
      Size = 9
    end
    object cdsCampoBomemit_IE: TStringField
      FieldName = 'emit_IE'
      Size = 32
    end
    object cdsCampoBomIEST: TStringField
      FieldName = 'IEST'
      Size = 32
    end
    object cdsCampoBomemit_IM: TStringField
      FieldName = 'emit_IM'
      Size = 5
    end
    object cdsCampoBomTomS_CNPJ: TStringField
      FieldName = 'TomS_CNPJ'
      Size = 14
    end
    object cdsCampoBomTomS_xNome: TStringField
      FieldName = 'TomS_xNome'
      Size = 26
    end
    object cdsCampoBomender_xLgr: TStringField
      FieldName = 'ender_xLgr'
      Size = 26
    end
    object cdsCampoBomender_nro: TStringField
      FieldName = 'ender_nro'
      Size = 3
    end
    object cdsCampoBomender_xCpl: TStringField
      FieldName = 'ender_xCpl'
      Size = 7
    end
    object cdsCampoBomender_xBairro: TStringField
      FieldName = 'ender_xBairro'
      Size = 32
    end
    object cdsCampoBomender_cMun: TStringField
      FieldName = 'ender_cMun'
      Size = 4
    end
    object cdsCampoBomender_xMun: TStringField
      FieldName = 'ender_xMun'
      Size = 9
    end
    object cdsCampoBomender_UF: TStringField
      FieldName = 'ender_UF'
      Size = 2
    end
    object cdsCampoBomender_CEP: TStringField
      FieldName = 'ender_CEP'
      Size = 8
    end
    object cdsCampoBomender_cPais: TStringField
      FieldName = 'ender_cPais'
      Size = 2
    end
    object cdsCampoBomender_xPais: TStringField
      FieldName = 'ender_xPais'
      Size = 6
    end
    object cdsCampoBomTomS_IE: TStringField
      FieldName = 'TomS_IE'
      Size = 32
    end
    object cdsCampoBomTomS_IM: TStringField
      FieldName = 'TomS_IM'
      Size = 5
    end
    object cdsCampoBomIMSTS: TStringField
      FieldName = 'IMSTS'
      Size = 32
    end
    object cdsCampoBomPraca: TStringField
      FieldName = 'Praca'
      Size = 12
    end
    object cdsCampoBomvReemb: TStringField
      FieldName = 'vReemb'
      Size = 4
    end
    object cdsCampoBomvBCISS: TStringField
      FieldName = 'vBCISS'
      Size = 6
    end
    object cdsCampoBomvISS: TStringField
      FieldName = 'vISS'
      Size = 4
    end
    object cdsCampoBomvBCSTISS: TStringField
      FieldName = 'vBCSTISS'
      Size = 4
    end
    object cdsCampoBomvSTISS: TStringField
      FieldName = 'vSTISS'
      Size = 4
    end
    object cdsCampoBomvServ: TStringField
      FieldName = 'vServ'
      Size = 6
    end
    object cdsCampoBomvDesc1: TStringField
      FieldName = 'vDesc1'
      Size = 4
    end
    object cdsCampoBomvOutro: TStringField
      FieldName = 'vOutro'
      Size = 4
    end
    object cdsCampoBomvtNF: TStringField
      FieldName = 'vtNF'
      Size = 6
    end
    object cdsCampoBomvtLiq: TStringField
      FieldName = 'vtLiq'
      Size = 6
    end
    object cdsCampoBomnFat: TStringField
      FieldName = 'nFat'
      Size = 32
    end
    object cdsCampoBomvOrig: TStringField
      FieldName = 'vOrig'
      Size = 6
    end
    object cdsCampoBomvDesc2: TStringField
      FieldName = 'vDesc2'
      Size = 4
    end
    object cdsCampoBomvLiq: TStringField
      FieldName = 'vLiq'
      Size = 6
    end
    object cdsCampoBomnDup: TStringField
      FieldName = 'nDup'
      Size = 3
    end
    object cdsCampoBomdVenc: TStringField
      FieldName = 'dVenc'
      Size = 10
    end
    object cdsCampoBomvDup: TStringField
      FieldName = 'vDup'
      Size = 6
    end
    object cdsCampoBomxinf: TMemoField
      FieldName = 'xinf'
      BlobType = ftMemo
    end
    object cdsCampoBomdet: TDataSetField
      FieldName = 'det'
      UnNamed = True
    end
    object cdsCampoBomTomS_CPF: TStringField
      FieldName = 'TomS_CPF'
      Size = 11
    end
  end
  object cdsCBomDet: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCampoBomdet
    Params = <>
    Left = 168
    Top = 368
  end
  object dsCampoBom: TDataSource
    DataSet = cdsCampoBom
    Left = 200
    Top = 336
  end
  object dsCBomDet: TDataSource
    DataSet = cdsCBomDet
    Left = 203
    Top = 368
  end
  object mAuxiliar: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Cab_CNPJ'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'Cab_Opc_CalcImpCont'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Cab_Opc_CalcRet'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Det_CNPJ_CPF'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'Det_Nome_Cliente'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Det_Fantasia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Det_UF_Cli'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Det_InscEstadual_Cli'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Det_Endereco_Cli'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Det_Bairro_Cli'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Det_Cidade_Cli'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Det_Cep_Cli'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Det_CodMunicipio_SIAFI'
        DataType = ftInteger
      end
      item
        Name = 'Det_DDD_Cli'
        DataType = ftInteger
      end
      item
        Name = 'Det_Fone_Cli'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Det_Conta_CTB_Cli'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Det_Hist_CTB_Cli'
        DataType = ftInteger
      end
      item
        Name = 'Det_Conta_CTB_Forn'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Det_Hist_CTB_Forn'
        DataType = ftInteger
      end
      item
        Name = 'Det_Produto_Rural'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Det_Pais'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'Det_Num_End'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Det_Complemento_Cli'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Det_Suframa'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'Det_CodPais'
        DataType = ftInteger
      end
      item
        Name = 'Det_NatJuridica'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Det_CodMunicipio_IBGE'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'Not_DtLancamento'
        DataType = ftDate
      end
      item
        Name = 'Not_Nota_Inicial'
        DataType = ftInteger
      end
      item
        Name = 'Not_Nota_Final'
        DataType = ftInteger
      end
      item
        Name = 'Not_DtEmissao'
        DataType = ftDate
      end
      item
        Name = 'Not_Modelo'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Not_Serie'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Not_SubSerie'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Not_CFOP'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Not_CFOP_Variacao'
        DataType = ftInteger
      end
      item
        Name = 'Not_Classificacao1'
        DataType = ftInteger
      end
      item
        Name = 'Not_Classificacao2'
        DataType = ftInteger
      end
      item
        Name = 'Not_CNPJCPF_Dest'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'Not_Vlr_Contabil'
        DataType = ftFloat
      end
      item
        Name = 'Not_Base_Pis'
        DataType = ftFloat
      end
      item
        Name = 'Not_Base_Cofins'
        DataType = ftFloat
      end
      item
        Name = 'Not_Base_CSLL'
        DataType = ftFloat
      end
      item
        Name = 'Not_Base_IRPJ'
        DataType = ftFloat
      end
      item
        Name = 'Not_Base_ICMS_A'
        DataType = ftFloat
      end
      item
        Name = 'Not_Base_ICMS_B'
        DataType = ftFloat
      end
      item
        Name = 'Not_Base_ICMS_C'
        DataType = ftFloat
      end
      item
        Name = 'Not_Base_ICMS_D'
        DataType = ftFloat
      end
      item
        Name = 'Not_Aliq_ICMS_A'
        DataType = ftFloat
      end
      item
        Name = 'Not_Aliq_ICMS_B'
        DataType = ftFloat
      end
      item
        Name = 'Not_Aliq_ICMS_C'
        DataType = ftFloat
      end
      item
        Name = 'Not_Aliq_ICMS_D'
        DataType = ftFloat
      end
      item
        Name = 'Not_Vlr_ICMS_A'
        DataType = ftFloat
      end
      item
        Name = 'Not_Vlr_ICMS_B'
        DataType = ftFloat
      end
      item
        Name = 'Not_Vlr_ICMS_C'
        DataType = ftFloat
      end
      item
        Name = 'Not_Vlr_ICMS_D'
        DataType = ftFloat
      end
      item
        Name = 'Not_Isentas_ICMS'
        DataType = ftFloat
      end
      item
        Name = 'Not_Outras_ICMS'
        DataType = ftFloat
      end
      item
        Name = 'Not_Base_IPI'
        DataType = ftFloat
      end
      item
        Name = 'Not_Vlr_IPI'
        DataType = ftFloat
      end
      item
        Name = 'Not_Isentas_IPI'
        DataType = ftFloat
      end
      item
        Name = 'Not_Outras_IPI'
        DataType = ftFloat
      end
      item
        Name = 'Not_Vlr_SubstTributaria'
        DataType = ftFloat
      end
      item
        Name = 'Not_Base_ST'
        DataType = ftFloat
      end
      item
        Name = 'Not_ICMS_ST'
        DataType = ftFloat
      end
      item
        Name = 'Not_Diferidas'
        DataType = ftFloat
      end
      item
        Name = 'Not_Base_ISS'
        DataType = ftFloat
      end
      item
        Name = 'Not_Aliq_ISS'
        DataType = ftFloat
      end
      item
        Name = 'Not_Vlr_ISS'
        DataType = ftFloat
      end
      item
        Name = 'Not_Isentas_ISS'
        DataType = ftFloat
      end
      item
        Name = 'Not_IRRF_Retido'
        DataType = ftFloat
      end
      item
        Name = 'Not_Obs_LivroFiscal'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Not_Especie'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Not_VendaAVista'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Not_CFOP_ST'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'Not_Base_PisCofins_ST'
        DataType = ftFloat
      end
      item
        Name = 'Not_Modalidade_Frete'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Not_Pis_Retido'
        DataType = ftFloat
      end
      item
        Name = 'Not_Cofins_Retido'
        DataType = ftFloat
      end
      item
        Name = 'Not_CSLL_Retido'
        DataType = ftFloat
      end
      item
        Name = 'Not_DtRecebimento'
        DataType = ftDate
      end
      item
        Name = 'Not_Operacao_CTB'
        DataType = ftInteger
      end
      item
        Name = 'Not_Vlr_Materiais'
        DataType = ftFloat
      end
      item
        Name = 'Not_Vlr_SubEmpreitada'
        DataType = ftFloat
      end
      item
        Name = 'Not_Cod_Servico'
        DataType = ftInteger
      end
      item
        Name = 'Not_Pais'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'Not_Obs_LivroFiscal_2'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Cpl_ChaveNFSe'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'Cpl_Vlr_Inss_Retido'
        DataType = ftFloat
      end
      item
        Name = 'cpl_ISS_Retido'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'cpl_Vlr_Desconto'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 601
    Top = 264
    Data = {
      300A00009619E0BD01000000180000005B000000000003000000300A08436162
      5F434E504A0100490000000100055749445448020002001200134361625F4F70
      635F43616C63496D70436F6E7401004900000001000557494454480200020001
      000F4361625F4F70635F43616C63526574010049000000010005574944544802
      00020001000C4465745F434E504A5F4350460100490000000100055749445448
      020002001200104465745F4E6F6D655F436C69656E7465010049000000010005
      57494454480200020028000C4465745F46616E74617369610100490000000100
      0557494454480200020014000A4465745F55465F436C69010049000000010005
      5749445448020002000200144465745F496E7363457374616475616C5F436C69
      0100490000000100055749445448020002001400104465745F456E6465726563
      6F5F436C6901004900000001000557494454480200020028000E4465745F4261
      6972726F5F436C6901004900000001000557494454480200020014000E446574
      5F4369646164655F436C6901004900000001000557494454480200020014000B
      4465745F4365705F436C69010049000000010005574944544802000200080016
      4465745F436F644D756E69636970696F5F534941464904000100000000000B44
      65745F4444445F436C6904000100000000000C4465745F466F6E655F436C6901
      00490000000100055749445448020002000A00114465745F436F6E74615F4354
      425F436C690100490000000100055749445448020002000600104465745F4869
      73745F4354425F436C690400010000000000124465745F436F6E74615F435442
      5F466F726E0100490000000100055749445448020002000600114465745F4869
      73745F4354425F466F726E0400010000000000114465745F50726F6475746F5F
      527572616C0100490000000100055749445448020002000100084465745F5061
      697301004900000001000557494454480200020012000B4465745F4E756D5F45
      6E640100490000000100055749445448020002000500134465745F436F6D706C
      656D656E746F5F436C6901004900000001000557494454480200020014000B44
      65745F53756672616D6101004900000001000557494454480200020009000B44
      65745F436F645061697304000100000000000F4465745F4E61744A7572696469
      63610100490000000100055749445448020002000100154465745F436F644D75
      6E69636970696F5F494247450100490000000100055749445448020002000700
      104E6F745F44744C616E63616D656E746F0400060000000000104E6F745F4E6F
      74615F496E696369616C04000100000000000E4E6F745F4E6F74615F46696E61
      6C04000100000000000D4E6F745F4474456D697373616F04000600000000000A
      4E6F745F4D6F64656C6F0100490000000100055749445448020002000200094E
      6F745F536572696501004900000001000557494454480200020003000C4E6F74
      5F53756253657269650100490000000100055749445448020002000300084E6F
      745F43464F500100490000000100055749445448020002000400114E6F745F43
      464F505F566172696163616F0400010000000000124E6F745F436C6173736966
      69636163616F310400010000000000124E6F745F436C61737369666963616361
      6F320400010000000000104E6F745F434E504A4350465F446573740100490000
      000100055749445448020002001200104E6F745F566C725F436F6E746162696C
      08000400000000000C4E6F745F426173655F50697308000400000000000F4E6F
      745F426173655F436F66696E7308000400000000000D4E6F745F426173655F43
      534C4C08000400000000000D4E6F745F426173655F4952504A08000400000000
      000F4E6F745F426173655F49434D535F4108000400000000000F4E6F745F4261
      73655F49434D535F4208000400000000000F4E6F745F426173655F49434D535F
      4308000400000000000F4E6F745F426173655F49434D535F4408000400000000
      000F4E6F745F416C69715F49434D535F4108000400000000000F4E6F745F416C
      69715F49434D535F4208000400000000000F4E6F745F416C69715F49434D535F
      4308000400000000000F4E6F745F416C69715F49434D535F4408000400000000
      000E4E6F745F566C725F49434D535F4108000400000000000E4E6F745F566C72
      5F49434D535F4208000400000000000E4E6F745F566C725F49434D535F430800
      0400000000000E4E6F745F566C725F49434D535F440800040000000000104E6F
      745F4973656E7461735F49434D5308000400000000000F4E6F745F4F75747261
      735F49434D5308000400000000000C4E6F745F426173655F4950490800040000
      0000000B4E6F745F566C725F49504908000400000000000F4E6F745F4973656E
      7461735F49504908000400000000000E4E6F745F4F75747261735F4950490800
      040000000000174E6F745F566C725F5375627374547269627574617269610800
      0400000000000B4E6F745F426173655F535408000400000000000B4E6F745F49
      434D535F535408000400000000000D4E6F745F44696665726964617308000400
      000000000C4E6F745F426173655F49535308000400000000000C4E6F745F416C
      69715F49535308000400000000000B4E6F745F566C725F495353080004000000
      00000F4E6F745F4973656E7461735F49535308000400000000000F4E6F745F49
      5252465F52657469646F0800040000000000134E6F745F4F62735F4C6976726F
      46697363616C01004900000001000557494454480200020032000B4E6F745F45
      73706563696501004900000001000557494454480200020005000F4E6F745F56
      656E646141566973746101004900000001000557494454480200020001000B4E
      6F745F43464F505F53540100490000000100055749445448020002000400154E
      6F745F426173655F506973436F66696E735F53540800040000000000144E6F74
      5F4D6F64616C69646164655F4672657465010049000000010005574944544802
      00020001000E4E6F745F5069735F52657469646F0800040000000000114E6F74
      5F436F66696E735F52657469646F08000400000000000F4E6F745F43534C4C5F
      52657469646F0800040000000000114E6F745F44745265636562696D656E746F
      0400060000000000104E6F745F4F7065726163616F5F43544204000100000000
      00114E6F745F566C725F4D61746572696169730800040000000000154E6F745F
      566C725F537562456D707265697461646108000400000000000F4E6F745F436F
      645F5365727669636F0400010000000000084E6F745F50616973010049000000
      0100055749445448020002001200154E6F745F4F62735F4C6976726F46697363
      616C5F3201004900000001000557494454480200020032000D43706C5F436861
      76654E4653650100490000000100055749445448020002002D001343706C5F56
      6C725F496E73735F52657469646F08000400000000000E63706C5F4953535F52
      657469646F01004900000001000557494454480200020001001063706C5F566C
      725F446573636F6E746F08000400000000000000}
    object mAuxiliarCab_CNPJ: TStringField
      FieldName = 'Cab_CNPJ'
      Size = 18
    end
    object mAuxiliarCab_Opc_CalcImpCont: TStringField
      FieldName = 'Cab_Opc_CalcImpCont'
      Size = 1
    end
    object mAuxiliarCab_Opc_CalcRet: TStringField
      FieldName = 'Cab_Opc_CalcRet'
      Size = 1
    end
    object mAuxiliarDet_CNPJ_CPF: TStringField
      FieldName = 'Det_CNPJ_CPF'
      Size = 18
    end
    object mAuxiliarDet_Nome_Cliente: TStringField
      FieldName = 'Det_Nome_Cliente'
      Size = 40
    end
    object mAuxiliarDet_Fantasia: TStringField
      FieldName = 'Det_Fantasia'
    end
    object mAuxiliarDet_UF_Cli: TStringField
      FieldName = 'Det_UF_Cli'
      Size = 2
    end
    object mAuxiliarDet_InscEstadual_Cli: TStringField
      FieldName = 'Det_InscEstadual_Cli'
    end
    object mAuxiliarDet_Endereco_Cli: TStringField
      FieldName = 'Det_Endereco_Cli'
      Size = 40
    end
    object mAuxiliarDet_Bairro_Cli: TStringField
      FieldName = 'Det_Bairro_Cli'
    end
    object mAuxiliarDet_Cidade_Cli: TStringField
      FieldName = 'Det_Cidade_Cli'
    end
    object mAuxiliarDet_Cep_Cli: TStringField
      FieldName = 'Det_Cep_Cli'
      Size = 8
    end
    object mAuxiliarDet_CodMunicipio_SIAFI: TIntegerField
      FieldName = 'Det_CodMunicipio_SIAFI'
    end
    object mAuxiliarDet_DDD_Cli: TIntegerField
      FieldName = 'Det_DDD_Cli'
    end
    object mAuxiliarDet_Fone_Cli: TStringField
      FieldName = 'Det_Fone_Cli'
      Size = 10
    end
    object mAuxiliarDet_Conta_CTB_Cli: TStringField
      FieldName = 'Det_Conta_CTB_Cli'
      Size = 6
    end
    object mAuxiliarDet_Hist_CTB_Cli: TIntegerField
      FieldName = 'Det_Hist_CTB_Cli'
    end
    object mAuxiliarDet_Conta_CTB_Forn: TStringField
      FieldName = 'Det_Conta_CTB_Forn'
      Size = 6
    end
    object mAuxiliarDet_Hist_CTB_Forn: TIntegerField
      FieldName = 'Det_Hist_CTB_Forn'
    end
    object mAuxiliarDet_Produto_Rural: TStringField
      FieldName = 'Det_Produto_Rural'
      Size = 1
    end
    object mAuxiliarDet_Pais: TStringField
      FieldName = 'Det_Pais'
      Size = 18
    end
    object mAuxiliarDet_Num_End: TStringField
      FieldName = 'Det_Num_End'
      Size = 5
    end
    object mAuxiliarDet_Complemento_Cli: TStringField
      FieldName = 'Det_Complemento_Cli'
    end
    object mAuxiliarDet_Suframa: TStringField
      FieldName = 'Det_Suframa'
      Size = 9
    end
    object mAuxiliarDet_CodPais: TIntegerField
      FieldName = 'Det_CodPais'
    end
    object mAuxiliarDet_NatJuridica: TStringField
      FieldName = 'Det_NatJuridica'
      Size = 1
    end
    object mAuxiliarDet_CodMunicipio_IBGE: TStringField
      FieldName = 'Det_CodMunicipio_IBGE'
      Size = 7
    end
    object mAuxiliarNot_DtLancamento: TDateField
      FieldName = 'Not_DtLancamento'
    end
    object mAuxiliarNot_Nota_Inicial: TIntegerField
      FieldName = 'Not_Nota_Inicial'
    end
    object mAuxiliarNot_Nota_Final: TIntegerField
      FieldName = 'Not_Nota_Final'
    end
    object mAuxiliarNot_DtEmissao: TDateField
      FieldName = 'Not_DtEmissao'
    end
    object mAuxiliarNot_Modelo: TStringField
      FieldName = 'Not_Modelo'
      Size = 2
    end
    object mAuxiliarNot_Serie: TStringField
      FieldName = 'Not_Serie'
      Size = 3
    end
    object mAuxiliarNot_SubSerie: TStringField
      FieldName = 'Not_SubSerie'
      Size = 3
    end
    object mAuxiliarNot_CFOP: TStringField
      FieldName = 'Not_CFOP'
      Size = 4
    end
    object mAuxiliarNot_CFOP_Variacao: TIntegerField
      FieldName = 'Not_CFOP_Variacao'
    end
    object mAuxiliarNot_Classificacao1: TIntegerField
      FieldName = 'Not_Classificacao1'
    end
    object mAuxiliarNot_Classificacao2: TIntegerField
      FieldName = 'Not_Classificacao2'
    end
    object mAuxiliarNot_CNPJCPF_Dest: TStringField
      FieldName = 'Not_CNPJCPF_Dest'
      Size = 18
    end
    object mAuxiliarNot_Vlr_Contabil: TFloatField
      FieldName = 'Not_Vlr_Contabil'
    end
    object mAuxiliarNot_Base_Pis: TFloatField
      FieldName = 'Not_Base_Pis'
    end
    object mAuxiliarNot_Base_Cofins: TFloatField
      FieldName = 'Not_Base_Cofins'
    end
    object mAuxiliarNot_Base_CSLL: TFloatField
      FieldName = 'Not_Base_CSLL'
    end
    object mAuxiliarNot_Base_IRPJ: TFloatField
      FieldName = 'Not_Base_IRPJ'
    end
    object mAuxiliarNot_Base_ICMS_A: TFloatField
      FieldName = 'Not_Base_ICMS_A'
    end
    object mAuxiliarNot_Base_ICMS_B: TFloatField
      FieldName = 'Not_Base_ICMS_B'
    end
    object mAuxiliarNot_Base_ICMS_C: TFloatField
      FieldName = 'Not_Base_ICMS_C'
    end
    object mAuxiliarNot_Base_ICMS_D: TFloatField
      FieldName = 'Not_Base_ICMS_D'
    end
    object mAuxiliarNot_Aliq_ICMS_A: TFloatField
      FieldName = 'Not_Aliq_ICMS_A'
    end
    object mAuxiliarNot_Aliq_ICMS_B: TFloatField
      FieldName = 'Not_Aliq_ICMS_B'
    end
    object mAuxiliarNot_Aliq_ICMS_C: TFloatField
      FieldName = 'Not_Aliq_ICMS_C'
    end
    object mAuxiliarNot_Aliq_ICMS_D: TFloatField
      FieldName = 'Not_Aliq_ICMS_D'
    end
    object mAuxiliarNot_Vlr_ICMS_A: TFloatField
      FieldName = 'Not_Vlr_ICMS_A'
    end
    object mAuxiliarNot_Vlr_ICMS_B: TFloatField
      FieldName = 'Not_Vlr_ICMS_B'
    end
    object mAuxiliarNot_Vlr_ICMS_C: TFloatField
      FieldName = 'Not_Vlr_ICMS_C'
    end
    object mAuxiliarNot_Vlr_ICMS_D: TFloatField
      FieldName = 'Not_Vlr_ICMS_D'
    end
    object mAuxiliarNot_Isentas_ICMS: TFloatField
      FieldName = 'Not_Isentas_ICMS'
    end
    object mAuxiliarNot_Outras_ICMS: TFloatField
      FieldName = 'Not_Outras_ICMS'
    end
    object mAuxiliarNot_Base_IPI: TFloatField
      FieldName = 'Not_Base_IPI'
    end
    object mAuxiliarNot_Vlr_IPI: TFloatField
      FieldName = 'Not_Vlr_IPI'
    end
    object mAuxiliarNot_Isentas_IPI: TFloatField
      FieldName = 'Not_Isentas_IPI'
    end
    object mAuxiliarNot_Outras_IPI: TFloatField
      FieldName = 'Not_Outras_IPI'
    end
    object mAuxiliarNot_Vlr_SubstTributaria: TFloatField
      FieldName = 'Not_Vlr_SubstTributaria'
    end
    object mAuxiliarNot_Base_ST: TFloatField
      FieldName = 'Not_Base_ST'
    end
    object mAuxiliarNot_ICMS_ST: TFloatField
      FieldName = 'Not_ICMS_ST'
    end
    object mAuxiliarNot_Diferidas: TFloatField
      FieldName = 'Not_Diferidas'
    end
    object mAuxiliarNot_Base_ISS: TFloatField
      FieldName = 'Not_Base_ISS'
    end
    object mAuxiliarNot_Aliq_ISS: TFloatField
      FieldName = 'Not_Aliq_ISS'
    end
    object mAuxiliarNot_Vlr_ISS: TFloatField
      FieldName = 'Not_Vlr_ISS'
    end
    object mAuxiliarNot_Isentas_ISS: TFloatField
      FieldName = 'Not_Isentas_ISS'
    end
    object mAuxiliarNot_IRRF_Retido: TFloatField
      FieldName = 'Not_IRRF_Retido'
    end
    object mAuxiliarNot_Obs_LivroFiscal: TStringField
      FieldName = 'Not_Obs_LivroFiscal'
      Size = 50
    end
    object mAuxiliarNot_Especie: TStringField
      FieldName = 'Not_Especie'
      Size = 5
    end
    object mAuxiliarNot_VendaAVista: TStringField
      FieldName = 'Not_VendaAVista'
      Size = 1
    end
    object mAuxiliarNot_CFOP_ST: TStringField
      FieldName = 'Not_CFOP_ST'
      Size = 4
    end
    object mAuxiliarNot_Base_PisCofins_ST: TFloatField
      FieldName = 'Not_Base_PisCofins_ST'
    end
    object mAuxiliarNot_Modalidade_Frete: TStringField
      FieldName = 'Not_Modalidade_Frete'
      Size = 1
    end
    object mAuxiliarNot_Pis_Retido: TFloatField
      FieldName = 'Not_Pis_Retido'
    end
    object mAuxiliarNot_Cofins_Retido: TFloatField
      FieldName = 'Not_Cofins_Retido'
    end
    object mAuxiliarNot_CSLL_Retido: TFloatField
      FieldName = 'Not_CSLL_Retido'
    end
    object mAuxiliarNot_DtRecebimento: TDateField
      FieldName = 'Not_DtRecebimento'
    end
    object mAuxiliarNot_Operacao_CTB: TIntegerField
      FieldName = 'Not_Operacao_CTB'
    end
    object mAuxiliarNot_Vlr_Materiais: TFloatField
      FieldName = 'Not_Vlr_Materiais'
    end
    object mAuxiliarNot_Vlr_SubEmpreitada: TFloatField
      FieldName = 'Not_Vlr_SubEmpreitada'
    end
    object mAuxiliarNot_Cod_Servico: TIntegerField
      FieldName = 'Not_Cod_Servico'
    end
    object mAuxiliarNot_Pais: TStringField
      FieldName = 'Not_Pais'
      Size = 18
    end
    object mAuxiliarNot_Obs_LivroFiscal_2: TStringField
      FieldName = 'Not_Obs_LivroFiscal_2'
      Size = 50
    end
    object mAuxiliarCpl_ChaveNFSe: TStringField
      FieldName = 'Cpl_ChaveNFSe'
      Size = 45
    end
    object mAuxiliarCpl_Vlr_Inss_Retido: TFloatField
      FieldName = 'Cpl_Vlr_Inss_Retido'
    end
    object mAuxiliarcpl_ISS_Retido: TStringField
      FieldName = 'cpl_ISS_Retido'
      Size = 1
    end
    object mAuxiliarcpl_Vlr_Desconto: TFloatField
      FieldName = 'cpl_Vlr_Desconto'
    end
  end
  object dsmAuxiliar: TDataSource
    DataSet = mAuxiliar
    Left = 624
    Top = 264
  end
  object mCidade: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 600
    Top = 296
    Data = {
      890000009619E0BD01000000180000000400000000000300000089000A4E6F6D
      65436964616465010049000000010005574944544802000200280008436F6453
      49414649010049000000010005574944544802000200040007436F6449424745
      0100490000000100055749445448020002000700025546010049000000010005
      57494454480200020002000000}
    object mCidadeNomeCidade: TStringField
      FieldName = 'NomeCidade'
      Size = 40
    end
    object mCidadeCodSIAFI: TStringField
      FieldName = 'CodSIAFI'
      Size = 4
    end
    object mCidadeCodIBGE: TStringField
      FieldName = 'CodIBGE'
      Size = 7
    end
    object mCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object dsmCidade: TDataSource
    DataSet = mCidade
    Left = 624
    Top = 296
  end
  object OpenDialog: TOpenDialog
    Filter = 'Arquivo XML|*.xml'
    Title = 'Selecione o arquivo xml'
    Left = 624
    Top = 376
  end
  object cdsNFSe: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Numero'
        DataType = ftInteger
      end
      item
        Name = 'CodigoVerificacao'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'DataEmissao'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'IdentificacaoRps'
        ChildDefs = <
          item
            Name = 'Numero1'
            DataType = ftInteger
          end
          item
            Name = 'Serie'
            DataType = ftString
            Size = 5
          end
          item
            Name = 'Tipo'
            DataType = ftInteger
          end>
        DataType = ftADT
        Size = 3
      end
      item
        Name = 'DataEmissaoRps'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NaturezaOperacao'
        DataType = ftInteger
      end
      item
        Name = 'RegimeEspecialTributacao'
        DataType = ftInteger
      end
      item
        Name = 'OptanteSimplesNacional'
        DataType = ftInteger
      end
      item
        Name = 'IncentivadorCultural'
        DataType = ftInteger
      end
      item
        Name = 'Competencia'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'OutrasInformacoes'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Servico'
        ChildDefs = <
          item
            Name = 'Valores'
            ChildDefs = <
              item
                Name = 'ValorServicos'
                DataType = ftFloat
              end
              item
                Name = 'ValorDeducoes'
                DataType = ftFloat
              end
              item
                Name = 'ValorPis'
                DataType = ftFloat
              end
              item
                Name = 'ValorCofins'
                DataType = ftFloat
              end
              item
                Name = 'ValorInss'
                DataType = ftFloat
              end
              item
                Name = 'ValorIr'
                DataType = ftFloat
              end
              item
                Name = 'ValorCsll'
                DataType = ftFloat
              end
              item
                Name = 'IssRetido'
                DataType = ftInteger
              end
              item
                Name = 'ValorIss'
                DataType = ftFloat
              end
              item
                Name = 'OutrasRetencoes'
                DataType = ftFloat
              end
              item
                Name = 'BaseCalculo'
                DataType = ftFloat
              end
              item
                Name = 'Aliquota'
                DataType = ftFloat
              end
              item
                Name = 'ValorLiquidoNfse'
                DataType = ftFloat
              end
              item
                Name = 'ValorIssRetido'
                DataType = ftFloat
              end
              item
                Name = 'DescontoCondicionado'
                DataType = ftFloat
              end
              item
                Name = 'DescontoIncondicionado'
                DataType = ftFloat
              end>
            DataType = ftADT
            Size = 16
          end
          item
            Name = 'ItemListaServico'
            DataType = ftString
            Size = 5
          end
          item
            Name = 'CodigoCnae'
            DataType = ftInteger
          end
          item
            Name = 'CodigoTributacaoMunicipio'
            DataType = ftString
            Size = 20
          end
          item
            Name = 'Discriminacao'
            DataType = ftString
            Size = 2000
          end
          item
            Name = 'MunicipioPrestacaoServico'
            DataType = ftInteger
          end>
        DataType = ftADT
        Size = 6
      end
      item
        Name = 'NfseSubstituida'
        DataType = ftInteger
      end
      item
        Name = 'ValorCredito'
        DataType = ftFloat
      end
      item
        Name = 'PrestadorServico'
        ChildDefs = <
          item
            Name = 'IdentificacaoPrestador'
            ChildDefs = <
              item
                Name = 'CpfCnpj'
                ChildDefs = <
                  item
                    Name = 'Cpf'
                    DataType = ftString
                    Size = 11
                  end
                  item
                    Name = 'Cnpj'
                    DataType = ftString
                    Size = 14
                  end>
                DataType = ftADT
                Size = 2
              end
              item
                Name = 'InscricaoMunicipal'
                DataType = ftString
                Size = 15
              end>
            DataType = ftADT
            Size = 2
          end
          item
            Name = 'RazaoSocial'
            DataType = ftString
            Size = 115
          end
          item
            Name = 'NomeFantasia'
            DataType = ftString
            Size = 60
          end
          item
            Name = 'Endereco'
            ChildDefs = <
              item
                Name = 'Endereco'
                DataType = ftString
                Size = 125
              end
              item
                Name = 'Numero2'
                DataType = ftString
                Size = 10
              end
              item
                Name = 'Complemento'
                DataType = ftString
                Size = 60
              end
              item
                Name = 'Bairro'
                DataType = ftString
                Size = 60
              end
              item
                Name = 'Cidade'
                DataType = ftInteger
              end
              item
                Name = 'Estado'
                DataType = ftString
                Size = 2
              end
              item
                Name = 'Cep'
                DataType = ftInteger
              end>
            DataType = ftADT
            Size = 7
          end
          item
            Name = 'Contato'
            ChildDefs = <
              item
                Name = 'Telefone'
                DataType = ftString
                Size = 11
              end
              item
                Name = 'Email'
                DataType = ftString
                Size = 80
              end>
            DataType = ftADT
            Size = 2
          end>
        DataType = ftADT
        Size = 5
      end
      item
        Name = 'TomadorServico'
        ChildDefs = <
          item
            Name = 'IdentificacaoTomador'
            ChildDefs = <
              item
                Name = 'CpfCnpj'
                ChildDefs = <
                  item
                    Name = 'Cpf'
                    DataType = ftString
                    Size = 11
                  end
                  item
                    Name = 'Cnpj'
                    DataType = ftString
                    Size = 14
                  end>
                DataType = ftADT
                Size = 2
              end
              item
                Name = 'InscricaoMunicipal'
                DataType = ftString
                Size = 15
              end>
            DataType = ftADT
            Size = 2
          end
          item
            Name = 'RazaoSocial'
            DataType = ftString
            Size = 115
          end
          item
            Name = 'Endereco'
            ChildDefs = <
              item
                Name = 'Endereco'
                DataType = ftString
                Size = 125
              end
              item
                Name = 'Numero2'
                DataType = ftString
                Size = 10
              end
              item
                Name = 'Complemento'
                DataType = ftString
                Size = 60
              end
              item
                Name = 'Bairro'
                DataType = ftString
                Size = 60
              end
              item
                Name = 'Cidade'
                DataType = ftInteger
              end
              item
                Name = 'Estado1'
                DataType = ftString
                Size = 2
              end
              item
                Name = 'Cep'
                DataType = ftInteger
              end>
            DataType = ftADT
            Size = 7
          end
          item
            Name = 'Contato'
            ChildDefs = <
              item
                Name = 'Telefone'
                DataType = ftString
                Size = 11
              end
              item
                Name = 'Email'
                DataType = ftString
                Size = 80
              end>
            DataType = ftADT
            Size = 2
          end>
        DataType = ftADT
        Size = 4
      end
      item
        Name = 'IntermediarioServico'
        ChildDefs = <
          item
            Name = 'RazaoSocial'
            DataType = ftString
            Size = 115
          end
          item
            Name = 'CpfCnpj'
            ChildDefs = <
              item
                Name = 'Cpf'
                DataType = ftString
                Size = 11
              end
              item
                Name = 'Cnpj'
                DataType = ftString
                Size = 14
              end>
            DataType = ftADT
            Size = 2
          end
          item
            Name = 'InscricaoMunicipal'
            DataType = ftString
            Size = 15
          end>
        DataType = ftADT
        Size = 3
      end
      item
        Name = 'OrgaoGerador'
        ChildDefs = <
          item
            Name = 'CodigoMunicipio'
            DataType = ftInteger
          end
          item
            Name = 'Uf'
            DataType = ftString
            Size = 2
          end>
        DataType = ftADT
        Size = 2
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 496
    Top = 56
    object cdsNFSeNumero: TIntegerField
      FieldName = 'Numero'
    end
    object cdsNFSeCodigoVerificacao: TStringField
      FieldName = 'CodigoVerificacao'
      Size = 9
    end
    object cdsNFSeDataEmissao: TStringField
      FieldName = 'DataEmissao'
    end
    object cdsNFSeIdentificacaoRps: TADTField
      FieldName = 'IdentificacaoRps'
      object cdsNFSeIdentificacaoRpsNumero1: TIntegerField
        FieldName = 'Numero1'
      end
      object cdsNFSeIdentificacaoRpsSerie: TStringField
        FieldName = 'Serie'
        Size = 5
      end
      object cdsNFSeIdentificacaoRpsTipo: TIntegerField
        FieldName = 'Tipo'
      end
    end
    object cdsNFSeDataEmissaoRps: TStringField
      FieldName = 'DataEmissaoRps'
    end
    object cdsNFSeNaturezaOperacao: TIntegerField
      FieldName = 'NaturezaOperacao'
    end
    object cdsNFSeRegimeEspecialTributacao: TIntegerField
      FieldName = 'RegimeEspecialTributacao'
    end
    object cdsNFSeOptanteSimplesNacional: TIntegerField
      FieldName = 'OptanteSimplesNacional'
    end
    object cdsNFSeIncentivadorCultural: TIntegerField
      FieldName = 'IncentivadorCultural'
    end
    object cdsNFSeCompetencia: TStringField
      DisplayWidth = 8
      FieldName = 'Competencia'
      Size = 8
    end
    object cdsNFSeOutrasInformacoes: TStringField
      FieldName = 'OutrasInformacoes'
      Size = 255
    end
    object cdsNFSeServico: TADTField
      FieldName = 'Servico'
      object cdsNFSeServicoValores: TADTField
        FieldName = 'Valores'
        object cdsNFSeServicoValoresValorServicos: TFloatField
          FieldName = 'ValorServicos'
        end
        object cdsNFSeServicoValoresValorDeducoes: TFloatField
          FieldName = 'ValorDeducoes'
        end
        object cdsNFSeServicoValoresValorPis: TFloatField
          FieldName = 'ValorPis'
        end
        object cdsNFSeServicoValoresValorCofins: TFloatField
          FieldName = 'ValorCofins'
        end
        object cdsNFSeServicoValoresValorInss: TFloatField
          FieldName = 'ValorInss'
        end
        object cdsNFSeServicoValoresValorIr: TFloatField
          FieldName = 'ValorIr'
        end
        object cdsNFSeServicoValoresValorCsll: TFloatField
          FieldName = 'ValorCsll'
        end
        object cdsNFSeServicoValoresIssRetido: TIntegerField
          FieldName = 'IssRetido'
        end
        object cdsNFSeServicoValoresValorIss: TFloatField
          FieldName = 'ValorIss'
        end
        object cdsNFSeServicoValoresOutrasRetencoes: TFloatField
          FieldName = 'OutrasRetencoes'
        end
        object cdsNFSeServicoValoresBaseCalculo: TFloatField
          FieldName = 'BaseCalculo'
        end
        object cdsNFSeServicoValoresAliquota: TFloatField
          FieldName = 'Aliquota'
        end
        object cdsNFSeServicoValoresValorLiquidoNfse: TFloatField
          FieldName = 'ValorLiquidoNfse'
        end
        object cdsNFSeServicoValoresValorIssRetido: TFloatField
          FieldName = 'ValorIssRetido'
        end
        object cdsNFSeServicoValoresDescontoCondicionado: TFloatField
          FieldName = 'DescontoCondicionado'
        end
        object cdsNFSeServicoValoresDescontoIncondicionado: TFloatField
          FieldName = 'DescontoIncondicionado'
        end
      end
      object cdsNFSeServicoItemListaServico: TStringField
        FieldName = 'ItemListaServico'
        Size = 5
      end
      object cdsNFSeServicoCodigoCnae: TIntegerField
        FieldName = 'CodigoCnae'
      end
      object cdsNFSeServicoCodigoTributacaoMunicipio: TStringField
        FieldName = 'CodigoTributacaoMunicipio'
      end
      object cdsNFSeServicoDiscriminacao: TStringField
        FieldName = 'Discriminacao'
        Size = 2000
      end
      object cdsNFSeServicoMunicipioPrestacaoServico: TIntegerField
        FieldName = 'MunicipioPrestacaoServico'
      end
    end
    object cdsNFSeNfseSubstituida: TIntegerField
      FieldName = 'NfseSubstituida'
    end
    object cdsNFSeValorCredito: TFloatField
      FieldName = 'ValorCredito'
    end
    object cdsNFSePrestadorServico: TADTField
      FieldName = 'PrestadorServico'
      object cdsNFSePrestadorServicoIdentificacaoPrestador: TADTField
        FieldName = 'IdentificacaoPrestador'
        object cdsNFSePrestadorServicoIdentificacaoPrestadorCpfCnpj: TADTField
          FieldName = 'CpfCnpj'
          object cdsNFSePrestadorServicoIdentificacaoPrestadorCpfCnpjCpf: TStringField
            FieldName = 'Cpf'
            Size = 11
          end
          object cdsNFSePrestadorServicoIdentificacaoPrestadorCpfCnpjCnpj: TStringField
            FieldName = 'Cnpj'
            Size = 14
          end
        end
        object cdsNFSePrestadorServicoIdentificacaoPrestadorInscricaoMunicipal: TStringField
          FieldName = 'InscricaoMunicipal'
          Size = 15
        end
      end
      object cdsNFSePrestadorServicoRazaoSocial: TStringField
        FieldName = 'RazaoSocial'
        Size = 115
      end
      object cdsNFSePrestadorServicoNomeFantasia: TStringField
        FieldName = 'NomeFantasia'
        Size = 60
      end
      object cdsNFSePrestadorServicoEndereco: TADTField
        FieldName = 'Endereco'
        object cdsNFSePrestadorServicoEnderecoEndereco: TStringField
          FieldName = 'Endereco'
          Size = 125
        end
        object cdsNFSePrestadorServicoEnderecoNumero2: TStringField
          FieldName = 'Numero2'
          Size = 10
        end
        object cdsNFSePrestadorServicoEnderecoComplemento: TStringField
          FieldName = 'Complemento'
          Size = 60
        end
        object cdsNFSePrestadorServicoEnderecoBairro: TStringField
          FieldName = 'Bairro'
          Size = 60
        end
        object cdsNFSePrestadorServicoEnderecoCidade: TIntegerField
          FieldName = 'Cidade'
        end
        object cdsNFSePrestadorServicoEnderecoEstado: TStringField
          FieldName = 'Estado'
          Size = 2
        end
        object cdsNFSePrestadorServicoEnderecoCep: TIntegerField
          FieldName = 'Cep'
        end
      end
      object cdsNFSePrestadorServicoContato: TADTField
        FieldName = 'Contato'
        object cdsNFSePrestadorServicoContatoTelefone: TStringField
          FieldName = 'Telefone'
          Size = 11
        end
        object cdsNFSePrestadorServicoContatoEmail: TStringField
          FieldName = 'Email'
          Size = 80
        end
      end
    end
    object cdsNFSeTomadorServico: TADTField
      FieldName = 'TomadorServico'
      object cdsNFSeTomadorServicoIdentificacaoTomador: TADTField
        FieldName = 'IdentificacaoTomador'
        object cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpj: TADTField
          FieldName = 'CpfCnpj'
          object cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpjCpf: TStringField
            FieldName = 'Cpf'
            Size = 11
          end
          object cdsNFSeTomadorServicoIdentificacaoTomadorCpfCnpjCnpj: TStringField
            FieldName = 'Cnpj'
            Size = 14
          end
        end
        object cdsNFSeTomadorServicoIdentificacaoTomadorInscricaoMunicipal: TStringField
          FieldName = 'InscricaoMunicipal'
          Size = 15
        end
      end
      object cdsNFSeTomadorServicoRazaoSocial: TStringField
        FieldName = 'RazaoSocial'
        Size = 115
      end
      object cdsNFSeTomadorServicoEndereco: TADTField
        FieldName = 'Endereco'
        object cdsNFSeTomadorServicoEnderecoEndereco: TStringField
          FieldName = 'Endereco'
          Size = 125
        end
        object cdsNFSeTomadorServicoEnderecoNumero2: TStringField
          FieldName = 'Numero2'
          Size = 10
        end
        object cdsNFSeTomadorServicoEnderecoComplemento: TStringField
          FieldName = 'Complemento'
          Size = 60
        end
        object cdsNFSeTomadorServicoEnderecoBairro: TStringField
          FieldName = 'Bairro'
          Size = 60
        end
        object cdsNFSeTomadorServicoEnderecoCidade: TIntegerField
          FieldName = 'Cidade'
        end
        object cdsNFSeTomadorServicoEnderecoEstado1: TStringField
          FieldName = 'Estado1'
          Size = 2
        end
        object cdsNFSeTomadorServicoEnderecoCep: TIntegerField
          FieldName = 'Cep'
        end
      end
      object cdsNFSeTomadorServicoContato: TADTField
        FieldName = 'Contato'
        object cdsNFSeTomadorServicoContatoTelefone: TStringField
          FieldName = 'Telefone'
          Size = 11
        end
        object cdsNFSeTomadorServicoContatoEmail: TStringField
          FieldName = 'Email'
          Size = 80
        end
      end
    end
    object cdsNFSeIntermediarioServico: TADTField
      FieldName = 'IntermediarioServico'
      object cdsNFSeIntermediarioServicoRazaoSocial: TStringField
        FieldName = 'RazaoSocial'
        Size = 115
      end
      object cdsNFSeIntermediarioServicoCpfCnpj: TADTField
        FieldName = 'CpfCnpj'
        object cdsNFSeIntermediarioServicoCpfCnpjCpf: TStringField
          FieldName = 'Cpf'
          Size = 11
        end
        object cdsNFSeIntermediarioServicoCpfCnpjCnpj: TStringField
          FieldName = 'Cnpj'
          Size = 14
        end
      end
      object cdsNFSeIntermediarioServicoInscricaoMunicipal: TStringField
        FieldName = 'InscricaoMunicipal'
        Size = 15
      end
    end
    object cdsNFSeOrgaoGerador: TADTField
      FieldName = 'OrgaoGerador'
      object cdsNFSeOrgaoGeradorCodigoMunicipio: TIntegerField
        FieldName = 'CodigoMunicipio'
      end
      object cdsNFSeOrgaoGeradorUf: TStringField
        FieldName = 'Uf'
        Size = 2
      end
    end
  end
  object dsNFSe: TDataSource
    DataSet = cdsNFSe
    Left = 552
    Top = 56
  end
  object OpenDialog1: TOpenDialog
    Left = 72
    Top = 216
  end
  object dsNovaGeracao: TDataSource
    Left = 32
    Top = 200
  end
end
