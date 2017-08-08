object PengunduranAnggota: TPengunduranAnggota
  Left = 565
  Top = 258
  Width = 217
  Height = 291
  BorderIcons = [biSystemMenu]
  Caption = 'PengunduranAnggota'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 201
    Height = 105
    Align = alTop
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    DesignSize = (
      201
      105)
    object sGroupBox1: TsGroupBox
      Left = 8
      Top = 8
      Width = 185
      Height = 89
      Anchors = [akLeft, akTop, akRight]
      Caption = 'CARI ANGGOTA'
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      DesignSize = (
        185
        89)
      object LabeledEdit1: TLabeledEdit
        Left = 8
        Top = 32
        Width = 169
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 20
        EditLabel.Height = 13
        EditLabel.Caption = 'NIM'
        TabOrder = 0
      end
      object sButton1: TsButton
        Left = 16
        Top = 56
        Width = 153
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        Caption = 'MENGUNDURKAN DIRI'
        TabOrder = 1
        SkinData.SkinSection = 'BUTTON'
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 105
    Width = 201
    Height = 147
    Align = alClient
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
