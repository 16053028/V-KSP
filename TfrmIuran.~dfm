object tIuran: TtIuran
  Left = 798
  Top = 171
  Width = 328
  Height = 451
  Align = alClient
  Caption = 'KAS / IURAN'
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
  object a: TsPanel
    Left = 0
    Top = 0
    Width = 312
    Height = 145
    Align = alTop
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    DesignSize = (
      312
      145)
    object sGroupBox1: TsGroupBox
      Left = 8
      Top = 8
      Width = 297
      Height = 121
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      DesignSize = (
        297
        121)
      object in_Nominal: TLabeledEdit
        Left = 80
        Top = 68
        Width = 121
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 38
        EditLabel.Height = 13
        EditLabel.Caption = 'Nominal'
        LabelPosition = lpLeft
        TabOrder = 0
        OnClick = in_NominalClick
      end
      object in_NIM: TLabeledEdit
        Left = 80
        Top = 40
        Width = 121
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 20
        EditLabel.Height = 13
        EditLabel.Caption = 'NIM'
        LabelPosition = lpLeft
        TabOrder = 1
        OnClick = in_NIMClick
      end
      object in_KodeIuran: TLabeledEdit
        Left = 80
        Top = 16
        Width = 121
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 67
        EditLabel.Height = 13
        EditLabel.Caption = 'KODE IURAN'
        LabelPosition = lpLeft
        TabOrder = 2
        OnClick = in_KodeIuranClick
      end
      object in_Keterangan: TLabeledEdit
        Left = 80
        Top = 92
        Width = 121
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 55
        EditLabel.Height = 13
        EditLabel.Caption = 'Keterangan'
        LabelPosition = lpLeft
        TabOrder = 3
        OnClick = in_KeteranganClick
      end
      object btnProses: TsButton
        Left = 208
        Top = 24
        Width = 75
        Height = 81
        Anchors = [akTop, akRight]
        Caption = 'Proses'
        TabOrder = 4
        OnClick = btnProsesClick
        SkinData.SkinSection = 'BUTTON'
      end
      object Memo1: TMemo
        Left = -32
        Top = 24
        Width = 185
        Height = 89
        TabOrder = 5
        Visible = False
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 145
    Width = 312
    Height = 267
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
