object DM: TDM
  OldCreateOrder = False
  Left = 618
  Top = 129
  Height = 191
  Width = 246
  object conDB: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    Properties.Strings = (
      'AutoEncodeStrings=ON')
    Connected = True
    Port = 0
    Database = 'database'
    Protocol = 'sqlite-3'
    Left = 8
    Top = 8
  end
  object ztblUser: TZTable
    Connection = conDB
    Active = True
    TableName = 'users'
    Left = 128
    Top = 8
  end
  object ZAdvert: TZTable
    Connection = conDB
    Active = True
    TableName = 'advertisements'
    Left = 88
    Top = 8
  end
  object ZEvent: TZTable
    Connection = conDB
    Active = True
    TableName = 'events'
    Left = 48
    Top = 8
  end
  object ZTPref: TZTable
    Connection = conDB
    Active = True
    TableName = 'preferences'
    Left = 176
    Top = 8
  end
end
