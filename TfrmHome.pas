unit TfrmHome;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, sGroupBox, ExtCtrls, sPanel;

type
  THome = class(TForm)
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    DBGrid1: TDBGrid;
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Home: THome;

implementation

uses moduleDB;

{$R *.dfm}

procedure THome.FormShow(Sender: TObject);
begin
Memo1.Lines.LoadFromFile('.\data\database\QueryCom\HistoryTransaksi.txt');
  with dbModule.dbQuery do
    begin
      SQL.Clear;
      SQL.Add(Memo1.Text);
      Open;
    end;
end;

end.
