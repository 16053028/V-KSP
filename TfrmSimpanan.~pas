{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
unit TfrmSimpanan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, sButton, ExtCtrls, sPanel, sGroupBox;

type
  TtSimpanan = class(TForm)
    a: TsPanel;
    DBGrid1: TDBGrid;
    in_rek: TLabeledEdit;
    in_nominal: TLabeledEdit;
    in_keterangan: TLabeledEdit;
    sGroupBox1: TsGroupBox;
    sPanel1: TsPanel;
    sGroupBox2: TsGroupBox;
    f_Rek: TLabeledEdit;
    sGroupBox3: TsGroupBox;
    out_rek: TLabeledEdit;
    out_nominal: TLabeledEdit;
    out_keterangan: TLabeledEdit;
    sPanel2: TsPanel;
    Memo1: TMemo;
    in_KodeSimpan: TLabeledEdit;
    out_KodeAmbil: TLabeledEdit;
    //== Begin of Custom DB Procedure
      procedure dbCon_MainTbl();
      procedure dbCon_Tambah();
      procedure dbCon_Ambil();
      procedure dbCon_Cari();
      procedure dbCon_ADDhistoryT();
      procedure dbCon_ADDsimpananM();
      procedure dbCon_GetNIM();
    procedure sPanel1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sPanel2Click(Sender: TObject);
    procedure f_RekChange(Sender: TObject);
    //== End of Custo DB Procedure
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tSimpanan: TtSimpanan;
  KODE_SIMPAN: string;
  SALDO: Currency;
  TANGGAL_SIMPAN: string;
  NOMINAL: Currency;
  NIM: string;
  REKENING: string;
  KETERANGAN: string;

implementation

uses moduleDB, DateUtils, TfrmDashboard, DB;

{$R *.dfm}

//== Begin of Custom DB Procedure
procedure TtSimpanan.dbCon_MainTbl();
begin
Memo1.Lines.LoadFromFile('.\data\database\QueryCom\Rekening.txt');
  with dbModule.dbQuery do
    begin
      SQl.Clear;
      SQL.Add(Memo1.Text);
      Open;
    end;
end;

procedure TtSimpanan.dbCon_Tambah();
begin
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      SQL.Add('UPDATE rekening_member');
      SQL.Add('SET SALDO = '+QuotedStr(CurrToStr(SALDO)));
      SQL.Add('WHERE REKENING = '+QuotedStr(REKENING));
      ExecSQL;
    end;
    dbCon_ADDhistoryT();
    dbCon_ADDsimpananM();
  dbCon_MainTbl();
end;

procedure TtSimpanan.dbCon_Ambil();
begin
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      SQL.Add('UPDATE rekening_member');
      SQL.Add('SET SALDO = '+QuotedStr(CurrToStr(SALDO)));
      SQL.Add('WHERE REKENING = '+QuotedStr(REKENING));
      ExecSQL;
    end;
    dbCon_ADDhistoryT();
    dbCon_ADDsimpananM();
  dbCon_MainTbl();
end;

procedure TtSimpanan.dbCon_Cari();
begin
  with dbModule.dbQuery do
    begin
      SQl.Clear;
      SQL.Add(Memo1.Text);
      SQL.Add('WHERE REKENING = '+QuotedStr(f_Rek.Text));
      Open;
    end;
end;

procedure TtSimpanan.dbCon_ADDhistoryT();
begin
 with dbModule.dbQuery do
  begin
   SQL.Clear;
   SQL.Add('INSERT INTO history_transaksi');
   SQL.Add('(KODE_TRANSAKSI, NIM, NIK, TANGGAL, TRANSAKSI)');
   SQL.Add('VALUES ( '+QuotedStr(KODE_SIMPAN)+', '
                      +QuotedStr(NIM)+', '
                      +QuotedStr(NIK)+', '
                      +QuotedStr(TANGGAL_SIMPAN)+', '
                      +QuotedStr(KETERANGAN)+');');
      ExecSQL;
  end;
end;

procedure TtSimpanan.dbcon_ADDsimpananM();
begin
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO simpanan_member');
      SQL.Add('(KODE_SIMPAN, NIM, TANGGAL_SIMPAN, NOMINAL, KETERANGAN, NIK)');
      SQL.Add('VALUES ( '+QuotedStr(KODE_SIMPAN)+', '
                         +QuotedStr(NIM)+', '
                         +QuotedStr(TANGGAL_SIMPAN)+', '
                         +QuotedStr(CurrToStr(NOMINAL))+', '
                         +QuotedStr(KETERANGAN)+', '
                         +QuotedStr(NIK)+');');
      ExecSQL;
    end;
end;

procedure TtSimpanan.dbCon_GetNIM();
begin
  with dbModule.dbQuery do
    Begin
      SQL.Clear;
      SQL.Add('SELECT * FROM rekening_member WHERE REKENING = '+QuotedStr(REKENING));
      Open;
    end;
  if dbModule.dbQuery.RecordCount=1 then
    begin
      NIM:= dbModule.dbQuery.FieldByName('NIM').Value;
      SALDO:= dbModule.dbQuery.FieldByName('SALDO').Value;
    end;
end;
//== End of Custo DB Procedure

procedure TtSimpanan.sPanel1Click(Sender: TObject);
begin
Memo1.Lines.LoadFromFile('.\data\database\QueryCom\SimpananQuery.txt');
REKENING:= in_rek.Text;
dbModule.dbQuery.Open;
dbCon_GetNIM();
dbModule.dbQuery.Edit;
KODE_SIMPAN:= in_KodeSimpan.Text;
NOMINAL:= StrToCurr(in_nominal.Text);
SALDO:= (SALDO+NOMINAL);
TANGGAL_SIMPAN:= DateToStr(now);
KETERANGAN:= in_keterangan.Text;
dbModule.dbQuery.Edit;
if Application.MessageBox(PChar('Apakah anda yakin ingin Menambah dana atas nomer rekening " '+ REKENING +' " ?'),
                          'Konfirmasi', MB_YESNO or MB_ICONQUESTION)= IDYES then
  begin
    dbCon_Tambah();
    ShowMessage('Berhasil Menambah Dana');
    in_rek.Clear;
    in_nominal.Clear;
    in_KodeSimpan.Clear;
    in_keterangan.Clear;
  end
else
  begin
    dbModule.dbQuery.Cancel;
    in_rek.Clear;
    in_nominal.Clear;
    in_KodeSimpan.Clear;
    in_keterangan.Clear;
  end;
dbCon_MainTbl();
end;

procedure TtSimpanan.FormShow(Sender: TObject);
begin
dbCon_MainTbl();
end;

procedure TtSimpanan.sPanel2Click(Sender: TObject);
begin
Memo1.Lines.LoadFromFile('.\data\database\QueryCom\SimpananQuery.txt');
REKENING:= out_rek.Text;
dbModule.dbQuery.Open;
dbCon_GetNIM();
dbModule.dbQuery.Edit;
KODE_SIMPAN:= out_KodeAmbil.Text;
NOMINAL:= StrToCurr(out_nominal.Text);
  if (SALDO>NOMINAL) then
    begin
    SALDO:= (SALDO-NOMINAL);
    dbModule.dbQuery.Edit;
      if Application.MessageBox(PChar('Apakah anda yakin ingin Mengambil dana atas nomer rekening " '+ REKENING +' " ?'),
                                'Konfirmasi', MB_YESNO or MB_ICONQUESTION)= IDYES then
      dbCon_Tambah();
      out_rek.Clear;
      out_nominal.Clear;
      out_keterangan.Clear;
      out_KodeAmbil.Clear;
    end
  else
    begin
      ShowMessage('Saldo tidak cukup! Pengambilan GAGAl');
      dbModule.dbQuery.Cancel;
      out_rek.Clear;
      out_nominal.Clear;
      out_keterangan.Clear;
      out_KodeAmbil.Clear;
    end;
dbCon_MainTbl();
end;

procedure TtSimpanan.f_RekChange(Sender: TObject);
begin
if f_Rek.Text='' then
  dbCon_MainTbl()
else
  dbCon_Cari();
end;

end.
