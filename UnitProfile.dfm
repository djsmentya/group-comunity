object FormProfile: TFormProfile
  Left = 178
  Top = 157
  Align = alClient
  BorderStyle = bsNone
  Caption = '??????? ????????????'
  ClientHeight = 441
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblsearch: TLabel
    Left = 424
    Top = 8
    Width = 214
    Height = 14
    Caption = '??????????? ??????? ?????? ?????????:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object grpprofile: TGroupBox
    Left = 8
    Top = 8
    Width = 401
    Height = 385
    Caption = '???????'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object dbtxtsurname: TDBText
      Left = 8
      Top = 16
      Width = 7
      Height = 25
      AutoSize = True
      DataField = 'surname'
      DataSource = DM.dsUser
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dbtxtname: TDBText
      Left = 128
      Top = 16
      Width = 7
      Height = 25
      AutoSize = True
      DataField = 'name'
      DataSource = DM.dsUser
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dbtxtpatronymic: TDBText
      Left = 239
      Top = 16
      Width = 7
      Height = 25
      AutoSize = True
      DataField = 'patronymic'
      DataSource = DM.dsUser
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbldate: TLabel
      Left = 8
      Top = 48
      Width = 92
      Height = 14
      Caption = '???? ????????:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbtxtdate: TDBText
      Left = 136
      Top = 48
      Width = 65
      Height = 17
      DataField = 'date'
      DataSource = DM.dsUser
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object grpKontact: TGroupBox
      Left = 8
      Top = 72
      Width = 385
      Height = 105
      Caption = '?????????? ??????????'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object lblCity: TLabel
        Left = 16
        Top = 32
        Width = 39
        Height = 14
        Caption = '?????:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtxtcity: TDBText
        Left = 144
        Top = 32
        Width = 4
        Height = 14
        AutoSize = True
        DataField = 'city'
        DataSource = DM.dsUser
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dbtxtaddresses: TDBText
        Left = 144
        Top = 56
        Width = 4
        Height = 14
        AutoSize = True
        DataField = 'addresses'
        DataSource = DM.dsUser
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbladdress: TLabel
        Left = 16
        Top = 56
        Width = 39
        Height = 14
        Caption = '?????:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTel: TLabel
        Left = 16
        Top = 80
        Width = 106
        Height = 14
        Caption = '????????? ?????:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtxtTelephone: TDBText
        Left = 144
        Top = 80
        Width = 4
        Height = 14
        AutoSize = True
        DataField = 'Telephone'
        DataSource = DM.dsUser
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object grpObraz: TGroupBox
      Left = 8
      Top = 176
      Width = 385
      Height = 201
      Caption = '???????????'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object lblVUZ: TLabel
        Left = 16
        Top = 56
        Width = 25
        Height = 14
        Caption = '???:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtxtInstitute: TDBText
        Left = 112
        Top = 56
        Width = 4
        Height = 14
        AutoSize = True
        DataField = 'Institute'
        DataSource = DM.dsUser
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object lblFacult: TLabel
        Left = 16
        Top = 96
        Width = 67
        Height = 14
        Caption = '?????????:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtxtfaculty: TDBText
        Left = 112
        Top = 96
        Width = 4
        Height = 14
        AutoSize = True
        DataField = 'faculty'
        DataSource = DM.dsUser
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object lblCaf: TLabel
        Left = 16
        Top = 136
        Width = 53
        Height = 14
        Caption = '???????:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtxtcathedra: TDBText
        Left = 112
        Top = 136
        Width = 4
        Height = 14
        AutoSize = True
        DataField = 'cathedra'
        DataSource = DM.dsUser
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object dbtxtschool: TDBText
        Left = 112
        Top = 32
        Width = 4
        Height = 14
        AutoSize = True
        DataField = 'school'
        DataSource = DM.dsUser
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblSchool: TLabel
        Left = 16
        Top = 32
        Width = 39
        Height = 14
        Caption = '?????:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblGroup: TLabel
        Left = 16
        Top = 176
        Width = 46
        Height = 14
        Caption = '??????:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtxtklass: TDBText
        Left = 112
        Top = 176
        Width = 65
        Height = 17
        DataField = 'klass'
        DataSource = DM.dsUser
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblkurs: TLabel
        Left = 192
        Top = 176
        Width = 32
        Height = 14
        Caption = '????:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtxtkurs: TDBText
        Left = 232
        Top = 176
        Width = 65
        Height = 17
        DataField = 'kurs'
        DataSource = DM.dsUser
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object dblkcbbstudent: TDBLookupComboBox
    Left = 424
    Top = 32
    Width = 217
    Height = 21
    KeyField = 'surname'
    ListSource = DM.dsUser
    TabOrder = 1
  end
  object QueryUs: TZReadOnlyQuery
    Connection = DM.conDB
    SQL.Strings = (
      'Select *'
      'From Users'
      'Where users.id=:curuser;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'curuser'
        ParamType = ptUnknown
      end>
    Left = 448
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'curuser'
        ParamType = ptUnknown
      end>
  end
  object dsQueryUs: TDataSource
    DataSet = QueryUs
    Left = 448
    Top = 248
  end
end
