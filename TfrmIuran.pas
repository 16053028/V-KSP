unit TfrmIuran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, sButton, Grids, DBGrids, sPanel, sGroupBox;

type
  TtIuran = class(TForm)
    a: TsPanel;
    DBGrid1: TDBGrid;
    btnProses: TsButton;
    in_NIM: TLabeledEdit;
    in_Nominal: TLabeledEdit;
    in_Keterangan: TLabeledEdit;
    in_KodeIuran: TLabeledEdit;
    sGroupBox1: TsGroupBox;
    Memo1: TMemo;
    //== Begin Custom DB Procedure
      procedure dbCon_mainTbl();
      procedure dbCon_SaveData();
      procedure CetakKwitansi();
    procedure FormShow(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure in_KodeIuranClick(Sender: TObject);
    procedure in_NIMClick(Sender: TObject);
    procedure in_NominalClick(Sender: TObject);
    procedure in_KeteranganClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tIuran: TtIuran;
  KodeTR: string;

implementation

uses moduleDB, TfrmDashboard, DB, ADODB, TfrmKwitansiPrint;

{$R *.dfm}

//== Begin Custom DB Procedure
procedure TtIuran.dbCon_mainTbl();
begin
  with dbModule.dbQuery do
    begin
      SQl.Clear;
      SQL.Add(Memo1.Text);
      Open;
    end;
end;

procedure TtIuran.dbCon_SaveData();
begin
  with dbModule.dbQuery do
    begin
      Open;
      SQL.Clear;
      SQl.Add('INSERT INTO kas');
      SQL.Add('(KODE_KAS, NIM, TANGGAL_BAYAR, NOMINAL, KETERANGAN, NIK)');
      SQL.Add('VALUES ( '+QuotedStr(in_KodeIuran.Text)+', '
                         +QuotedStr(in_NIM.Text)+', '
                         +QuotedStr(DateToStr(now))+', '
                         +QuotedStr(in_Nominal.Text)+', '
                         +QuotedStr(in_Keterangan.Text)+', '
                         +QuotedStr(NIK)+' )');
      ExecSQL;
      SQL.Clear;
      SQL.Add('INSERT INTO history_transaksi');
      SQL.Add('(KODE_TRANSAKSI, NIM, NIK, TANGGAL, TRANSAKSI)');
      SQL.Add('VALUES ('+QuotedStr(in_KodeIuran.Text)+', '
                        +QuotedStr(in_NIM.Text)+', '
                        +QuotedStr(NIK)+', '
                        +QuotedStr(DateToStr(now))+', '
                        +QuotedStr(in_Keterangan.Text)+');');
      ExecSQL;
      Close;
      dbCon_mainTbl();
      Requery();
    end;
end;

procedure TtIuran.CetakKwitansi();
begin
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      SQL.Add(Memo1.Text);
      SQL.Add('WHERE KODE_KAS = '+QuotedStr(KodeTR));
      open;
    end;
    KwitansiKAS.Out_KodeTR.DataField:= 'KODE_KAS';
    KwitansiKAS.out_NIM.DataField:= 'NIM';
    KwitansiKAS.out_NamaLengkap.DataField:= 'detail_member_NAMA_LENGKAP';
    KwitansiKAS.out_NominalBayar.DataField:= 'NOMINAL';
    KwitansiKAS.out_NamaStaff.DataField:= 'detail_karyawan_NAMA_LENGKAP';
    KwitansiKAS.out_Jabatan.DataField:= 'JABATAN';
    KwitansiKAS.out_NIK.DataField:= 'NIK';
    KwitansiKAS.out_ket.DataField:= 'KETERANGAN';
    KwitansiKAS.QuickRep1.Preview;
end;
//== end custom DB Procedure

procedure TtIuran.FormShow(Sender: TObject);
begin
Memo1.Lines.LoadFromFile('.\data\database\QueryCom\IuranQuery.txt');
dbCon_mainTbl();
end;

procedure TtIuran.btnProsesClick(Sender: TObject);
begin
KodeTR:= in_KodeIuran.Text;
dbCon_SaveData();
if Application.MessageBox('Apakah anda ingin mencetak Kwitansi Pembayaran?',
                          'Cetak Kwitansi', MB_YESNO or MB_ICONQUESTION)= IDYES then CetakKwitansi();
dbCon_mainTbl();
end;

procedure TtIuran.in_KodeIuranClick(Sender: TObject);
begin
in_KodeIuran.SetFocus;
end;

procedure TtIuran.in_NIMClick(Sender: TObject);
begin
in_NIM.SetFocus;
end;

procedure TtIuran.in_NominalClick(Sender: TObject);
begin
in_Nominal.SetFocus;
end;

procedure TtIuran.in_KeteranganClick(Sender: TObject);
begin
in_Keterangan.SetFocus;
end;

end.
