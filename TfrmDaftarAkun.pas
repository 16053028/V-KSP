unit TfrmDaftarAkun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, acProgressBar, StdCtrls, sComboBox, ExtCtrls, sLabel,
  sEdit, sGroupBox, sPanel, Grids, DBGrids, sButton;

type
  TDaftarAkun = class(TForm)
    Memo1: TMemo;
    DBGrid1: TDBGrid;
    headContainer: TsPanel;
    sGroupBox1: TsGroupBox;
    in_Cari: TsEdit;
    sPanel6: TsPanel;
    sGroupBox2: TsGroupBox;
    btnTambah: TsPanel;
    btnEdit: TsPanel;
    btnDelete: TsPanel;
    sGroupBox3: TsGroupBox;
    sLabel1: TsLabel;
    in_Username: TLabeledEdit;
    in_Password: TLabeledEdit;
    in_Status: TsComboBox;
    in_Kode: TLabeledEdit;
    btnSimpan: TsPanel;
    btnCancel: TsPanel;
    sProgressBar1: TsProgressBar;
    sButton1: TsButton;
    procedure btnTambahClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure in_CariClick(Sender: TObject);
    procedure sPanel6Click(Sender: TObject);
    procedure in_CariChange(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure in_KodeClick(Sender: TObject);
    procedure in_UsernameClick(Sender: TObject);
    procedure in_PasswordChange(Sender: TObject);
    procedure in_StatusClick(Sender: TObject);
    procedure in_KodeChange(Sender: TObject);
    //== Begin of Database Procedure
    Procedure dbCon_MainTbl();
    Procedure dbCon_LoadStatsTbl();
    Procedure dbCon_FindData();
    Procedure dbCon_AddData();
    Procedure dbCon_DelData();
    Procedure dbCon_Cancel();
    procedure dbCon_UpData();
    Procedure dbCon_FindDataK();
    //== End of Database Procedure

    //Begin of AI Properties Procedure
    Procedure EditBtn();
    Procedure AddBtn();
    Procedure FindBtn();
    Procedure DelBtn();
    Procedure SaveBtn();
    procedure btnDeleteClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    //End of AI Properties Procedure
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DaftarAkun: TDaftarAkun;
  NIK: String;
  USERNAME: String;
  PASSWORD: String;
  STATUS: String;
  CountRectLama:Integer;
  CountRectBaru:Integer;
  is_edited:Boolean;

implementation

uses moduleDB, DB, ADODB, TfrmDashboard;

{$R *.dfm}

//== Begin of Custom Database Procedure
Procedure TDaftarAkun.dbCon_MainTbl();
begin
  Memo1.Lines.LoadFromFile('.\data\database\QueryCom\DaftarAkun.txt');
  with dbModule.dbQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add(Memo1.Text);
      Open;
      Active:=True;
    end;
end;

Procedure TDaftarAkun.dbCon_LoadStatsTbl();
begin
  with dbModule.dbQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM status_karyawan');
      Open;
    end;
  while not dbModule.dbQuery.Eof do
    begin
      in_Status.Items.Add(dbModule.dbQuery.FieldByName('STATUS_KARYAWAN').AsString);
      dbModule.dbQuery.Next;
    end;
end;

Procedure TDaftarAkun.dbCon_FindData();
begin
  with dbModule.dbQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add(Memo1.Text+' WHERE login_karyawan.NIK = '+QuotedStr(in_Cari.Text));
      Open;
    end;
end;

Procedure TDaftarAkun.dbCon_AddData();
begin
  with dbModule.dbQuery do
    begin
      Open;
      CountRectLama:=CountRectLama+RecordCount;
      SQL.Clear;
      SQl.Add('INSERT INTO login_karyawan ( NIK, USERNAME, [PASSWORD], STATUS )');
      SQL.Add('VALUES ('+QuotedStr(NIK)+', '
              +QuotedStr(USERNAME)+', '+QuotedStr(PASSWORD)+', '+QuotedStr(STATUS)+')');
      ExecSQL;
      Close;
      Memo1.Lines.LoadFromFile('.\data\database\QueryCom\DaftarAkun.txt');
      SQL.Text:=Memo1.Text;
      Open;
      Requery();
      CountRectBaru:= CountRectLama+(RecordCount+1);
    end;
end;

Procedure TDaftarAkun.dbCon_DelData();
begin
with dbModule.dbQuery do
    begin
      Open;
      CountRectLama:=CountRectLama+RecordCount;
      SQL.Clear;
      SQl.Add('DELETE FROM login_karyawan WHERE NIK ='+QuotedStr(in_Cari.Text));
      ExecSQL;
      Close;
      Memo1.Lines.LoadFromFile('.\data\database\QueryCom\DaftarAkun.txt');
      SQL.Text:=Memo1.Text;
      Open;
      Requery();
      CountRectBaru:= CountRectLama-(RecordCount-1);
    end;
end;

Procedure TDaftarAkun.dbCon_UpData();
begin
  NIK:= in_Kode.Text;
  USERNAME:= in_Username.Text;
  PASSWORD:= in_Password.Text;
  STATUS:= in_Status.Text;
  dbModule.dbQuery.Open;
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      SQl.Add('UPDATE login_karyawan');
      SQL.Add('SET NIK = '+QuotedStr(NIK)
               +', USERNAME = '+QuotedStr(USERNAME)
               +', [PASSWORD] = '+QuotedStr(PASSWORD)
               +', STATUS = '+QuotedStr(STATUS));
      SQL.Add('WHERE NIK ='+QuotedStr(in_Cari.Text));
      ExecSQL;
    end;
    dbCon_MainTbl();
    ShowMessage('Data Berhasil Di Update');
    is_edited:=False;
end;

Procedure TDaftarAkun.dbCon_FindDataK();
begin
  with dbModule.dbQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM detail_karyawan WHERE NIK = '+QuotedStr(in_Kode.Text));
      Open;
    end;
end;

Procedure TDaftarAkun.dbCon_Cancel();
begin
  dbCon_MainTbl();
  SaveBtn();
  NIK:='';
  USERNAME:='';
  PASSWORD:='';
  STATUS:='';
  sGroupBox3.Visible:=False;
  is_edited:=False;
end;
//== End of Custom Database Procedure

//Begin of Custom AI Properties Procedure
Procedure TDaftarAkun.EditBtn();
begin
  btnTambah.Visible:= False;
  btnEdit.Visible:= False;
  btnDelete.Visible:= False;
  sGroupBox3.Visible:= True;
  dbModule.dbQuery.Edit;
end;

Procedure TDaftarAkun.AddBtn();
begin
  dbModule.dbQuery.Append;
  btnTambah.Visible:= False;
  btnEdit.Visible:= False;
  btnDelete.Visible:= False;
  sGroupBox3.Visible:= True;
end;

procedure TDaftarAkun.DelBtn();
begin
  SaveBtn();
end;

procedure TDaftarAkun.FindBtn();
begin
  btnTambah.Visible:= False;
  btnEdit.Visible:= True;
  btnDelete.Visible:= True;
end;

Procedure TDaftarAkun.SaveBtn();
begin
  btnTambah.Visible:= True;
  btnEdit.Visible:= False;
  btnDelete.Visible:= False;
  sGroupBox3.Visible:= False;
end;
//End of AI Custom Properties Procedure

procedure TDaftarAkun.btnTambahClick(Sender: TObject);
begin
  sGroupBox3.Visible:= True;
  dbModule.dbQuery.Append;
  in_Kode.Clear;
  in_Username.Clear;
  in_Password.Clear;
end;

procedure TDaftarAkun.FormShow(Sender: TObject);
begin
  dbCon_LoadStatsTbl();
  dbCon_MainTbl();
end;

procedure TDaftarAkun.in_CariClick(Sender: TObject);
begin
  in_Cari.SetFocus;
end;

procedure TDaftarAkun.sPanel6Click(Sender: TObject);
begin
  if in_Cari.Text='' then
    begin
      SaveBtn();
      dbCon_MainTbl();
    end
  else
    begin
      dbCon_FindData();
      FindBtn();
    end
end;

procedure TDaftarAkun.in_CariChange(Sender: TObject);
begin
  if in_Cari.Text='' then
    begin
      SaveBtn();
      dbCon_MainTbl();
    end
  else
    begin
      dbCon_FindData();
      FindBtn();
    end
end;

procedure TDaftarAkun.btnEditClick(Sender: TObject);
begin
  dbCon_FindData();
  is_edited:= True;
  NIK:= dbModule.dbQuery.FieldByName('NIK').AsString;
  USERNAME:= dbModule.dbQuery.FieldByName('USERNAME').AsString;
  PASSWORD:= dbModule.dbQuery.FieldByName('PASSWORD').AsString;
  STATUS:= dbModule.dbQuery.FieldByName('STATUS_KARYAWAN').AsString;
  sGroupBox3.Visible:= True;
  in_Kode.Text:= NIK;
  in_Username.Text:= USERNAME;
  in_Password.Text:= PASSWORD;
  in_Status.Text:= STATUS;
    if is_edited= true then
      begin
        btnSimpan.Caption:='Update';
        btnSimpan.Visible:= True;
      end;
end;

procedure TDaftarAkun.btnSimpanClick(Sender: TObject);
begin
if is_edited= True then
  begin
    dbCon_UpData();
    SaveBtn();
  end
else
  begin
    NIK:= in_Kode.Text;
    USERNAME:= in_Username.Text;
    PASSWORD:= in_Password.Text;
    STATUS:= in_Status.Text;
    dbCon_AddData();
      if CountRectLama<CountRectBaru then
        begin
          SaveBtn();
          ShowMessage('Data Berhasil Ditambahkan!');
        end
  end;
end;

procedure TDaftarAkun.sButton1Click(Sender: TObject);
var
  Nama:String;
begin
  dbCon_FindDataK();
  if dbModule.dbQuery.FieldByName('NIK').Value=in_Kode.Text then
    begin
      Nama:= dbModule.dbQuery.FieldByName('NAMA_LENGKAP').AsString;
      ShowMessage('Buat Akun Atas nama = '+Nama);
      btnSimpan.Visible:= True;
      in_Username.SetFocus;
    end
  else
    begin
      ShowMessage('Maaf NIK Tidak Ditemukan');
    end;
end;

procedure TDaftarAkun.in_KodeClick(Sender: TObject);
begin
  in_Kode.SetFocus;
end;

procedure TDaftarAkun.in_UsernameClick(Sender: TObject);
begin
  in_Username.SetFocus;
end;

procedure TDaftarAkun.in_PasswordChange(Sender: TObject);
begin
  in_Password.SetFocus;
end;

procedure TDaftarAkun.in_StatusClick(Sender: TObject);
begin
  in_Status.SetFocus;
end;

procedure TDaftarAkun.in_KodeChange(Sender: TObject);
begin
  with dbModule.dbQuery do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT * FROM detail_karyawan');
    ExecSQL;
    Open;
  end;
end;

procedure TDaftarAkun.btnDeleteClick(Sender: TObject);
begin
  dbCon_DelData();
  ShowMessage('Data Berhasil Dihapus');
end;

procedure TDaftarAkun.btnCancelClick(Sender: TObject);
begin
  dbCon_Cancel();
end;

procedure TDaftarAkun.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DashboardFrm.HomeShow();
end;

end.
