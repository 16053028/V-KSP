unit TfrmDaftarKaryawan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, sPanel, StdCtrls, sLabel, Mask,
  sMaskEdit, sCustomComboEdit, sToolEdit, sComboBox, sEdit, sGroupBox,
  sButton, Buttons, sBitBtn;

type
  TDaftarKaryawan = class(TForm)
    winContainer: TsPanel;
    TabelContainer: TDBGrid;
    cariContainer: TsGroupBox;
    OpContainer: TsGroupBox;
    DataContainer: TsGroupBox;
    in_NIK: TLabeledEdit;
    in_Nama: TLabeledEdit;
    in_NoHP: TLabeledEdit;
    in_Alamat: TLabeledEdit;
    BoxDAlamat: TsGroupBox;
    in_Kota: TsComboBox;
    in_Kab: TsComboBox;
    in_Prov: TsComboBox;
    in_KodePos: TsEdit;
    BoxTTl: TsGroupBox;
    in_TempatLahir: TsComboBox;
    in_TanggalLahir: TsDateEdit;
    BoxJK: TsGroupBox;
    in_JenisKelamin: TsComboBox;
    BoxBJ: TsGroupBox;
    in_Jabatan: TsComboBox;
    in_Bagian: TsComboBox;
    in_Agama: TsComboBox;
    in_Status: TsComboBox;
    in_CariNIK: TsEdit;
    btnProses: TsBitBtn;
    btnSimpan: TsButton;
    btnCancel: TsButton;
    btnDelete: TsPanel;
    btnEdit: TsPanel;
    btnTambah: TsPanel;
    Memo1: TMemo;
    sPanel1: TsPanel;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    //== Begin Of Database Custom Procedure ==
    procedure dbCon_MainTbl();
    procedure dbcon_FindData();
    procedure dbCon_AddData();
    procedure dbCon_DelData();
    procedure dbCon_UpData();
    procedure dbCon_Cancel();
    //== End Of Database Custom Procedure ==

    //== Begin Of AI_Btn Custom Procedure ==
    procedure btnAwal();
    procedure btnEditField();
    procedure btnAddField();
    procedure btnDelField();
    procedure btnFindField();
    procedure btnCancelAll();
    //== End Of AI_Btn Custom Procedure ==

    //== Begin Of AI Custom Procedure ==
    procedure GetDataFromText();
    procedure GetDataFromDB();
    procedure ClearInput();
    procedure ClearVar();
    procedure VarToEdit();
    procedure LoadDataComBox();
    procedure in_ProvChange(Sender: TObject);
    procedure in_KabChange(Sender: TObject);
    procedure in_KotaChange(Sender: TObject);
    procedure in_AgamaChange(Sender: TObject);
    procedure in_StatusChange(Sender: TObject);
    procedure in_TempatLahirChange(Sender: TObject);
    procedure in_JenisKelaminChange(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure in_BagianChange(Sender: TObject);
    procedure in_JabatanChange(Sender: TObject);
    procedure in_NIKClick(Sender: TObject);
    procedure in_NamaClick(Sender: TObject);
    procedure in_NoHPClick(Sender: TObject);
    procedure in_AlamatClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure in_KodePosClick(Sender: TObject);
    procedure in_CariNIKClick(Sender: TObject);
    procedure in_CariNIKChange(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    //== End Of AI Custom Procedure ==
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DaftarKaryawan: TDaftarKaryawan;
  Is_Edit: Boolean;
  Is_Add: Boolean;
  Is_Del: Boolean;
  is_Find: Boolean;
  NIK: String;
  Nama: String;
  NoHP: String;
  Agama: Integer;
  Status: Integer;
  Alamat: String;
  Prov: Integer;
  Kab: Integer;
  Kota: Integer;
  KodePos: String;
  TempatLahir: Integer;
  TanggalLahir: String;
  JenisKelamin: String;
  Jabatan: Integer;
  Bagian: Integer;

implementation

uses moduleDB, DB, ADODB, Math;

{$R *.dfm}

//== Begin Of Database Custom Procedure ==
Procedure TDaftarKaryawan.dbCon_MainTbl();
begin
  Memo1.Lines.LoadFromFile('.\data\database\QueryCom\DaftarKaryawan.txt');
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      Close;
      SQL.Add(Memo1.Text);
      Open;
      Active:= True;
    end;
end;

procedure TDaftarKaryawan.dbcon_FindData();
begin
  with dbModule.dbQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add(Memo1.Text+' WHERE detail_karyawan.NIK = '+QuotedStr(NIK));
      Open;
    end;
end;

procedure TDaftarKaryawan.dbCon_AddData();
begin
  with dbModule.dbQuery do
    begin
      Open;
      //CountRectLama:=CountRectLama+RecordCount;
      SQL.Clear;
      SQl.Add('INSERT INTO detail_karyawan');
      SQL.Add('( NIK, '
                +'NAMA_LENGKAP, '
                +'ALAMAT, '
                +'NO_TELP, '
                +'JENIS_KELAMIN, '
                +'AGAMA, '
                +'STATUS, '
                +'TANGGAL_LAHIR, '
                +'TEMPAT_LAHIR, '
                +'JABATAN, '
                +'BAGIAN, '
                +'KAB, '
                +'PROVINSI, '
                +'KOTA, '
                +'KODE_POS)');
      SQL.Add('VALUES ('+QuotedStr(NIK)+', '
              +QuotedStr(Nama)+', '
              +QuotedStr(Alamat)+', '
              +QuotedStr(NoHP)+', '
              +QuotedStr(JenisKelamin)+', '
              +QuotedStr(IntToStr(Agama))+', '
              +QuotedStr(IntToStr(Status))+', '
              +QuotedStr(TanggalLahir)+', '
              +QuotedStr(IntToStr(TempatLahir))+', '
              +QuotedStr(IntToStr(Jabatan))+', '
              +QuotedStr(IntToStr(Bagian))+', '
              +QuotedStr(IntToStr(Kab))+', '
              +QuotedStr(IntToStr(Prov))+', '
              +QuotedStr(IntToStr(Kota))+', '
              +QuotedStr(KodePos)+')');
      ExecSQL;
      Close;
      dbCon_MainTbl();
      Requery();
      //CountRectBaru:= CountRectLama+(RecordCount+1);
    end;
  ClearVar();
  ClearInput();
  Is_Add:=False;
  dbCon_MainTbl();
end;

procedure TDaftarKaryawan.dbCon_DelData();
begin
with dbModule.dbQuery do
    begin
      Open;
      //CountRectLama:=CountRectLama+RecordCount;
      SQL.Clear;
      SQl.Add('DELETE FROM detail_karyawan WHERE NIK ='+QuotedStr(NIK));
      ExecSQL;
      Close;
      Memo1.Lines.LoadFromFile('.\data\database\QueryCom\DaftarKaryawan.txt');
      SQL.Text:=Memo1.Text;
      Open;
      Requery();
      //CountRectBaru:= CountRectLama-(RecordCount-1);
    end;
end;

procedure TDaftarKaryawan.dbCon_UpData();
begin
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      SQl.Add('UPDATE detail_karyawan');
      SQL.Add('SET NIK = '+QuotedStr(NIK)
              +', NAMA_LENGKAP = '+QuotedStr(Nama)
              +', ALAMAT = '+QuotedStr(Alamat)
              +', NO_TELP = '+QuotedStr(NoHP)
              +', JENIS_KELAMIN = '+QuotedStr(JenisKelamin)
              +', AGAMA = '+QuotedStr(IntToStr(Agama))
              +', STATUS = '+QuotedStr(IntToStr(Status))
              +', TANGGAL_LAHIR = '+QuotedStr(TanggalLahir)
              +', TEMPAT_LAHIR = '+QuotedStr(IntToStr(TempatLahir))
              +', JABATAN = '+QuotedStr(IntToStr(Jabatan))
              +', BAGIAN = '+QuotedStr(IntToStr(Bagian))
              +', KAB = '+QuotedStr(IntToStr(Kab))
              +', PROVINSI = '+QuotedStr(IntToStr(Prov))
              +', KOTA = '+QuotedStr(IntToStr(Kota))
              +', KODE_POS = '+QuotedStr(KodePos));
      SQL.Add('WHERE NIK ='+QuotedStr(NIK));
      ExecSQL;
    end;
  ClearVar();
  ClearInput();
  Is_Edit:=False;
  dbCon_MainTbl();
end;

procedure TDaftarKaryawan.dbCon_Cancel();
begin
//
end;
//== End Of Database Custom Procedure ==

//== Begin Of AI_Btn Custom Procedure ==
procedure TDaftarKaryawan.btnAwal();
begin
  btnProses.Visible:= True;
  btnTambah.Visible:= True;
  btnEdit.Visible:= False;
  btnDelete.Visible:= False;
  btnSimpan.Visible:= False;
  btnCancel.Visible:= False;
  DataContainer.Visible:=True;
  btnCancelAll();
end;

procedure TDaftarKaryawan.btnEditField();
begin
  dbModule.dbQuery.Edit;
  btnProses.Visible:= False;
  btnTambah.Visible:= False;
  btnEdit.Visible:= True;
  btnDelete.Visible:= True;
  btnSimpan.Visible:= True;
  btnCancel.Visible:= True;
  Is_Edit:= True;
end;

procedure TDaftarKaryawan.btnAddField();
begin
  dbModule.dbQuery.Append;
  btnProses.Visible:= False;
  btnTambah.Visible:= False;
  btnEdit.Visible:= False;
  btnDelete.Visible:= False;
  btnSimpan.Visible:= True;
  btnCancel.Visible:= True;
  DataContainer.Visible:= True;
  Is_Add:= True;
end;

procedure TDaftarKaryawan.btnDelField();
begin
  btnAwal();
end;

procedure TDaftarKaryawan.btnFindField();
begin
  btnEditField();
  is_Find:=True;
end;

procedure TDaftarKaryawan.btnCancelAll();
begin
  Is_Edit:= False;
  Is_Add:= False;
  Is_Del:= False;
  is_Find:= False;
  btnProses.Visible:= True;
  btnTambah.Visible:= True;
  btnEdit.Visible:= False;
  btnDelete.Visible:= False;
  btnSimpan.Visible:= False;
  btnCancel.Visible:= False;
  DataContainer.Visible:= False;

end;
//== End Of AI_Btn Custom Procedure ==

//== Begin Of AI Custom Procedure ==
procedure TDaftarKaryawan.GetDataFromText();
begin
  NIK:= in_NIK.Text;
  Nama:= in_Nama.Text;
  NoHP:= in_NoHP.Text;
  Alamat:= in_Alamat.Text;
  KodePos:= in_KodePos.Text;
  TanggalLahir:= in_TanggalLahir.Text;
end;

procedure TDaftarKaryawan.GetDataFromDB();
begin
  NIK:= dbModule.dbQuery.FieldByName('NIK').Value;
  Nama:= dbModule.dbQuery.FieldByName('NAMA_LENGKAP').Value;
  NoHP:= dbModule.dbQuery.FieldByName('NO_TELP').Value;
  Agama:= StrToInt(dbModule.dbQuery.FieldByName('AGAMA').Value);
  Status:= StrToInt(dbModule.dbQuery.FieldByName('STATUS').Value);
  Alamat:= dbModule.dbQuery.FieldByName('ALAMAT').Value;
  prov:= StrToInt(dbModule.dbQuery.FieldByName('PROVINSI').Value);
  Kab:= StrToInt(dbModule.dbQuery.FieldByName('KAB').Value);
  Kota:= StrToInt(dbModule.dbQuery.FieldByName('KOTA').Value);
  KodePos:= dbModule.dbQuery.FieldByName('KODE_POS').Value;
  TempatLahir:= StrToInt(dbModule.dbQuery.FieldByName('TEMPAT_LAHIR').Value);
  TanggalLahir:= dbModule.dbQuery.FieldByName('TANGGAL_LAHIR').Value;
  JenisKelamin:= dbModule.dbQuery.FieldByName('JENIS_KELAMIN').Value;
  Jabatan:= StrToInt(dbModule.dbQuery.FieldByName('JABATAN').Value);
  Bagian:= StrToInt(dbModule.dbQuery.FieldByName('BAGIAN').Value);
end;

procedure TDaftarKaryawan.ClearInput();
begin
  in_NIK.Clear;
  in_Nama.Clear;
  in_NoHP.Clear;
  in_Alamat.Clear;
  in_Kota.ItemIndex:= -1;
  in_Kab.ItemIndex:= -1;
  in_Prov.ItemIndex:= -1;
  in_KodePos.Clear;
  in_TempatLahir.ItemIndex:= -1;
  in_TanggalLahir.Clear;
  in_JenisKelamin.ItemIndex:= -1;
  in_Jabatan.ItemIndex:= -1;
  in_Bagian.ItemIndex:= -1;
  in_Agama.ItemIndex:= -1;
  in_Status.ItemIndex:= -1;
  in_CariNIK.Clear;
end;

procedure TDaftarKaryawan.ClearVar();
begin
  NIK:= '';
  Nama:= '';
  NoHP:= '';
  Agama:= 0;
  Status:= 0;
  Alamat:= '';
  prov:= 0;
  Kab:= 0;
  Kota:= 0;
  KodePos:= '';
  TempatLahir:= 0;
  TanggalLahir:= '';
  JenisKelamin:= '';
  Jabatan:= 0;
  Bagian:= 0;
end;

procedure TDaftarKaryawan.VarToEdit();
begin
  in_NIK.Text:= NIK;
  in_Nama.Text:= Nama;
  in_NoHP.Text:= NoHP;
  in_Alamat.Text:= Alamat;
  in_Kota.ItemIndex:= Kota-1;
  in_Kab.ItemIndex:= Kab-1;
  in_Prov.ItemIndex:= Prov-1;
  in_KodePos.Text:= KodePos;
  in_TempatLahir.ItemIndex:= TempatLahir-1;
  in_TanggalLahir.Text:= TanggalLahir;
  in_Jabatan.ItemIndex:= Jabatan-1;
  in_Bagian.ItemIndex:= Bagian-1;
  in_Agama.ItemIndex:= Agama-1;
  in_Status.ItemIndex:= Status-1;
  if JenisKelamin='L' then
    in_JenisKelamin.ItemIndex:=0
  else
    in_JenisKelamin.ItemIndex:=1;
end;

procedure TDaftarKaryawan.LoadDataComBox();
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
      in_Kab.Items.Add(dbModule.dbQuery.FieldByName('KABUPATEN').Value);
      dbModule.dbQuery.Next;
    end;
//Load ComboBox Jabatan
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      SQL.Add('SELECT JABATAN FROM k_jab');
      Open;
    end;
    while not dbModule.dbQuery.Eof do
    begin
      in_Jabatan.Items.Add(dbModule.dbQuery.FieldByName('JABATAN').Value);
      dbModule.dbQuery.Next;
    end;
//Load ComboBox Bagian
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      SQL.Add('SELECT BAGIAN FROM k_bag');
      Open;
    end;
    while not dbModule.dbQuery.Eof do
    begin
      in_Bagian.Items.Add(dbModule.dbQuery.FieldByName('BAGIAN').Value);
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
//== End Of AI Custom Procedure ==

procedure TDaftarKaryawan.FormShow(Sender: TObject);
begin
  LoadDataComBox();
  dbCon_MainTbl();
  Timer1.Enabled:=true;
end;

procedure TDaftarKaryawan.in_ProvChange(Sender: TObject);
begin
Prov:=in_Prov.ItemIndex+1;
end;

procedure TDaftarKaryawan.in_KabChange(Sender: TObject);
begin
Kab:=in_Kab.ItemIndex+1;
end;

procedure TDaftarKaryawan.in_KotaChange(Sender: TObject);
begin
Kota:=in_Kota.ItemIndex+1;
end;

procedure TDaftarKaryawan.in_AgamaChange(Sender: TObject);
begin
Agama:=in_Agama.ItemIndex+1;
end;

procedure TDaftarKaryawan.in_StatusChange(Sender: TObject);
begin
Status:=in_Status.ItemIndex+1;
end;

procedure TDaftarKaryawan.in_TempatLahirChange(Sender: TObject);
begin
TempatLahir:=in_TempatLahir.ItemIndex+1;
end;

procedure TDaftarKaryawan.in_JenisKelaminChange(Sender: TObject);
begin
if in_JenisKelamin.ItemIndex=0 then
  JenisKelamin:= 'L'
else
  JenisKelamin:= 'P';
end;

procedure TDaftarKaryawan.btnSimpanClick(Sender: TObject);
begin
GetDataFromText();
if btnSimpan.Caption='UPDATE' then
  dbCon_UpData()
else
  begin
  dbCon_AddData();
  end;
btnCancelAll();
end;

procedure TDaftarKaryawan.in_BagianChange(Sender: TObject);
begin
Bagian:= in_Bagian.ItemIndex+1
end;

procedure TDaftarKaryawan.in_JabatanChange(Sender: TObject);
begin
Jabatan:=in_Jabatan.ItemIndex+1;
end;

procedure TDaftarKaryawan.in_NIKClick(Sender: TObject);
begin
in_NIK.SetFocus;
end;

procedure TDaftarKaryawan.in_NamaClick(Sender: TObject);
begin
in_Nama.SetFocus
end;

procedure TDaftarKaryawan.in_NoHPClick(Sender: TObject);
begin
in_NoHP.SetFocus;
end;

procedure TDaftarKaryawan.in_AlamatClick(Sender: TObject);
begin
in_Alamat.SetFocus;
end;

procedure TDaftarKaryawan.btnEditClick(Sender: TObject);
begin
  with dbModule.dbQuery do
  begin
    SQL.Clear;
    SQL.Add('SELECT * FROM detail_karyawan');
    Open;
  end;
  GetDataFromDB();
  dbModule.dbQuery.Edit;
  DataContainer.Visible:= True;
  btnEditField();
  VarToEdit();
  dbCon_MainTbl();
end;

procedure TDaftarKaryawan.in_KodePosClick(Sender: TObject);
begin
in_KodePos.SetFocus;
end;

procedure TDaftarKaryawan.in_CariNIKClick(Sender: TObject);
begin
in_CariNIK.SetFocus;
end;

procedure TDaftarKaryawan.in_CariNIKChange(Sender: TObject);
begin
if in_CariNIK.Text='' then
 dbCon_MainTbl()
else
  begin
  NIK:= in_CariNIK.Text;
  dbcon_FindData();
  btnFindField();
  end
end;

procedure TDaftarKaryawan.btnTambahClick(Sender: TObject);
begin
  DataContainer.Visible:=True;
  in_NIK.SetFocus;
  btnAddField();
end;

procedure TDaftarKaryawan.btnProsesClick(Sender: TObject);
begin
 dbcon_FindData();
 is_Find:= True;
end;

procedure TDaftarKaryawan.Timer1Timer(Sender: TObject);
begin
  if Is_Edit= True then
      btnSimpan.Caption:='UPDATE'
  else
    btnSimpan.Caption:= 'TAMBAHKAN';
end;

procedure TDaftarKaryawan.btnCancelClick(Sender: TObject);
begin
  ClearInput();
  ClearVar();
  btnCancelAll();
  dbModule.dbQuery.Cancel;
  dbCon_MainTbl();
end;

procedure TDaftarKaryawan.btnDeleteClick(Sender: TObject);
begin
dbCon_DelData();
end;

end.
