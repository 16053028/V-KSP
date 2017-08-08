unit TfrmPinjaman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, sPanel, StdCtrls, sButton, sComboBox,
  sGroupBox;

type
  TtPinjaman = class(TForm)
    sPanel1: TsPanel;
    DBGrid1: TDBGrid;
    sGroupBox1: TsGroupBox;
    in_Atasnama: TLabeledEdit;
    in_Nominal: TLabeledEdit;
    in_LamaAngsuran: TsComboBox;
    in_Angsuran: TLabeledEdit;
    in_Bunga: TLabeledEdit;
    in_Keterangan: TsComboBox;
    btnProses: TsButton;
    Memo1: TMemo;
    in_KodePinjam: TComboBox;
    //== Begin of Custom DB Procedure
      procedure LoadPengajuan();
      procedure ACCPengajuan();
      procedure conDB_MainTBL();
      procedure LoadDataFromDB();
    //== End of Custom DB Procedure
    procedure FormShow(Sender: TObject);
    procedure in_KodePinjamChange(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tPinjaman: TtPinjaman;

implementation

uses moduleDB, DateUtils, ADODB, DB;

{$R *.dfm}

//== Begin of Custom DB Procedure
procedure TtPinjaman.LoadPengajuan();
begin
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM pinjaman_member WHERE KETERANGAN = "PENGAJUAN"');
      Open;
    end;
  while not dbModule.dbQuery.Eof do
    begin
      in_KodePinjam.Items.Add(dbModule.dbQuery.FieldByName('KODE_PINJAM').Value);
      dbModule.dbQuery.Next;
    end;
end;

procedure TtPinjaman.ACCPengajuan();
begin
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      SQL.Add('UPDATE pinjaman_member');
      SQL.Add('SET KETERANGAN = '+QuotedStr(in_Keterangan.Text));
      SQL.Add('WHERE KODE_PINJAM = '+QuotedStr(in_KodePinjam.Text));
      ExecSQL;
    end;
conDB_MainTBL();
in_KodePinjam.Text:= 'KODE PINJAM';
in_Keterangan.Text:= 'KETERANGAN';
btnProses.Enabled:= False;
end;

procedure TtPinjaman.conDB_MainTBL();
begin
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM pinjaman_member WHERE KETERANGAN = "DISETUJUI"');
      Open;
    end;
end;

procedure TtPinjaman.LoadDataFromDB();
begin
Memo1.Lines.LoadFromFile('.\data\database\QueryCom\PinjamanQuery.txt');
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      SQL.Add(Memo1.Text+' WHERE pinjaman_member.KODE_PINJAM ='+QuotedStr(in_KodePinjam.Text));
      ExecSQL;
      open;
      in_Atasnama.Text:= dbModule.dbQuery.FieldByName('NAMA_LENGKAP').Value;
    end;
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM pinjaman_member WHERE KODE_PINJAM = '+ QuotedStr(in_KodePinjam.Text));
      ExecSQL;
      Open;
      in_Nominal.Text:= dbModule.dbQuery.FieldByName('JUMLAH_PINJAMAN').Value;
      in_Angsuran.Text:= dbModule.dbQuery.FieldByName('ANGSURAN').Value;
      in_LamaAngsuran.Text:= dbModule.dbQuery.FieldByName('LAMA_ANGSURAN').Value;
      in_Bunga.Text:= dbModule.dbQuery.FieldByName('BUNGA').Value;
      in_Keterangan.Text:= dbModule.dbQuery.FieldByName('KETERANGAN').Value;
    end;
conDB_MainTBL();
end;
//== End of Custom DB Procedure

procedure TtPinjaman.FormShow(Sender: TObject);
begin
LoadPengajuan();
conDB_MainTBL();
end;

procedure TtPinjaman.in_KodePinjamChange(Sender: TObject);
begin
LoadDataFromDB();
  if in_KodePinjam.ItemIndex=-1 then
    begin
      btnProses.Enabled:= False;
    end
  else
    begin
      btnProses.Enabled:= True;
    end;
end;

procedure TtPinjaman.btnProsesClick(Sender: TObject);
begin
  ACCPengajuan();
  in_KodePinjam.Items.Clear;
  LoadPengajuan();
  conDB_MainTBL();
end;

end.
