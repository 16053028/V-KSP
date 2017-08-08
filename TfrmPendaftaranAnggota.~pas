unit TfrmPendaftaranAnggota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, sMaskEdit, sCustomComboEdit, sToolEdit, StdCtrls, sEdit,
  sComboBox, ExtCtrls, sGroupBox, sPanel, sButton;

type
  TPendaftaranAnggota = class(TForm)
    ss: TsPanel;
    sGroupBox1: TsGroupBox;
    in_KodePos: TLabeledEdit;
    in_KodeKK: TLabeledEdit;
    in_TanggalLahir: TsDateEdit;
    in_NoIndentitas: TLabeledEdit;
    in_NIM: TLabeledEdit;
    in_NamaLengkap: TLabeledEdit;
    in_Alamat: TLabeledEdit;
    in_NoTelpon: TLabeledEdit;
    in_JenisKelamin: TsComboBox;
    in_TempatLahir: TsComboBox;
    in_Agama: TsComboBox;
    in_Status: TsComboBox;
    in_kabupaten: TsComboBox;
    in_prov: TsComboBox;
    in_Kota: TsComboBox;
    sGroupBox2: TsGroupBox;
    btnDaftar: TsPanel;
    Memo1: TMemo;
    //== begin of Custom DB Procedure ==
      procedure dbCon_MainTbl();
      procedure dbCon_AddData();
      procedure LoadDataComBox();
      procedure ClearField();
    //== end of Custom DB Procedure ==
    procedure in_provChange(Sender: TObject);
    procedure in_kabupatenChange(Sender: TObject);
    procedure in_KotaChange(Sender: TObject);
    procedure in_JenisKelaminChange(Sender: TObject);
    procedure in_TempatLahirChange(Sender: TObject);
    procedure in_AgamaChange(Sender: TObject);
    procedure in_StatusChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnDaftarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PendaftaranAnggota: TPendaftaranAnggota;
  NO_IDENTITAS: string;
  NIM: string;
  NAMA_LENGKAP: string;
  ALAMAT: string;
  NO_TELP: string;
  JENIS_KELAMIN: string;
  TANGGAL_LAHIR: string;
  TEMPAT_LAHIR: Integer;
  AGAMA: Integer;
  STATUS: Integer;
  KODE_KK: string;
  KAB: Integer;
  PROVINSI: Integer;
  KOTA: Integer;
  KODE_POS: string;
  TGL_DAFTAR: string;


implementation

uses Math, moduleDB;

{$R *.dfm}

//== begin of Custom DB Procedure ==
Procedure TPendaftaranAnggota.dbCon_MainTbl();
begin
  Memo1.Lines.LoadFromFile('.\data\database\QueryCom\DaftarMember.txt');
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      Close;
      SQL.Add(Memo1.Text);
      Open;
      Active:= True;
    end;
end;

procedure TPendaftaranAnggota.dbCon_AddData();
begin
  with dbModule.dbQuery do
    begin
      Open;
      SQL.Clear;
      SQl.Add('INSERT INTO detail_member');
      SQL.Add('( NO_IDENTITAS, '
                +'NIM, '
                +'NAMA_LENGKAP, '
                +'ALAMAT, '
                +'NO_TELP, '
                +'JENIS_KELAMIN, '
                +'TANGGAL_LAHIR, '
                +'TEMPAT_LAHIR, '
                +'AGAMA, '
                +'STATUS, '
                +'KODE_KK, '
                +'KAB, '
                +'PROVINSI, '
                +'KOTA, '
                +'KODE_POS, '
                +'TGL_DAFTAR, '
                +'KETERANGAN)');
      SQL.Add('VALUES ('+QuotedStr(NO_IDENTITAS)+', '
              +QuotedStr(NIM)+', '
              +QuotedStr(NAMA_LENGKAP)+', '
              +QuotedStr(ALAMAT)+', '
              +QuotedStr(NO_TELP)+', '
              +QuotedStr(JENIS_KELAMIN)+', '
              +QuotedStr(TANGGAL_LAHIR)+', '
              +QuotedStr(IntToStr(TEMPAT_LAHIR))+', '
              +QuotedStr(IntToStr(AGAMA))+', '
              +QuotedStr(IntToStr(STATUS))+', '
              +QuotedStr(KODE_KK)+', '
              +QuotedStr(IntToStr(KAB))+', '
              +QuotedStr(IntToStr(PROVINSI))+', '
              +QuotedStr(IntToStr(KOTA))+', '
              +QuotedStr(KODE_POS)+', '
              +QuotedStr(TGL_DAFTAR)+', '
              +'"AKTIF")');
      ExecSQL;
      dbCon_MainTbl();
      Requery();
    end;
end;
//== end of Custom DB Procedure ==

procedure TPendaftaranAnggota.LoadDataComBox();
begin
//Load ComboBox Agama
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      SQL.Add('SELECT AGAMA FROM det_agama');
      Open;
    end;
    while not dbModule.dbQuery.Eof do
    begin
      in_Agama.Items.Add(dbModule.dbQuery.FieldByName('AGAMA').Value);
      dbModule.dbQuery.Next;
    end;
//Load ComboBox Jenis Kelamin
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      SQL.Add('SELECT JENIS_KELAMIN FROM det_jk');
      Open;
    end;
    while not dbModule.dbQuery.Eof do
    begin
      in_JenisKelamin.Items.Add(dbModule.dbQuery.FieldByName('JENIS_KELAMIN').Value);
      dbModule.dbQuery.Next;
    end;
//Load ComboBox Provinsi
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      SQL.Add('SELECT PROVINSI FROM det_Prov');
      Open;
    end;
    while not dbModule.dbQuery.Eof do
    begin
      in_Prov.Items.Add(dbModule.dbQuery.FieldByName('PROVINSI').Value);
      dbModule.dbQuery.Next;
    end;
//Load ComboBox Password
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      SQL.Add('SELECT KOTA FROM det_kota');
      Open;
    end;
    while not dbModule.dbQuery.Eof do
    begin
      in_Kota.Items.Add(dbModule.dbQuery.FieldByName('KOTA').Value);
      dbModule.dbQuery.Next;
    end;
//Load ComboBox Kabupaten
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      SQL.Add('SELECT KABUPATEN FROM det_Kab');
      Open;
    end;
    while not dbModule.dbQuery.Eof do
    begin
      in_kabupaten.Items.Add(dbModule.dbQuery.FieldByName('KABUPATEN').Value);
      dbModule.dbQuery.Next;
    end;
//Load ComboBox Jabatan
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      SQL.Add('SELECT Status FROM det_status');
      Open;
    end;
    while not dbModule.dbQuery.Eof do
    begin
      in_Status.Items.Add(dbModule.dbQuery.FieldByName('Status').Value);
      dbModule.dbQuery.Next;
    end;
//Load ComboBox Tempat Lahir
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      SQL.Add('SELECT TEMPAT_LAHIR FROM detTL');
      Open;
    end;
    while not dbModule.dbQuery.Eof do
    begin
      in_TempatLahir.Items.Add(dbModule.dbQuery.FieldByName('TEMPAT_LAHIR').Value);
      dbModule.dbQuery.Next;
    end;
end;

procedure TPendaftaranAnggota.ClearField();
begin
  in_Agama.Text:= 'Agama';
  in_JenisKelamin.Text:= 'Jenis Kelamin';
  in_TempatLahir.Text:= 'Tempat Lahir';
  in_Status.Text:= 'Status';
  in_prov.Text:= 'Provinsi';
  in_kabupaten.Text:= 'Kabupaten';
  in_Kota.Text:= 'Kota';
  in_KodePos.Clear;
  in_KodeKK.Clear;
  in_TanggalLahir.Clear;
  in_NoIndentitas.Clear;
  in_NIM.Clear;
  in_NamaLengkap.Clear;
  in_Alamat.Clear;
  in_NoTelpon.Clear;
end;

procedure TPendaftaranAnggota.in_provChange(Sender: TObject);
begin
  if in_prov.ItemIndex>-1 then
    PROVINSI:= in_prov.ItemIndex+1
  else
    PROVINSI:= 0;
end;

procedure TPendaftaranAnggota.in_kabupatenChange(Sender: TObject);
begin
  if in_kabupaten.ItemIndex>-1 then
    KAB:= in_kabupaten.ItemIndex+1
  else
    KAB:= 0;
end;

procedure TPendaftaranAnggota.in_KotaChange(Sender: TObject);
begin
  if in_Kota.ItemIndex>-1 then
    KOTA:= in_Kota.ItemIndex+1
  else
    KOTA:= 0;
end;

procedure TPendaftaranAnggota.in_JenisKelaminChange(Sender: TObject);
begin
  if in_JenisKelamin.ItemIndex=0 then
    JENIS_KELAMIN:= 'L'
  else
    JENIS_KELAMIN:= 'P';
end;

procedure TPendaftaranAnggota.in_TempatLahirChange(Sender: TObject);
begin
  if in_TempatLahir.ItemIndex>-1 then
    TEMPAT_LAHIR:= in_TempatLahir.ItemIndex+1
  else
    TEMPAT_LAHIR:= 0;
end;

procedure TPendaftaranAnggota.in_AgamaChange(Sender: TObject);
begin
  if in_Agama.ItemIndex>-1 then
    AGAMA:= in_Agama.ItemIndex+1
  else
    AGAMA:= 0;
end;

procedure TPendaftaranAnggota.in_StatusChange(Sender: TObject);
begin
  if in_Status.ItemIndex>-1 then
    STATUS:= in_Status.ItemIndex+1
  else
    STATUS:= 0;
end;

procedure TPendaftaranAnggota.FormShow(Sender: TObject);
begin
dbCon_MainTbl();
TGL_DAFTAR:= DateToStr(Date);
LoadDataComBox();
end;

procedure TPendaftaranAnggota.btnDaftarClick(Sender: TObject);
begin
NO_IDENTITAS:= in_NoIndentitas.Text;
NIM:= in_NIM.Text;
NAMA_LENGKAP:= in_NamaLengkap.Text;
ALAMAT:= in_Alamat.Text;
KODE_KK:= in_KodeKK.Text;
KODE_POS:= in_KodePos.Text;
NO_TELP:= in_NoTelpon.Text;
TANGGAL_LAHIR:= in_TanggalLahir.Text;
TGL_DAFTAR:= DateToStr(now);
dbModule.dbQuery.Append;
if Application.MessageBox('Apakah anda ingin menyimpan data ?',
                          'Tambah Member Baru', MB_YESNO OR MB_ICONQUESTION) = IDYES then
  begin
  dbCon_AddData();
  ShowMessage('Data berhasil ditambahkan!');
  ClearField();
  end
else
  begin
  dbModule.dbQuery.Cancel;
  ShowMessage('Batal menyimpan data!');
    if Application.MessageBox('Apakah anda ingin membiarkan input field?',
                              'KONFIRMASI', MB_YESNO OR MB_ICONQUESTION) = IDYES then ClearField();
  end;
end;

end.
