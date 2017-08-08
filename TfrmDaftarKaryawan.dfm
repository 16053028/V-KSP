object DaftarKaryawan: TDaftarKaryawan
  Left = 377
  Top = 122
  Align = alClient
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Daftar Karyawan'
  ClientHeight = 635
  ClientWidth = 903
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
  object winContainer: TsPanel
    Left = 0
    Top = 0
    Width = 903
    Height = 513
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    DesignSize = (
      903
      513)
    object cariContainer: TsGroupBox
      Left = 8
      Top = 16
      Width = 185
      Height = 73
      Caption = 'CARI KARYAWAN : '
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      object in_CariNIK: TsEdit
        Left = 2
        Top = 15
        Width = 181
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'Masukkan NIK ...'
        OnChange = in_CariNIKChange
        OnClick = in_CariNIKClick
        Align = alTop
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
      object btnProses: TsBitBtn
        Left = 16
        Top = 40
        Width = 153
        Height = 25
        Caption = 'PROSES'
        TabOrder = 1
        OnClick = btnProsesClick
        SkinData.SkinSection = 'BUTTON'
      end
      object Memo1: TMemo
        Left = 56
        Top = 48
        Width = 185
        Height = 89
        TabOrder = 2
        Visible = False
      end
    end
    object OpContainer: TsGroupBox
      Left = 8
      Top = 96
      Width = 185
      Height = 284
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'OPERASI : '
      TabOrder = 1
      SkinData.SkinSection = 'GROUPBOX'
      object btnDelete: TsPanel
        Left = 2
        Top = 97
        Width = 181
        Height = 41
        Align = alTop
        Caption = 'DELETE'
        TabOrder = 0
        Visible = False
        OnClick = btnDeleteClick
        SkinData.SkinSection = 'PANEL'
      end
      object btnEdit: TsPanel
        Left = 2
        Top = 56
        Width = 181
        Height = 41
        Align = alTop
        Caption = 'EDIT'
        TabOrder = 1
        Visible = False
        OnClick = btnEditClick
        SkinData.SkinSection = 'PANEL'
      end
      object btnTambah: TsPanel
        Left = 2
        Top = 15
        Width = 181
        Height = 41
        Align = alTop
        Caption = 'TAMBAH'
        TabOrder = 2
        OnClick = btnTambahClick
        SkinData.SkinSection = 'PANEL'
      end
      object sPanel1: TsPanel
        Left = 2
        Top = 241
        Width = 181
        Height = 41
        Align = alBottom
        Caption = 'CETAK'
        TabOrder = 3
        Visible = False
        SkinData.SkinSection = 'PANEL'
      end
    end
    object DataContainer: TsGroupBox
      Left = 200
      Top = 16
      Width = 697
      Height = 489
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 2
      Visible = False
      SkinData.SkinSection = 'GROUPBOX'
      DesignSize = (
        697
        489)
      object in_NIK: TLabeledEdit
        Left = 80
        Top = 16
        Width = 601
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'NIK : '
        LabelPosition = lpLeft
        TabOrder = 0
        OnClick = in_NIKClick
      end
      object in_Nama: TLabeledEdit
        Left = 80
        Top = 40
        Width = 601
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 37
        EditLabel.Height = 13
        EditLabel.Caption = 'Nama : '
        LabelPosition = lpLeft
        TabOrder = 1
        OnClick = in_NamaClick
      end
      object in_NoHP: TLabeledEdit
        Left = 80
        Top = 64
        Width = 601
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 37
        EditLabel.Height = 13
        EditLabel.Caption = 'No Hp :'
        LabelPosition = lpLeft
        TabOrder = 2
        OnClick = in_NoHPClick
      end
      object in_Alamat: TLabeledEdit
        Left = 80
        Top = 136
        Width = 601
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 38
        EditLabel.Height = 13
        EditLabel.Caption = 'Alamat :'
        LabelPosition = lpLeft
        TabOrder = 3
        OnClick = in_AlamatClick
      end
      object BoxDAlamat: TsGroupBox
        Left = 80
        Top = 160
        Width = 601
        Height = 105
        Align = alCustom
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Detail Alamat : '
        TabOrder = 4
        SkinData.SkinSection = 'GROUPBOX'
        object in_Kota: TsComboBox
          Left = 2
          Top = 57
          Width = 597
          Height = 21
          Align = alTop
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
          TabOrder = 0
          Text = 'Kota'
          OnChange = in_KotaChange
        end
        object in_Kab: TsComboBox
          Left = 2
          Top = 36
          Width = 597
          Height = 21
          Align = alTop
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
          TabOrder = 1
          Text = 'Kabupaten'
          OnChange = in_KabChange
        end
        object in_Prov: TsComboBox
          Left = 2
          Top = 15
          Width = 597
          Height = 21
          Align = alTop
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
          Text = 'Provinsi'
          OnChange = in_ProvChange
        end
        object in_KodePos: TsEdit
          Left = 2
          Top = 78
          Width = 597
          Height = 21
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = 'Kode Pos'
          OnClick = in_KodePosClick
          Align = alTop
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
      object BoxTTl: TsGroupBox
        Left = 80
        Top = 272
        Width = 601
        Height = 65
        Align = alCustom
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Tempat Dan Tanggal Lahir : '
        TabOrder = 5
        SkinData.SkinSection = 'GROUPBOX'
        object in_TempatLahir: TsComboBox
          Left = 2
          Top = 15
          Width = 597
          Height = 21
          Align = alTop
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
          TabOrder = 0
          Text = 'Tempat Lahir'
          OnChange = in_TempatLahirChange
        end
        object in_TanggalLahir: TsDateEdit
          Left = 2
          Top = 36
          Width = 597
          Height = 21
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
          TabOrder = 1
          Text = '  /  /    '
          Align = alTop
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
      end
      object BoxJK: TsGroupBox
        Left = 80
        Top = 344
        Width = 601
        Height = 41
        Align = alCustom
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Jenis Kelamin :  '
        TabOrder = 6
        SkinData.SkinSection = 'GROUPBOX'
        object in_JenisKelamin: TsComboBox
          Left = 2
          Top = 15
          Width = 597
          Height = 21
          Align = alTop
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
          TabOrder = 0
          Text = 'L / P'
          OnChange = in_JenisKelaminChange
        end
      end
      object BoxBJ: TsGroupBox
        Left = 80
        Top = 392
        Width = 601
        Height = 65
        Align = alCustom
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Bagian Dan Jabatan :  '
        TabOrder = 7
        SkinData.SkinSection = 'GROUPBOX'
        object in_Jabatan: TsComboBox
          Left = 2
          Top = 36
          Width = 597
          Height = 21
          Align = alTop
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
          TabOrder = 0
          Text = 'Jabatan'
          OnChange = in_JabatanChange
        end
        object in_Bagian: TsComboBox
          Left = 2
          Top = 15
          Width = 597
          Height = 21
          Align = alTop
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
          TabOrder = 1
          Text = 'Bagian'
          OnChange = in_BagianChange
        end
      end
      object in_Agama: TsComboBox
        Left = 80
        Top = 87
        Width = 601
        Height = 21
        Align = alCustom
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
        TabOrder = 8
        Text = 'Agama'
        OnChange = in_AgamaChange
      end
      object in_Status: TsComboBox
        Left = 80
        Top = 111
        Width = 601
        Height = 21
        Align = alCustom
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
        TabOrder = 9
        Text = 'Status'
        OnChange = in_StatusChange
      end
    end
    object btnSimpan: TsButton
      Left = 16
      Top = 395
      Width = 169
      Height = 41
      Anchors = [akLeft, akBottom]
      Caption = 'SIMPAN'
      TabOrder = 3
      Visible = False
      OnClick = btnSimpanClick
      SkinData.SkinSection = 'BUTTON'
    end
    object btnCancel: TsButton
      Left = 16
      Top = 451
      Width = 169
      Height = 41
      Anchors = [akLeft, akBottom]
      Caption = 'CANCEL'
      TabOrder = 4
      Visible = False
      OnClick = btnCancelClick
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object TabelContainer: TDBGrid
    Left = 0
    Top = 512
    Width = 903
    Height = 123
    Align = alBottom
    DataSource = dbModule.dbDataSource
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer1Timer
    Left = 688
    Top = 16
  end
end
