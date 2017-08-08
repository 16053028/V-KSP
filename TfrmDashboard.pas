unit TfrmDashboard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, StdCtrls, ExtCtrls, sSkinProvider,
  sSkinManager, sButton, acNoteBook, sLabel, sEdit, sGroupBox, sPanel,
  sStatusBar, sScrollBox, TfrmDaftarAkun, TfrmHome, TfrmDaftarAnggota, TfrmDaftarKaryawan,
  TfrmSettingApplikasi, TfrmcariAnggota, TfrmPendaftaranAnggota,
  TfrmPendaftaranRekeningSimpanan, TfrmPengajuanPinjaman,
  TfrmPengunduranDiri, TfrmAngsuran, TfrmCariTransaksi, TfrmIuran,
  TfrmPinjaman, TfrmSimpanan, TfrmLapAngsuran, TfrmLapIuran, TfrmLapPinjaman,
  TfrmLapSimpanan;

type
  TDashboardFrm = class(TForm)
    sNotebook1: TsNotebook;
    skinApp: TsSkinManager;
    sskinProvider: TsSkinProvider;
    sGroupBox1: TsGroupBox;
    in_Username: TsEdit;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    in_Password: TsEdit;
    sButton1: TsButton;
    AD: TsPanel;
    btnExit: TsButton;
    sStatusBar1: TsStatusBar;
    sScrollBox1: TsScrollBox;
    admBox: TsGroupBox;
    sekBox: TsGroupBox;
    trBox: TsGroupBox;
    LapBox: TsGroupBox;
    btnDU: TsPanel;
    btnDA: TsPanel;
    btnDK: TsPanel;
    btnPA: TsPanel;
    btnCA: TsPanel;
    btnPeA: TsPanel;
    btnPS: TsPanel;
    btnPeP: TsPanel;
    btnIA: TsPanel;
    btnS: TsPanel;
    btnP: TsPanel;
    btnA: TsPanel;
    btnLI: TsPanel;
    btnLP: TsPanel;
    btnLS: TsPanel;
    btnLA: TsPanel;
    winContainer: TsPanel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    btnSetting: TsPanel;
    btnCT: TsPanel;
    procedure FormActivate(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSettingMouseEnter(Sender: TObject);
    procedure btnSettingMouseLeave(Sender: TObject);
    procedure btnDAMouseEnter(Sender: TObject);
    procedure btnDAMouseLeave(Sender: TObject);
    procedure btnDUMouseEnter(Sender: TObject);
    procedure btnDUMouseLeave(Sender: TObject);
    procedure btnDKMouseEnter(Sender: TObject);
    procedure btnDKMouseLeave(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure btnCAMouseEnter(Sender: TObject);
    procedure btnCAMouseLeave(Sender: TObject);
    procedure btnPAMouseEnter(Sender: TObject);
    procedure btnPAMouseLeave(Sender: TObject);
    procedure btnPeAMouseEnter(Sender: TObject);
    procedure btnPeAMouseLeave(Sender: TObject);
    procedure btnPePMouseEnter(Sender: TObject);
    procedure btnPePMouseLeave(Sender: TObject);
    procedure btnPSMouseEnter(Sender: TObject);
    procedure btnPSMouseLeave(Sender: TObject);
    procedure btnLAMouseEnter(Sender: TObject);
    procedure btnLAMouseLeave(Sender: TObject);
    procedure btnLIMouseEnter(Sender: TObject);
    procedure btnLIMouseLeave(Sender: TObject);
    procedure btnLPMouseEnter(Sender: TObject);
    procedure btnLPMouseLeave(Sender: TObject);
    procedure btnLSMouseEnter(Sender: TObject);
    procedure btnLSMouseLeave(Sender: TObject);
    procedure btnAMouseEnter(Sender: TObject);
    procedure btnAMouseLeave(Sender: TObject);
    procedure btnCTMouseEnter(Sender: TObject);
    procedure btnCTMouseLeave(Sender: TObject);
    procedure btnIAMouseEnter(Sender: TObject);
    procedure btnIAMouseLeave(Sender: TObject);
    procedure btnPMouseEnter(Sender: TObject);
    procedure btnPMouseLeave(Sender: TObject);
    procedure btnSMouseEnter(Sender: TObject);
    procedure btnSMouseLeave(Sender: TObject);
    //== Begin of Feature Procedure ==
    Procedure Login();
    //== End of Feature Procedure ==

    //== Begin of Query Procedure ==
    Procedure con_DBLogin();
    //==End of Query Procedure ==

    //== Begin of AI Procedure ==
    Procedure CloseWarning();
    Procedure HakAksesMenu();
    procedure btnDAClick(Sender: TObject);
    procedure HomeShow();
    procedure btnDUClick(Sender: TObject);
    procedure btnDKClick(Sender: TObject);
    procedure btnSettingClick(Sender: TObject);
    procedure btnCAClick(Sender: TObject);
    procedure btnPAClick(Sender: TObject);
    procedure btnPePClick(Sender: TObject);
    procedure btnPSClick(Sender: TObject);
    procedure btnPeAClick(Sender: TObject);
    procedure btnCTClick(Sender: TObject);
    procedure btnIAClick(Sender: TObject);
    procedure btnSClick(Sender: TObject);
    procedure btnPClick(Sender: TObject);
    procedure btnAClick(Sender: TObject);
    procedure btnLIClick(Sender: TObject);
    procedure btnLSClick(Sender: TObject);
    procedure btnLPClick(Sender: TObject);
    procedure btnLAClick(Sender: TObject);
    //== End of AI Procedure ==
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DashboardFrm: TDashboardFrm;
  NIK: string;
  Username: string;
  Password: string;
  Status: string;
  buttonSelected: Integer;
  WinHome: THome;
  WinDA: TDaftarAkun;
  WinDAn: TDaftarAnggota;
  WinDK: TDaftarKaryawan;
  WinS: TSettingApp;
  WinCA: TCariAnggota;
  WinPA: TPendaftaranAnggota;
  WinPeA: TPengunduranAnggota;
  WinPRA: TPRekSim;
  WinPP: TPengajuanPinjaman;
  WinCT: TtCariT;
  WinIA: TtIuran;
  WinTS: TtSimpanan;
  WinTP: TtPinjaman;
  WinTA: TtAngsuran;
  WinLI: TLapIuran;
  WinLS: TLapSimpanan;
  WinLP: TLapPinjaman;
  WinLA: TLapAngsuran;

implementation

uses moduleDB, ADODB, DB;

{$R *.dfm}

//== begin of Custom Procedure ==

procedure TDashboardFrm.HomeShow();
begin
  WinHome.Parent:= winContainer;
  WinHome.Visible:= True;
end;

Procedure TDashboardFrm.con_DBLogin();
begin
  Username:= in_Username.Text;
  Password:= in_Password.Text;
  with dbModule.dbQuery do
  begin
    sql.Clear;
    sql.Add('SELECT * FROM login_karyawan where USERNAME ='+QuotedStr(Username)
            +'AND PASSWORD ='+QuotedStr(Password));
    open;
  end;
end;

  //Login Check
Procedure TDashboardFrm.Login();
  var Check:integer;
begin
  con_DBLogin();
  Check:= dbModule.dbQuery.RecordCount;
    if check=1 then
      begin
        sNotebook1.PageIndex:=1;
        Status:= dbModule.dbQuery.FieldByName('STATUS').Value;
        btnExit.Caption:='Logout';
        NIK:= dbModule.dbQuery.FieldByName('NIK').Value;
        HomeShow();
      end
    else
      begin
        ShowMessage('Data Login Tidak Ditemukan.');
      end
end;

Procedure TDashboardFrm.CloseWarning;
  begin
    if Status='Logout' then
      begin
        Application.Terminate;
      end
    else
      begin
        buttonSelected := MessageDlg('Anda belum Logout. Silahkan Logout dulu!',mtConfirmation,mbOKCancel,0);
        if  buttonSelected = mrOk then
          Application.Run
        else
          Application.Run;
      end
  end;

Procedure TDashboardFrm.HakAksesMenu();
begin
  //if Status=''
end;

//== end of Custom Procedure ==

//== begin of responsive ==
procedure TDashboardFrm.btnSettingMouseEnter(Sender: TObject);
  begin
    btnSetting.BorderStyle:=bsSingle;
    btnSetting.Alignment:=taLeftJustify;
  end;

procedure TDashboardFrm.btnSettingMouseLeave(Sender: TObject);
  begin
    btnSetting.BorderStyle:=bsNone;
    btnSetting.Alignment:=taCenter;
  end;

procedure TDashboardFrm.btnDAMouseEnter(Sender: TObject);
  begin
    btnDA.BorderStyle:=bsSingle;
    btnDA.Alignment:=taLeftJustify;
  end;

procedure TDashboardFrm.btnDAMouseLeave(Sender: TObject);
  begin
    btnDA.BorderStyle:=bsNone;
    btnDA.Alignment:=taCenter;
  end;

procedure TDashboardFrm.btnDUMouseEnter(Sender: TObject);
  begin
    btnDU.BorderStyle:=bsSingle;
    btnDU.Alignment:=taLeftJustify;
  end;

procedure TDashboardFrm.btnDUMouseLeave(Sender: TObject);
  begin
    btnDU.BorderStyle:=bsNone;
    btnDU.Alignment:=taCenter;
  end;

procedure TDashboardFrm.btnDKMouseEnter(Sender: TObject);
  begin
    btnDK.BorderStyle:=bsSingle;
    btnDK.Alignment:=taLeftJustify;
  end;

procedure TDashboardFrm.btnDKMouseLeave(Sender: TObject);
  begin
    btnDK.BorderStyle:=bsNone;
    btnDK.Alignment:=taCenter;
  end;

procedure TDashboardFrm.btnCAMouseEnter(Sender: TObject);
begin
    btnCA.BorderStyle:=bsSingle;
    btnCA.Alignment:=taLeftJustify;
end;

procedure TDashboardFrm.btnCAMouseLeave(Sender: TObject);
begin
    btnCA.BorderStyle:=bsNone;
    btnCA.Alignment:=taCenter;
end;

procedure TDashboardFrm.btnPAMouseEnter(Sender: TObject);
begin
    btnPA.BorderStyle:=bsSingle;
    btnPA.Alignment:=taLeftJustify;
end;

procedure TDashboardFrm.btnPAMouseLeave(Sender: TObject);
begin
    btnPA.BorderStyle:=bsNone;
    btnPA.Alignment:=taCenter;
end;

procedure TDashboardFrm.btnPeAMouseEnter(Sender: TObject);
begin
    btnPeA.BorderStyle:=bsSingle;
    btnPeA.Alignment:=taLeftJustify;
end;

procedure TDashboardFrm.btnPeAMouseLeave(Sender: TObject);
begin
    btnPeA.BorderStyle:=bsNone;
    btnPeA.Alignment:=taCenter;
end;

procedure TDashboardFrm.btnPePMouseEnter(Sender: TObject);
begin
    btnPeP.BorderStyle:=bsSingle;
    btnPeP.Alignment:=taLeftJustify;
end;

procedure TDashboardFrm.btnPePMouseLeave(Sender: TObject);
begin
    btnPeP.BorderStyle:=bsNone;
    btnPeP.Alignment:=taCenter;
end;

procedure TDashboardFrm.btnPSMouseEnter(Sender: TObject);
begin
    btnPS.BorderStyle:=bsSingle;
    btnPS.Alignment:=taLeftJustify;
end;

procedure TDashboardFrm.btnPSMouseLeave(Sender: TObject);
begin
    btnPS.BorderStyle:=bsNone;
    btnPS.Alignment:=taCenter;
end;

procedure TDashboardFrm.btnLAMouseEnter(Sender: TObject);
begin
  btnLA.BorderStyle:=bsSingle;
  btnLA.Alignment:=taLeftJustify;
end;

procedure TDashboardFrm.btnLAMouseLeave(Sender: TObject);
begin
  btnLA.BorderStyle:=bsNone;
  btnLA.Alignment:=taCenter;
end;

procedure TDashboardFrm.btnLIMouseEnter(Sender: TObject);
begin
  btnLI.BorderStyle:=bsSingle;
  btnLI.Alignment:=taLeftJustify;
end;

procedure TDashboardFrm.btnLIMouseLeave(Sender: TObject);
begin
  btnLI.BorderStyle:=bsNone;
  btnLI.Alignment:=taCenter;
end;

procedure TDashboardFrm.btnLPMouseEnter(Sender: TObject);
begin
  btnLP.BorderStyle:=bsSingle;
  btnLP.Alignment:=taLeftJustify;
end;

procedure TDashboardFrm.btnLPMouseLeave(Sender: TObject);
begin
  btnLP.BorderStyle:=bsNone;
  btnLP.Alignment:=taCenter;
end;

procedure TDashboardFrm.btnLSMouseEnter(Sender: TObject);
begin
  btnLS.BorderStyle:=bsSingle;
  btnLS.Alignment:=taLeftJustify;
end;

procedure TDashboardFrm.btnLSMouseLeave(Sender: TObject);
begin
  btnLS.BorderStyle:=bsNone;
  btnLS.Alignment:=taCenter;
end;

procedure TDashboardFrm.btnAMouseEnter(Sender: TObject);
begin
  btnA.BorderStyle:=bsSingle;
  btnA.Alignment:=taLeftJustify;
end;

procedure TDashboardFrm.btnAMouseLeave(Sender: TObject);
begin
  btnA.BorderStyle:=bsNone;
  btnA.Alignment:=taCenter;
end;

procedure TDashboardFrm.btnCTMouseEnter(Sender: TObject);
begin
  btnCT.BorderStyle:=bsSingle;
  btnCT.Alignment:=taLeftJustify;
end;

procedure TDashboardFrm.btnCTMouseLeave(Sender: TObject);
begin
  btnCT.BorderStyle:=bsNone;
  btnCT.Alignment:=taCenter;
end;

procedure TDashboardFrm.btnIAMouseEnter(Sender: TObject);
begin
  btnIA.BorderStyle:=bsSingle;
  btnIA.Alignment:=taLeftJustify;
end;

procedure TDashboardFrm.btnIAMouseLeave(Sender: TObject);
begin
  btnIA.BorderStyle:=bsNone;
  btnIA.Alignment:=taCenter;
end;

procedure TDashboardFrm.btnPMouseEnter(Sender: TObject);
begin
  btnP.BorderStyle:=bsSingle;
  btnP.Alignment:=taLeftJustify;
end;

procedure TDashboardFrm.btnPMouseLeave(Sender: TObject);
begin
  btnP.BorderStyle:=bsNone;
  btnP.Alignment:=taCenter;
end;

procedure TDashboardFrm.btnSMouseEnter(Sender: TObject);
begin
  btnS.BorderStyle:=bsSingle;
  btnS.Alignment:=taLeftJustify;
end;

procedure TDashboardFrm.btnSMouseLeave(Sender: TObject);
begin
  btnS.BorderStyle:=bsNone;
  btnS.Alignment:=taCenter;
end;
//== end of responsive ==

//== begin of Procedure ==

procedure TDashboardFrm.FormActivate(Sender: TObject);
begin
  WinHome:= THome.Create(Self);
  WinDA:= TDaftarAkun.Create(Self);
  WinDAn:= TDaftarAnggota.Create(Self);
  WinDK:= TDaftarKaryawan.Create(Self);
  WinS:= TSettingApp.Create(Self);
  WinCA:= TCariAnggota.Create(Self);
  WinPA:= TPendaftaranAnggota.Create(Self);
  WinPeA:= TPengunduranAnggota.Create(Self);
  WinPRA:= TPRekSim.Create(Self);
  WinPP:= TPengajuanPinjaman.Create(Self);
  WinCT:= TtCariT.Create(Self);
  WinIA:= TtIuran.Create(Self);
  WinTS:= TtSimpanan.Create(Self);
  WinTP:= TtPinjaman.Create(Self);
  WinTA:= TtAngsuran.Create(Self);
  WinLI:= TLapIuran.Create(Self);
  WinLA:= TLapAngsuran.Create(Self);
  WinLS:= TLapSimpanan.Create(Self);
  WinLP:= TLapPinjaman.Create(Self);
  DashboardFrm.WindowState:=wsMaximized;
  Status:='Logout';
end;

procedure TDashboardFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CloseWarning();
  dbModule.Free;
end;

procedure TDashboardFrm.btnExitClick(Sender: TObject);
begin
  if btnExit.Caption='Logout' then
    begin
      Status:='Logout';
      btnExit.Caption:='Exit';
      sNotebook1.PageIndex:=0;
    end
  else
    begin
      CloseWarning();
    end
  end;

//== end of Procedure ==

procedure TDashboardFrm.sButton1Click(Sender: TObject);
begin
  Login();
  in_Username.Clear;
  in_Password.Clear;
end;

procedure TDashboardFrm.btnDAClick(Sender: TObject);
begin
WinDA.Parent:=winContainer;
WinDA.Visible:=True;
Home.Close
end;

procedure TDashboardFrm.btnDUClick(Sender: TObject);
begin
WinDAn.Parent:=winContainer;
WinDAn.Visible:=True;
end;

procedure TDashboardFrm.btnDKClick(Sender: TObject);
begin
WinDK.Parent:=winContainer;
WinDK.Visible:=True;
end;

procedure TDashboardFrm.btnSettingClick(Sender: TObject);
begin
WinS.Parent:=winContainer;
WinS.Visible:=True;
end;

procedure TDashboardFrm.btnCAClick(Sender: TObject);
begin
WinCA.Parent:=winContainer;
WinCA.Visible:=True;
end;

procedure TDashboardFrm.btnPAClick(Sender: TObject);
begin
WinPA.Parent:=winContainer;
WinPA.Visible:=True;
end;

procedure TDashboardFrm.btnPePClick(Sender: TObject);
begin
WinPP.Parent:=winContainer;
WinPP.Visible:=True;
end;

procedure TDashboardFrm.btnPSClick(Sender: TObject);
begin
WinPRA.Parent:=winContainer;
WinPRA.Visible:=True;
end;

procedure TDashboardFrm.btnPeAClick(Sender: TObject);
begin
WinPeA.Parent:=winContainer;
WinPeA.Visible:=True;
end;

procedure TDashboardFrm.btnCTClick(Sender: TObject);
begin
WinCT.Parent:=winContainer;
WinCT.Visible:=True;
end;

procedure TDashboardFrm.btnIAClick(Sender: TObject);
begin
WinIA.Parent:=winContainer;
WinIA.Visible:=True;
end;

procedure TDashboardFrm.btnSClick(Sender: TObject);
begin
WinTS.Parent:=winContainer;
WinTS.Visible:=True;
end;

procedure TDashboardFrm.btnPClick(Sender: TObject);
begin
WinTP.Parent:=winContainer;
WinTP.Visible:=True;
end;

procedure TDashboardFrm.btnAClick(Sender: TObject);
begin
WinTA.Parent:=winContainer;
WinTA.Visible:=True;
end;

procedure TDashboardFrm.btnLIClick(Sender: TObject);
begin
WinLI.Parent:=winContainer;
WinLI.Visible:=True;
end;

procedure TDashboardFrm.btnLSClick(Sender: TObject);
begin
WinLS.Parent:=winContainer;
WinLS.Visible:=True;
end;

procedure TDashboardFrm.btnLPClick(Sender: TObject);
begin
WinLP.Parent:=winContainer;
WinLP.Visible:=True;
end;

procedure TDashboardFrm.btnLAClick(Sender: TObject);
begin
WinLA.Parent:=winContainer;
WinLA.Visible:=True;
end;

end.
