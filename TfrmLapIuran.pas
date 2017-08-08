unit TfrmLapIuran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids,
  sLabel;

type
  TLapIuran = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    sWebLabel1: TsWebLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel1: TQRLabel;
    kodeT: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure sWebLabel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LapIuran: TLapIuran;

implementation

uses moduleDB;

{$R *.dfm}

procedure TLapIuran.FormShow(Sender: TObject);
begin
kodeT.DataField:= 'KODE_TRANSAKSI';
//NIM.DataField:= 'NIM';
//NamaL.DataField:= 'detail_member_NAMA_LENGKAP';
//Transaksi.DataField:= 'TRANSAKSI';
end;

procedure TLapIuran.BitBtn1Click(Sender: TObject);
begin
QuickRep1.Preview;
end;

procedure TLapIuran.sWebLabel1Click(Sender: TObject);
begin
QuickRep1.Preview;
end;

end.
