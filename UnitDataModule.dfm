object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 962
  Top = 107
  Height = 307
  Width = 359
  object conDB: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    ClientCodepage = 'UTF-8'
    Properties.Strings = (
      'codepage=UTF-8'
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
    Left = 56
    Top = 8
  end
  object ZEvent: TZTable
    Connection = conDB
    Active = True
    TableName = 'events'
    Left = 16
    Top = 64
  end
  object ztblItems: TZTable
    Connection = conDB
    Active = True
    TableName = 'list_of_items'
    Left = 128
    Top = 96
    object intgrfldItemsid: TIntegerField
      FieldName = 'id'
    end
    object strngfldItemsitems: TStringField
      FieldName = 'items'
      Size = 1020
    end
  end
  object ztblRating: TZTable
    Connection = conDB
    SortedFields = 'id_items'
    Active = True
    TableName = 'rating'
    MasterFields = 'id'
    MasterSource = dsItems
    LinkedFields = 'id_items'
    IndexFieldNames = 'id_items Asc'
    Left = 184
    Top = 96
    object intgrfldRatingid: TIntegerField
      FieldName = 'id'
    end
    object fltfldRatingid_users: TFloatField
      FieldName = 'id_users'
    end
    object fltfldRatingid_items: TFloatField
      FieldName = 'id_items'
      KeyFields = 'id_items'
    end
    object fltfldRatingrating: TFloatField
      FieldName = 'rating'
    end
    object ztblRatingkurs: TStringField
      FieldName = 'kurs'
      Size = 1020
    end
  end
  object ztblCurUser: TZTable
    Connection = conDB
    Active = True
    TableName = 'current_users'
    Left = 72
    Top = 96
    object intgrfldCurUserid: TIntegerField
      FieldName = 'id'
    end
    object fltfldCurUseruser_id: TFloatField
      FieldName = 'user_id'
    end
  end
  object dsGrid: TDataSource
    DataSet = ztblRating
    Left = 20
    Top = 152
  end
  object dsItems: TDataSource
    DataSet = ztblItems
    Left = 60
    Top = 152
  end
  object dsUser: TDataSource
    DataSet = ztblUser
    Left = 168
    Top = 8
  end
  object ztblPractik: TZTable
    Connection = conDB
    Active = True
    TableName = 'Practik'
    Left = 240
    Top = 96
    object ztblPractikid: TIntegerField
      FieldName = 'id'
    end
    object ztblPractikkurs: TStringField
      FieldName = 'kurs'
      Size = 1020
    end
    object ztblPractikid_users: TFloatField
      FieldName = 'id_users'
    end
    object ztblPractikid_items: TFloatField
      FieldName = 'id_items'
    end
    object ztblPractikzachet: TStringField
      FieldName = 'zachet'
      Size = 1020
    end
  end
  object dsPractik: TDataSource
    DataSet = ztblPractik
    Left = 240
    Top = 160
  end
  object IniQuery: TZQuery
    Connection = conDB
    Active = True
    SQL.Strings = (
      
        'INSERT INTO users VALUES(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL' +
        ',NULL,NULL,NULL,NULL,NULL,NULL,NULL)')
    Params = <>
    Left = 136
    Top = 208
end
  object ZtblDolgi: TZTable
    Connection = conDB
    Active = True
    TableName = 'Dolgi'
    Left = 280
    Top = 96
    object ZtblDolgiName: TStringField
      DisplayWidth = 25
      FieldName = 'Name'
      Size = 1020
    end
    object ZtblDolgipredmet: TStringField
      DisplayWidth = 25
      FieldName = 'predmet'
      Size = 1020
    end
    object ZtblDolgiDolg: TBooleanField
      FieldName = 'Dolg'
      DisplayValues = #229#241#242#252';'#205#229#242
    end
    object ZtblDolgiid: TIntegerField
      FieldName = 'id'
      LookupDataSet = ztblCurUser
      Visible = False
    end
    object ZtblDolgiuser_id: TFloatField
      FieldName = 'user_id'
      Visible = False
    end
  end
  object DsDolgi: TDataSource
    DataSet = ZtblDolgi
    Left = 152
    Top = 168
  end
end
