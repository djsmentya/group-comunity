object DM: TDM
  OldCreateOrder = False
  Left = 618
  Top = 129
  Height = 149
  Width = 215
  object conDB: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    Port = 0
    Database = 'database'
    Protocol = 'sqlite-3'
    Left = 8
    Top = 8
  end
  object ztblUser: TZTable
    Connection = conDB
    TableName = 'users'
    Left = 128
    Top = 8
  end
end