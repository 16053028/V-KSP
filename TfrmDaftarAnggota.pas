unit TfrmDaftarAnggota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, sPanel, StdCtrls, sButton;

type
  TDaftarAnggota = class(TForm)
    sPanel1: TsPanel;
    DBGrid1: TDBGrid;
    Memo1: TMemo;
    in_Cari: TLabeledEdit;
    btnProses: TsButton;
    btnEdit: TsButton;
    btnCetak: TsButton;
    procedure FormShow(Sender: TObject);
    procedure in_CariChange(Sender: TObject);
    procedure dbCon_MainTbl();
    procedure dbCon_FindData();
    procedure in_CariClick(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DaftarAnggota: TDaftarAnggota;
  NIM: String;

implementation

uses moduleDB, ADODB, DB;

{$R *.dfm}

procedure TDaftarAnggota.dbCon_MainTbl();
begin
Memo1.Lines.LoadFromFile('.\data\database\QueryCom\DaftarMember.txt');
 with dbModule.dbQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add(Memo1.Text);
    Active:= True;
  end;
end;

procedure TDaftarAnggota.dbCon_FindData();
begin
 with dbModule.dbQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add(Memo1.Text+' WHERE detail_member.NIM = '+QuotedStr(NIM));
    Open;
  end;
end;

procedure TDaftarAnggota.FormShow(Sender: TObject);
begin
  dbCon_MainTbl();
end;

procedure TDaftarAnggota.in_CariChange(Sender: TObject);
begin
NIM:= in_Cari.Text;
if in_Cari.Text='' then
  dbCon_MainTbl()
else
  dbCon_FindData();
    if dbModule.dbQuery.RecordCount = 1 then
      btnEdit.Visible:= True
    else
      btnEdit.Visible:= False;
end;

procedure TDaftarAnggota.in_CariClick(Sender: TObject);
begin
in_Cari.SetFocus;
end;

procedure TDaftarAnggota.btnProsesClick(Sender: TObject);
begin
in_CariChange(Self);
end;

procedure TDaftarAnggota.sButton3Click(Sender: TObject);
begin
dbCon_MainTbl();
end;

end.
