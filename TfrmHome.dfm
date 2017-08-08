object Home: THome
  Left = 348
  Top = 169
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Main Windows'
  ClientHeight = 441
  ClientWidth = 798
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
    Width = 798
    Height = 41
    Align = alTop
    Caption = 'sPanel1'
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
  end
  object sPanel2: TsPanel
    Left = 0
    Top = 41
    Width = 798
    Height = 152
    Align = alTop
    Caption = 'sPanel2'
    TabOrder = 1
    SkinData.SkinSection = 'PANEL'
    object Memo1: TMemo
      Left = 32
      Top = 104
      Width = 185
      Height = 89
      TabOrder = 0
      Visible = False
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 208
    Width = 785
    Height = 225
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dbModule.dbDataSource
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
