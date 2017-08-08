program V_KSP;

uses
  Forms,
  moduleDB in 'moduleDB.pas' {dbModule: TDataModule},
  TfrmDashboard in 'TfrmDashboard.pas' {DashboardFrm},
  TfrmAngsuran in 'TfrmAngsuran.pas' {tAngsuran},
  TfrmcariAnggota in 'TfrmcariAnggota.pas' {CariAnggota},
  TfrmCariTransaksi in 'TfrmCariTransaksi.pas' {tCariT},
  TfrmDaftarAkun in 'TfrmDaftarAkun.pas' {DaftarAkun},
  TfrmDaftarAnggota in 'TfrmDaftarAnggota.pas' {DaftarAnggota},
  TfrmDaftarKaryawan in 'TfrmDaftarKaryawan.pas' {DaftarKaryawan},
  TfrmHome in 'TfrmHome.pas' {Home},
  TfrmIuran in 'TfrmIuran.pas' {tIuran},
  TfrmLapAngsuran in 'TfrmLapAngsuran.pas' {LapAngsuran},
  TfrmLapIuran in 'TfrmLapIuran.pas' {LapIuran},
  TfrmLapPinjaman in 'TfrmLapPinjaman.pas' {LapPinjaman},
  TfrmLapSimpanan in 'TfrmLapSimpanan.pas' {LapSimpanan},
  TfrmPendaftaranAnggota in 'TfrmPendaftaranAnggota.pas' {PendaftaranAnggota},
  TfrmPendaftaranRekeningSimpanan in 'TfrmPendaftaranRekeningSimpanan.pas' {PRekSim},
  TfrmPengajuanPinjaman in 'TfrmPengajuanPinjaman.pas' {PengajuanPinjaman},
  TfrmPengunduranDiri in 'TfrmPengunduranDiri.pas' {PengunduranAnggota},
  TfrmPinjaman in 'TfrmPinjaman.pas' {tPinjaman},
  TfrmSettingApplikasi in 'TfrmSettingApplikasi.pas' {SettingApp},
  TfrmSimpanan in 'TfrmSimpanan.pas' {tSimpanan},
  TfrmKwitansiPrint in 'TfrmKwitansiPrint.pas' {KwitansiKAS};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'V-KSP v1';
  Application.CreateForm(TdbModule, dbModule);
  Application.CreateForm(TDashboardFrm, DashboardFrm);
  Application.CreateForm(TtAngsuran, tAngsuran);
  Application.CreateForm(TCariAnggota, CariAnggota);
  Application.CreateForm(TtCariT, tCariT);
  Application.CreateForm(TDaftarAkun, DaftarAkun);
  Application.CreateForm(TDaftarAnggota, DaftarAnggota);
  Application.CreateForm(TDaftarKaryawan, DaftarKaryawan);
  Application.CreateForm(THome, Home);
  Application.CreateForm(TtIuran, tIuran);
  Application.CreateForm(TLapAngsuran, LapAngsuran);
  Application.CreateForm(TLapIuran, LapIuran);
  Application.CreateForm(TLapPinjaman, LapPinjaman);
  Application.CreateForm(TLapSimpanan, LapSimpanan);
  Application.CreateForm(TPendaftaranAnggota, PendaftaranAnggota);
  Application.CreateForm(TPRekSim, PRekSim);
  Application.CreateForm(TPengajuanPinjaman, PengajuanPinjaman);
  Application.CreateForm(TPengunduranAnggota, PengunduranAnggota);
  Application.CreateForm(TtPinjaman, tPinjaman);
  Application.CreateForm(TSettingApp, SettingApp);
  Application.CreateForm(TtSimpanan, tSimpanan);
  Application.CreateForm(TKwitansiKAS, KwitansiKAS);
  Application.Run;
end.
