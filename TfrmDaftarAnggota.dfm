object DaftarAnggota: TDaftarAnggota
  Left = 447
  Top = 299
  Align = alClient
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Daftar Anggota'
  ClientHeight = 405
  ClientWidth = 912
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
    Width = 912
    Height = 49
    Align = alTop
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    DesignSize = (
      912
      49)
    object Memo1: TMemo
      Left = 728
      Top = -8
      Width = 185
      Height = 89
      TabOrder = 0
      Visible = False
    end
    object in_Cari: TLabeledEdit
      Left = 80
      Top = 16
      Width = 145
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      EditLabel.Width = 67
      EditLabel.Height = 13
      EditLabel.Caption = 'Cari Anggota :'
      LabelPosition = lpLeft
      TabOrder = 1
      Text = 'Masukkan NIM...'
      OnChange = in_CariChange
      OnClick = in_CariClick
    end
    object btnProses: TsButton
      Left = 232
      Top = 16
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Proses'
      TabOrder = 2
      OnClick = btnProsesClick
      SkinData.SkinSection = 'BUTTON'
    end
    object btnEdit: TsButton
      Left = 320
      Top = 16
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Edit'
      TabOrder = 3
      Visible = False
      SkinData.SkinSection = 'BUTTON'
    end
    object btnCetak: TsButton
      Left = 408
      Top = 16
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Cetak'
      TabOrder = 4
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 912
    Height = 356
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
