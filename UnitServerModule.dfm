object ServerModule: TServerModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 216
  Top = 322
  Height = 233
  Width = 312
  object ClientSocket: TClientSocket
    Active = False
    Address = '127.0.0.1'
    ClientType = ctNonBlocking
    Port = 3000
    Left = 48
    Top = 24
  end
end
