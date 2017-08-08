unit moduleDB;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdbModule = class(TDataModule)
    dbCon: TADOConnection;
    dbQuery: TADOQuery;
    dbDataSource: TDataSource;
    dbTable: TADOTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dbModule: TdbModule;

implementation

{$R *.dfm}

end.
