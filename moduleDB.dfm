object dbModule: TdbModule
  OldCreateOrder = False
  Left = 192
  Top = 117
  Height = 217
  Width = 306
  object dbCon: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=./data/database/mai' +
      'n.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 8
    Top = 8
  end
  object dbQuery: TADOQuery
    Connection = dbCon
    CursorType = ctStatic
    Parameters = <>
    Left = 56
    Top = 8
  end
  object dbDataSource: TDataSource
    DataSet = dbQuery
    Left = 120
    Top = 8
  end
  object dbTable: TADOTable
    Active = True
    Connection = dbCon
    CursorType = ctStatic
    TableName = 'login_karyawan'
    Left = 8
    Top = 56
  end
end
