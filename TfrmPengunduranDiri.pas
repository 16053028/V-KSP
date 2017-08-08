unit TfrmPengunduranDiri;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, sButton, ExtCtrls, sGroupBox, sPanel;

type
  TPengunduranAnggota = class(TForm)
    sPanel1: TsPanel;
    sGroupBox1: TsGroupBox;
    LabeledEdit1: TLabeledEdit;
    sButton1: TsButton;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PengunduranAnggota: TPengunduranAnggota;

implementation

{$R *.dfm}

end.
