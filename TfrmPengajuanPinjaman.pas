unit TfrmPengajuanPinjaman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, sButton, sComboBox, ExtCtrls, sPanel,
  sGroupBox;

type
  TPengajuanPinjaman = class(TForm)
    sPanel1: TsPanel;
    in_NIM: TLabeledEdit;
    in_nominal: TLabeledEdit;
    in_LamaAngsuran: TsComboBox;
    btnProses: TsButton;
    DBGrid1: TDBGrid;
    sGroupBox1: TsGroupBox;
    sGroupBox2: TsGroupBox;
    in_CariKP: TLabeledEdit;
    in_kodePinjam: TLabeledEdit;
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
    //== begin of DB Custom Procedure ==
      procedure conDB_MainTbl();
      procedure conDB_AddData();
      procedure conDB_FindData();
      procedure conDB_DelData();
      procedure conDB_EditData();
    procedure in_CariKPChange(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    //== end of DB Custom Procedure ==
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PengajuanPinjaman: TPengajuanPinjaman;
  CariKP: String;
  KODE_PINJAM: string;
  NIM : string;
  TANGGAL_PINJAM: string;
  JUMLAH_PINJAMAN: Currency;
  ANGSURAN: Currency;
  BUNGA: Currency;
  LAMA_ANGSURAN: string;
  KETERANGAN: string;
  TANGGAL_LUNAS: string;

implementation

uses moduleDB, TfrmDashboard, ADODB;

{$R *.dfm}

//== begin of DB Custom Procedure ==
procedure TPengajuanPinjaman.conDB_MainTbl();
Begin
Memo1.Lines.LoadFromFile('.\data\database\QueryCom\PinjamanQuery.txt');
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      SQL.Add(Memo1.Text);
      Open;
    end;
DBGrid1.Columns[0].FieldName:='KODE_PINJAM';
DBGrid1.Columns[0].Title.Caption:='KODE PINJAM';
DBGrid1.Columns[1].FieldName:='NIM';
DBGrid1.Columns[1].Title.Caption:='NIM';
DBGrid1.Columns[2].FieldName:='NAMA_LENGKAP';
DBGrid1.Columns[2].Title.Caption:='NAMA LENGKAP';
DBGrid1.Columns[3].FieldName:='TANGGAL_PINJAM';
DBGrid1.Columns[3].Title.Caption:='TANGGAL PINJAM';
DBGrid1.Columns[4].FieldName:='JUMLAH_PINJAMAN';
DBGrid1.Columns[4].Title.Caption:='JUMLAH PINJAM';
DBGrid1.Columns[5].FieldName:='LAMA_ANGSURAN';
DBGrid1.Columns[5].Title.Caption:='LAMA_ANGSURAN';
DBGrid1.Columns[6].FieldName:='KETERANGAN';
DBGrid1.Columns[6].Title.Caption:='KETERANGAN';
DBGrid1.Columns[7].FieldName:='NIK';
DBGrid1.Columns[7].Title.Caption:='NIK';
DBGrid1.Columns[8].FieldName:='NAMA_LENGKAP';
DBGrid1.Columns[8].Title.Caption:='NAMA KARYAWAN';
end;

procedure TPengajuanPinjaman.conDB_AddData();
Begin
  with dbModule.dbQuery do
    begin
      Open;
      SQL.Clear;
      SQl.Add('INSERT INTO pinjaman_member');
      SQL.Add('( KODE_PINJAM, '
                +'NIM, '
                +'TANGGAL_PINJAM, '
                +'JUMLAH_PINJAMAN, '
                +'ANGSURAN, '
                +'BUNGA, '
                +'LAMA_ANGSURAN, '
                +'KETERANGAN, '
                +'NIK, '
                +'TANGGAL_LUNAS)');
      SQL.Add('VALUES ('+QuotedStr(KODE_PINJAM)+', '
              +QuotedStr(NIM)+', '
              +QuotedStr(TANGGAL_PINJAM)+', '
              +QuotedStr(CurrToStr(JUMLAH_PINJAMAN))+', '
              +QuotedStr(CurrToStr(ANGSURAN))+', '
              +QuotedStr(CurrToStr(BUNGA))+', '
              +QuotedStr(LAMA_ANGSURAN)+', '
              +QuotedStr(KETERANGAN)+', '
              +QuotedStr(NIK)+', '
              +QuotedStr(TANGGAL_LUNAS)+');');
      ExecSQL;
      SQL.Clear;
      SQL.Add('INSERT INTO history_transaksi');
      SQL.Add('(KODE_TRANSAKSI, NIM, NIK, TANGGAL, TRANSAKSI)');
      SQL.Add('VALUES ('+QuotedStr(KODE_PINJAM)+', '
                        +QuotedStr(NIM)+', '
                        +QuotedStr(NIK)+', '
                        +QuotedStr(TANGGAL_PINJAM)+', '
                        +'"PENGAJUAN PINJAMAN");');
      ExecSQL;
      Close;
      conDB_MainTbl();
      Requery();
    end;
end;

procedure TPengajuanPinjaman.conDB_FindData();
Begin
with dbModule.dbQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add(Memo1.Text+' WHERE KODE_PINJAM = '+QuotedStr(CariKP));
      Open;
    end;
end;

procedure TPengajuanPinjaman.conDB_DelData();
Begin
with dbModule.dbQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE * FROM pinjaman_member WHERE KODE_PINJAM = '+QuotedStr(CariKP));
      ExecSQL;
      conDB_MainTbl();
      Requery();
      open;
    end;
end;

procedure TPengajuanPinjaman.conDB_EditData();
Begin
//
end;
//== end of DB Custom Procedure ==

procedure TPengajuanPinjaman.FormShow(Sender: TObject);
begin
  conDB_MainTbl();
end;

procedure TPengajuanPinjaman.in_CariKPChange(Sender: TObject);
begin
  CariKP:= in_CariKP.Text;
  conDB_FindData();
end;

procedure TPengajuanPinjaman.btnProsesClick(Sender: TObject);
var
  hari:integer;
begin
KODE_PINJAM:= in_kodePinjam.Text;
NIM:= in_NIM.Text;
JUMLAH_PINJAMAN:= StrToCurr(in_nominal.Text);
LAMA_ANGSURAN:= in_LamaAngsuran.Text;
ANGSURAN:= (JUMLAH_PINJAMAN/StrToInt(LAMA_ANGSURAN));
BUNGA:= ((JUMLAH_PINJAMAN/100*7.75)/StrToInt(LAMA_ANGSURAN));
TANGGAL_PINJAM:= DateToStr(Now);
KETERANGAN:= 'PENGAJUAN';
hari:= StrToInt(LAMA_ANGSURAN)*30;
TANGGAL_LUNAS:= DateToStr(Now+hari);
conDB_AddData();
end;

end.
