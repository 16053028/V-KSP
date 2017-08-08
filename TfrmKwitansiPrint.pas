unit TfrmKwitansiPrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TKwitansiKAS = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRMemo1: TQRMemo;
    Out_KodeTR: TQRDBText;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    out_Jabatan: TQRDBText;
    out_NamaStaff: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    out_NIM: TQRDBText;
    QRLabel5: TQRLabel;
    out_NamaLengkap: TQRDBText;
    QRLabel6: TQRLabel;
    out_NominalBayar: TQRDBText;
    QRLabel7: TQRLabel;
    out_NIK: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    out_ket: TQRDBText;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KwitansiKAS: TKwitansiKAS;

implementation

uses moduleDB;

{$R *.dfm}

procedure TKwitansiKAS.FormShow(Sender: TObject);
begin
KwitansiKAS.QuickRep1.Preview;
end;

end.
