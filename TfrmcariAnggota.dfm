object CariAnggota: TCariAnggota
  Left = 432
  Top = 189
  Width = 928
  Height = 480
  Align = alClient
  BorderIcons = [biSystemMenu]
  Caption = 'CariAnggota'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TsPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 49
    Align = alTop
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object in_CAriAnggota: TLabeledEdit
      Left = 80
      Top = 8
      Width = 121
      Height = 21
      EditLabel.Width = 67
      EditLabel.Height = 13
      EditLabel.Caption = 'Cari Anggota :'
      LabelPosition = lpLeft
      TabOrder = 0
    end
    object sButton1: TsButton
      Left = 208
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 1
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton2: TsButton
      Left = 296
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 2
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton3: TsButton
      Left = 384
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cetak'
      TabOrder = 3
      SkinData.SkinSection = 'BUTTON'
    end
    object Memo1: TMemo
      Left = 712
      Top = 0
      Width = 185
      Height = 89
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 912
    Height = 392
    Align = alClient
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
