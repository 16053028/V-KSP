object PendaftaranAnggota: TPendaftaranAnggota
  Left = 360
  Top = 98
  Width = 713
  Height = 494
  Align = alClient
  BorderIcons = [biSystemMenu]
  Caption = 'PendaftaranAnggota'
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
  object ss: TsPanel
    Left = 0
    Top = 0
    Width = 697
    Height = 455
    Align = alClient
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    DesignSize = (
      697
      455)
    object sGroupBox1: TsGroupBox
      Left = 8
      Top = 1
      Width = 681
      Height = 392
      Align = alCustom
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      DesignSize = (
        681
        392)
      object in_KodeKK: TLabeledEdit
        Left = 80
        Top = 360
        Width = 593
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 42
        EditLabel.Height = 13
        EditLabel.Caption = 'Kode KK'
        LabelPosition = lpLeft
        TabOrder = 0
      end
      object in_TanggalLahir: TsDateEdit
        Left = 80
        Top = 288
        Width = 441
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
        TabOrder = 1
        Text = '  /  /    '
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
      object in_NoIndentitas: TLabeledEdit
        Left = 80
        Top = 16
        Width = 593
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 57
        EditLabel.Height = 13
        EditLabel.Caption = 'No Identitas'
        LabelPosition = lpLeft
        TabOrder = 2
      end
      object in_NIM: TLabeledEdit
        Left = 80
        Top = 40
        Width = 593
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 20
        EditLabel.Height = 13
        EditLabel.Caption = 'NIM'
        LabelPosition = lpLeft
        TabOrder = 3
      end
      object in_NamaLengkap: TLabeledEdit
        Left = 80
        Top = 64
        Width = 593
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 73
        EditLabel.Height = 13
        EditLabel.Caption = 'Nama Lengkap'
        LabelPosition = lpLeft
        TabOrder = 4
      end
      object in_Alamat: TLabeledEdit
        Left = 80
        Top = 112
        Width = 593
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 32
        EditLabel.Height = 13
        EditLabel.Caption = 'Alamat'
        LabelPosition = lpLeft
        TabOrder = 5
      end
      object in_NoTelpon: TLabeledEdit
        Left = 80
        Top = 88
        Width = 593
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        EditLabel.Width = 50
        EditLabel.Height = 13
        EditLabel.Caption = 'No Telpon'
        LabelPosition = lpLeft
        TabOrder = 6
      end
      object in_JenisKelamin: TsComboBox
        Left = 80
        Top = 264
        Width = 593
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
        TabOrder = 7
        Text = 'Jenis Kelamin'
        OnChange = in_JenisKelaminChange
      end
      object in_TempatLahir: TsComboBox
        Left = 528
        Top = 288
        Width = 145
        Height = 21
        Anchors = [akTop, akRight]
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
        Text = 'Tempat Lahir'
        OnChange = in_TempatLahirChange
      end
      object in_Agama: TsComboBox
        Left = 80
        Top = 312
        Width = 593
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
        TabOrder = 9
        Text = 'Agama'
        OnChange = in_AgamaChange
      end
      object in_Status: TsComboBox
        Left = 80
        Top = 336
        Width = 593
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
        TabOrder = 10
        Text = 'Status'
        OnChange = in_StatusChange
      end
      object sGroupBox2: TsGroupBox
        Left = 80
        Top = 136
        Width = 593
        Height = 121
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Detail Alamat'
        TabOrder = 11
        SkinData.SkinSection = 'GROUPBOX'
        DesignSize = (
          593
          121)
        object in_prov: TsComboBox
          Left = 2
          Top = 15
          Width = 589
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
          Text = 'Provinsi'
          OnChange = in_provChange
        end
        object in_kabupaten: TsComboBox
          Left = 2
          Top = 36
          Width = 589
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
          OnChange = in_kabupatenChange
        end
        object in_Kota: TsComboBox
          Left = 2
          Top = 57
          Width = 589
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
          Text = 'Kota'
          OnChange = in_KotaChange
        end
        object in_KodePos: TLabeledEdit
          Left = 8
          Top = 84
          Width = 577
          Height = 21
          Anchors = [akLeft, akTop, akRight, akBottom]
          EditLabel.Width = 57
          EditLabel.Height = 13
          EditLabel.Caption = 'in_KodePos'
          LabelPosition = lpLeft
          TabOrder = 3
          Text = 'Kode Pos'
        end
      end
    end
    object btnDaftar: TsPanel
      Left = 496
      Top = 400
      Width = 185
      Height = 41
      Anchors = [akRight]
      Caption = 'DAFTARKAN'
      TabOrder = 1
      OnClick = btnDaftarClick
      SkinData.SkinSection = 'PANEL'
    end
    object Memo1: TMemo
      Left = 48
      Top = 416
      Width = 185
      Height = 89
      TabOrder = 2
      Visible = False
    end
  end
end
