object PRekSim: TPRekSim
  Left = 596
  Top = 269
  Width = 458
  Height = 411
  Align = alClient
  BorderIcons = [biSystemMenu]
  Caption = 'PENDAFTARAN REKENING'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 442
    Height = 154
    Align = alTop
    AutoSize = True
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object containerBuat: TsGroupBox
      Left = 8
      Top = 57
      Width = 425
      Height = 88
      Align = alCustom
      Anchors = [akLeft, akTop, akRight]
      Caption = 'DAFTAR REKENING BARU'
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      DesignSize = (
        425
        88)
      object in_NoRek: TLabeledEdit
        Left = 96
        Top = 16
        Width = 241
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 87
        EditLabel.Height = 13
        EditLabel.Caption = 'NO. REKENING : '
        LabelPosition = lpLeft
        TabOrder = 0
        OnClick = in_NoRekClick
      end
      object in_NIM: TLabeledEdit
        Left = 96
        Top = 40
        Width = 153
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 29
        EditLabel.Height = 13
        EditLabel.Caption = 'NIM : '
        LabelPosition = lpLeft
        TabOrder = 1
        OnChange = in_NIMChange
        OnClick = in_NIMClick
      end
      object btnProses: TsButton
        Left = 344
        Top = 16
        Width = 75
        Height = 41
        Anchors = [akTop, akRight]
        Caption = 'PROSES'
        TabOrder = 2
        OnClick = btnProsesClick
        SkinData.SkinSection = 'BUTTON'
      end
      object in_date: TsDateEdit
        Left = 96
        Top = 64
        Width = 241
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Color = clWhite
        EditMask = '!99/99/9999;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 3
        Text = '  /  /    '
        Align = alCustom
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'EDIT'
        GlyphMode.Blend = 0
        GlyphMode.Grayed = False
      end
      object boxNM: TsEdit
        Left = 256
        Top = 40
        Width = 81
        Height = 21
        Anchors = [akTop, akRight]
        Color = clWhite
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
      end
    end
    object containerCari: TsGroupBox
      Left = 8
      Top = 1
      Width = 425
      Height = 49
      Align = alCustom
      Anchors = [akLeft, akTop, akRight]
      Caption = 'CARI REKENING'
      TabOrder = 1
      SkinData.SkinSection = 'GROUPBOX'
      DesignSize = (
        425
        49)
      object in_cariRek: TLabeledEdit
        Left = 96
        Top = 16
        Width = 321
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 87
        EditLabel.Height = 13
        EditLabel.Caption = 'NO. REKENING : '
        LabelPosition = lpLeft
        TabOrder = 0
        OnChange = in_cariRekChange
        OnClick = in_cariRekClick
      end
    end
    object Memo1: TMemo
      Left = 16
      Top = 144
      Width = 185
      Height = 9
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 154
    Width = 442
    Height = 218
    Align = alClient
    DataSource = dbModule.dbDataSource
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
