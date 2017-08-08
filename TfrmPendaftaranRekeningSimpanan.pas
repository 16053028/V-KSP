unit TfrmPendaftaranRekeningSimpanan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sButton, Grids, DBGrids, ExtCtrls, sGroupBox, sPanel,
  Mask, sMaskEdit, sCustomComboEdit, sToolEdit, sEdit;

type
  TPRekSim = class(TForm)
    sPanel1: TsPanel;
    containerBuat: TsGroupBox;
    in_NoRek: TLabeledEdit;
    in_NIM: TLabeledEdit;
    containerCari: TsGroupBox;
    in_cariRek: TLabeledEdit;
    DBGrid1: TDBGrid;
    btnProses: TsButton;
    in_date: TsDateEdit;
    boxNM: TsEdit;
    Memo1: TMemo;
    //== begin of DB Custom Procedure ==
      procedure conDB_MainTbl();
      procedure conDB_FindTbl();
      procedure conDB_FindTblMember();
      procedure condb_BuatRek();
    //== end of DB Custom Procedure ==
    procedure FormShow(Sender: TObject);
    procedure in_cariRekChange(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure in_NIMChange(Sender: TObject);
    procedure in_cariRekClick(Sender: TObject);
    procedure in_NoRekClick(Sender: TObject);
    procedure in_NIMClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PRekSim: TPRekSim;
  noRekening: string;
  NIM: string;
  tglBuka: string;
  namaMember: string;

implementation

uses moduleDB, ADODB, DB, TfrmDashboard;

{$R *.dfm}

//== begin of DB Custom Procedure ==
procedure TPRekSim.conDB_MainTbl();
begin
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      SQL.Add(Memo1.Text);
      Open;
    end;
end;

procedure TPRekSim.conDB_FindTbl();
begin
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      SQL.Add(Memo1.Text+'WHERE Rekening = '+QuotedStr(in_cariRek.Text));
      Open;
    end;
end;

procedure TPRekSim.conDB_FindTblMember();
begin
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      SQL.Add('SELECT NAMA_LENGKAP FROM detail_member WHERE NIM = '
              +QuotedStr(in_NIM.Text));
      Open;
    end;
    if dbModule.dbQuery.RecordCount=1 then
    begin
      namaMember:= dbModule.dbQuery.FieldByName('NAMA_LENGKAP').Value;
      conDB_MainTbl();
    end;
end;

procedure TPRekSim.condb_BuatRek();
begin
with dbModule.dbQuery do
    begin
      Open;
      SQL.Clear;
      SQl.Add('INSERT INTO rekening_member');
      SQL.Add('( REKENING, '
                +'NIM, '
                +'SALDO, '
                +'TGL_PEMBUKAAN, '
                +'NIK, '
                +'KETERANGAN)');
      SQL.Add('VALUES ('+QuotedStr(noRekening)+', '
              +QuotedStr(NIM)+', '
              +'0, '
              +QuotedStr(tglBuka)+', '
              +QuotedStr(NIK)+', '
              +' "AKTIF")');
      ExecSQL;
      Close;
      conDB_MainTbl();
      Requery();
    end;
end;
//== end of DB Custom Procedure ==


procedure TPRekSim.FormShow(Sender: TObject);
begin
  Memo1.Lines.LoadFromFile('.\data\database\QueryCom\Rekening.txt');
  conDB_MainTbl();
end;

procedure TPRekSim.in_cariRekChange(Sender: TObject);
begin
  if (in_cariRek.Text='') then
    conDB_MainTbl()
  else
    conDB_FindTbl();
end;

procedure TPRekSim.btnProsesClick(Sender: TObject);
begin
  noRekening := in_NoRek.Text;
  NIM := in_NIM.Text;
  tglBuka:= in_date.Text;
  dbModule.dbQuery.Append;
  condb_BuatRek();
end;

procedure TPRekSim.in_NIMChange(Sender: TObject);
begin
  if in_NIM.Text='' then
    conDB_MainTbl()
  else
    begin
      conDB_FindTblMember();
      boxNM.Text:= namaMember;
    end;
end;

procedure TPRekSim.in_cariRekClick(Sender: TObject);
begin
in_cariRek.SetFocus;
end;

procedure TPRekSim.in_NoRekClick(Sender: TObject);
begin
in_NoRek.SetFocus;
end;

procedure TPRekSim.in_NIMClick(Sender: TObject);
begin
in_NIM.SetFocus;
end;

end.
