object tAngsuran: TtAngsuran
  Left = 757
  Top = 117
  Width = 350
  Height = 480
  Align = alClient
  BorderIcons = [biSystemMenu]
  Caption = 'BAYAR ANGSURAN PINJAMAN'
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
    Width = 334
    Height = 177
    Align = alTop
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    DesignSize = (
      334
      177)
    object sGroupBox1: TsGroupBox
      Left = 8
      Top = 8
      Width = 321
      Height = 161
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      DesignSize = (
        321
        161)
      object in_Ket: TLabeledEdit
        Left = 112
        Top = 40
        Width = 33
        Height = 21
        EditLabel.Width = 87
        EditLabel.Height = 13
        EditLabel.Caption = 'ANGSURAN KE - '
        Enabled = False
        LabelPosition = lpLeft
        TabOrder = 0
      end
      object in_NominalAngsuran: TLabeledEdit
        Left = 112
        Top = 88
        Width = 121
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 70
        EditLabel.Height = 13
        EditLabel.Caption = 'ANGSURAN : '
        Enabled = False
        LabelPosition = lpLeft
        TabOrder = 1
      end
      object in_Bunga: TLabeledEdit
        Left = 112
        Top = 112
        Width = 121
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 47
        EditLabel.Height = 13
        EditLabel.Caption = 'BUNGA : '
        Enabled = False
        LabelPosition = lpLeft
        TabOrder = 2
      end
      object in_Total: TLabeledEdit
        Left = 112
        Top = 136
        Width = 121
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 44
        EditLabel.Height = 13
        EditLabel.Caption = 'TOTAL : '
        Enabled = False
        LabelPosition = lpLeft
        TabOrder = 3
      end
      object btnBayar: TsButton
        Left = 240
        Top = 48
        Width = 75
        Height = 49
        Anchors = [akTop, akRight]
        Caption = 'BAYAR'
        TabOrder = 4
        OnClick = btnBayarClick
        SkinData.SkinSection = 'BUTTON'
      end
      object btnCetak: TsButton
        Left = 240
        Top = 104
        Width = 75
        Height = 49
        Anchors = [akTop, akRight]
        Caption = 'CETAK'
        TabOrder = 5
        SkinData.SkinSection = 'BUTTON'
      end
      object in_KodeAngsuran: TLabeledEdit
        Left = 112
        Top = 16
        Width = 121
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 103
        EditLabel.Height = 13
        EditLabel.Caption = 'KODE ANGSURAN : '
        LabelPosition = lpLeft
        TabOrder = 6
      end
      object in_CariPinjaman: TsComboBox
        Left = 112
        Top = 64
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        BoundLabel.Indent = 0
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'MS Sans Serif'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclLeft
        BoundLabel.MaxWidth = 0
        BoundLabel.UseSkinColor = True
        SkinData.SkinSection = 'COMBOBOX'
        VerticalAlignment = taAlignTop
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 15
        ItemIndex = -1
        ParentFont = False
        TabOrder = 7
        Text = 'KODE PINJAMAN'
        OnChange = in_CariPinjamanChange
      end
      object Memo1: TMemo
        Left = 176
        Top = 64
        Width = 185
        Height = 89
        TabOrder = 8
        Visible = False
      end
      object in_NIM: TEdit
        Left = 152
        Top = 40
        Width = 73
        Height = 21
        TabOrder = 9
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 177
    Width = 334
    Height = 264
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
