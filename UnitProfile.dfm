object FormProfile: TFormProfile
  Left = 286
  Top = 213
  Align = alClient
  BorderStyle = bsNone
  Caption = #1055#1088#1086#1092#1080#1083#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
  ClientHeight = 394
  ClientWidth = 904
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
  object grpprofile: TGroupBox
    Left = 8
    Top = 8
    Width = 889
    Height = 385
    Caption = #1055#1088#1086#1092#1080#1083#1100
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
      Width = 94
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
      Width = 79
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
      Width = 93
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
      Width = 104
      Height = 14
      Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103':'
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
    object lblsearch: TLabel
      Left = 626
      Top = 24
      Width = 239
      Height = 14
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1087#1088#1086#1092#1080#1083#1080' '#1076#1088#1091#1075#1080#1093' '#1089#1090#1091#1076#1077#1085#1090#1086#1074':'
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
      Width = 873
      Height = 105
      Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
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
        Width = 44
        Height = 14
        Caption = #1043#1086#1088#1086#1076':'
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
        Width = 41
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
        Width = 101
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
        Width = 43
        Height = 14
        Caption = #1040#1076#1088#1077#1089':'
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
        Width = 122
        Height = 14
        Caption = #1058#1077#1083#1086#1092#1085#1085#1099#1081' '#1085#1086#1084#1077#1088':'
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
        Width = 84
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
      Width = 873
      Height = 201
      Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
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
        Width = 28
        Height = 14
        Caption = #1042#1059#1047':'
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
        Width = 320
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
      end
      object lblFacult: TLabel
        Left = 16
        Top = 96
        Width = 72
        Height = 14
        Caption = #1060#1072#1082#1091#1083#1100#1090#1077#1090':'
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
        Width = 475
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
      end
      object lblCaf: TLabel
        Left = 16
        Top = 136
        Width = 61
        Height = 14
        Caption = #1050#1072#1092#1077#1076#1088#1072':'
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
        Width = 298
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
      end
      object dbtxtschool: TDBText
        Left = 112
        Top = 32
        Width = 80
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
        Width = 47
        Height = 14
        Caption = #1064#1082#1086#1083#1072':'
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
        Width = 49
        Height = 14
        Caption = #1043#1088#1091#1087#1087#1072':'
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
        Left = 304
        Top = 176
        Width = 33
        Height = 14
        Caption = #1050#1091#1088#1089':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtxtkurs: TDBText
        Left = 344
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
    object dblkcbbstudent: TDBLookupComboBox
      Left = 632
      Top = 48
      Width = 233
      Height = 21
      KeyField = 'surname'
      ListSource = DM.dsUser
      TabOrder = 2
    end
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
