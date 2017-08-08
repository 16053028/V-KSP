object PengajuanPinjaman: TPengajuanPinjaman
  Left = 263
  Top = 190
  Width = 346
  Height = 480
  Align = alClient
  BorderIcons = [biSystemMenu]
  Caption = 'PengajuanPinjaman'
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
    Width = 330
    Height = 209
    Align = alTop
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object sGroupBox1: TsGroupBox
      Left = 8
      Top = 80
      Width = 313
      Height = 121
      Align = alCustom
      Anchors = [akLeft, akTop, akRight]
      Caption = 'PENGAJUAN BARU'
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      DesignSize = (
        313
        121)
      object in_NIM: TLabeledEdit
        Left = 96
        Top = 48
        Width = 129
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 20
        EditLabel.Height = 13
        EditLabel.Caption = 'NIM'
        LabelPosition = lpLeft
        TabOrder = 0
      end
      object in_nominal: TLabeledEdit
        Left = 96
        Top = 72
        Width = 129
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 55
        EditLabel.Height = 13
        EditLabel.Caption = 'NOMINAL :'
        LabelPosition = lpLeft
        TabOrder = 1
      end
      object in_LamaAngsuran: TsComboBox
        Left = 96
        Top = 96
        Width = 129
        Height = 21
        Anchors = [akLeft, akTop, akRight]
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
        TabOrder = 2
        Text = 'Lama Angsuran'
      end
      object btnProses: TsButton
        Left = 230
        Top = 32
        Width = 75
        Height = 73
        Anchors = [akTop, akRight]
        Caption = 'Proses'
        TabOrder = 3
        OnClick = btnProsesClick
        SkinData.SkinSection = 'BUTTON'
      end
      object in_kodePinjam: TLabeledEdit
        Left = 96
        Top = 24
        Width = 129
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 87
        EditLabel.Height = 13
        EditLabel.Caption = 'KODE PINJAMAN'
        LabelPosition = lpLeft
        TabOrder = 4
      end
    end
    object sGroupBox2: TsGroupBox
      Left = 8
      Top = 8
      Width = 313
      Height = 65
      Align = alCustom
      Anchors = [akLeft, akTop, akRight]
      Caption = 'CARI PENGAJUAN'
      TabOrder = 1
      SkinData.SkinSection = 'GROUPBOX'
      DesignSize = (
        313
        65)
      object in_CariKP: TLabeledEdit
        Left = 8
        Top = 40
        Width = 297
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 87
        EditLabel.Height = 13
        EditLabel.Caption = 'KODE PINJAMAN'
        TabOrder = 0
        OnChange = in_CariKPChange
      end
      object Memo1: TMemo
        Left = 216
        Top = 8
        Width = 185
        Height = 89
        TabOrder = 1
        Visible = False
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 209
    Width = 330
    Height = 232
    Align = alClient
    DataSource = dbModule.dbDataSource
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end>
  end
end
