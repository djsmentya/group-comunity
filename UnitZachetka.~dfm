object FormZachetka: TFormZachetka
  Left = 338
  Top = 139
  Align = alClient
  BorderStyle = bsNone
  Caption = #1047#1072#1095#1105#1090#1082#1072
  ClientHeight = 526
  ClientWidth = 761
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
  object pgcZach: TPageControl
    Left = 0
    Top = 0
    Width = 761
    Height = 345
    ActivePage = ts1
    TabOrder = 0
    object ts1: TTabSheet
      Caption = #1057#1090#1091#1076#1077#1085#1090
      object dbtxt1: TDBText
        Left = 120
        Top = 32
        Width = 49
        Height = 18
        AutoSize = True
        DataField = 'name'
        DataSource = dsQueryUser
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtxt2: TDBText
        Left = 8
        Top = 32
        Width = 49
        Height = 18
        AutoSize = True
        DataField = 'surname'
        DataSource = dsQueryUser
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtxt3: TDBText
        Left = 216
        Top = 32
        Width = 49
        Height = 18
        AutoSize = True
        DataField = 'patronymic'
        DataSource = dsQueryUser
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtxt4: TDBText
        Left = 304
        Top = 32
        Width = 65
        Height = 17
        DataField = 'klass'
        DataSource = dsQueryUser
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 256
        Top = 72
        Width = 178
        Height = 19
        Caption = #1047#1072#1095#1105#1090' '#1087#1086' '#1087#1088#1072#1082#1090#1080#1095#1077#1089#1082#1080#1084':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 432
        Top = 32
        Width = 42
        Height = 18
        Caption = #1050#1091#1088#1089':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtxt5: TDBText
        Left = 200
        Top = 8
        Width = 65
        Height = 17
        DataField = 'role'
        DataSource = dsQueryUser
        Visible = False
      end
      object Label11: TLabel
        Left = 16
        Top = 72
        Width = 168
        Height = 19
        Caption = #1054#1094#1077#1085#1082#1080' '#1087#1086' '#1087#1088#1077#1076#1084#1077#1090#1072#1084':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dbgrd1: TDBGrid
        Left = 16
        Top = 96
        Width = 167
        Height = 217
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object dbgrd2: TDBGrid
        Left = 264
        Top = 96
        Width = 167
        Height = 217
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object ComboBox1: TComboBox
        Left = 480
        Top = 32
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 2
        OnSelect = ComboBox1Select
        Items.Strings = (
          '1 '#1082#1091#1088#1089
          '2 '#1082#1091#1088#1089
          '3 '#1082#1091#1088#1089
          '4 '#1082#1091#1088#1089)
      end
    end
    object ts2: TTabSheet
      Caption = #1057#1090#1072#1088#1086#1089#1090#1072
      ImageIndex = 1
      object grp1: TGroupBox
        Left = 16
        Top = 8
        Width = 193
        Height = 121
        Caption = #1057#1087#1080#1089#1086#1082' '#1087#1088#1077#1076#1084#1077#1090#1086#1074
        TabOrder = 0
        object Edit1: TEdit
          Left = 8
          Top = 32
          Width = 97
          Height = 21
          TabOrder = 0
        end
        object btn1: TButton
          Left = 112
          Top = 32
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 1
          OnClick = btn1Click
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 8
          Top = 72
          Width = 97
          Height = 21
          KeyField = 'items'
          ListSource = DM.dsItems
          TabOrder = 2
        end
        object btn2: TButton
          Left = 112
          Top = 72
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 3
          OnClick = btn2Click
        end
      end
      object grp2: TGroupBox
        Left = 216
        Top = 8
        Width = 249
        Height = 121
        Caption = #1054#1094#1077#1085#1082#1080
        TabOrder = 1
        object Label3: TLabel
          Left = 8
          Top = 24
          Width = 44
          Height = 13
          Caption = #1057#1090#1091#1076#1077#1085#1090
        end
        object Label4: TLabel
          Left = 8
          Top = 48
          Width = 44
          Height = 13
          Caption = #1055#1088#1077#1076#1084#1077#1090
        end
        object Label5: TLabel
          Left = 8
          Top = 72
          Width = 24
          Height = 13
          Caption = #1050#1091#1088#1089
        end
        object Label6: TLabel
          Left = 8
          Top = 96
          Width = 38
          Height = 13
          Caption = #1054#1094#1077#1085#1082#1072
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 56
          Top = 16
          Width = 145
          Height = 21
          KeyField = 'surname'
          ListSource = DM.dsUser
          TabOrder = 0
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 56
          Top = 40
          Width = 105
          Height = 21
          KeyField = 'items'
          ListSource = DM.dsItems
          TabOrder = 1
        end
        object Edit2: TEdit
          Left = 56
          Top = 88
          Width = 105
          Height = 21
          TabOrder = 2
        end
        object btn3: TButton
          Left = 168
          Top = 88
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 3
          OnClick = btn3Click
        end
        object ComboBox2: TComboBox
          Left = 56
          Top = 64
          Width = 105
          Height = 21
          ItemHeight = 13
          TabOrder = 4
          Items.Strings = (
            '1 '#1082#1091#1088#1089
            '2 '#1082#1091#1088#1089
            '3 '#1082#1091#1088#1089
            '4 '#1082#1091#1088#1089)
        end
      end
      object DBEdit1: TDBEdit
        Left = 296
        Top = 120
        Width = 121
        Height = 21
        DataField = 'id'
        DataSource = DM.dsUser
        TabOrder = 2
        Visible = False
      end
      object dbedtid: TDBEdit
        Left = 424
        Top = 120
        Width = 121
        Height = 21
        DataField = 'id'
        DataSource = DM.dsItems
        TabOrder = 3
        Visible = False
      end
      object grp3: TGroupBox
        Left = 472
        Top = 8
        Width = 249
        Height = 121
        Caption = #1047#1072#1095#1105#1090#1099
        TabOrder = 4
        object Label7: TLabel
          Left = 8
          Top = 24
          Width = 44
          Height = 13
          Caption = #1057#1090#1091#1076#1077#1085#1090
        end
        object Label8: TLabel
          Left = 8
          Top = 48
          Width = 44
          Height = 13
          Caption = #1055#1088#1077#1076#1084#1077#1090
        end
        object Label9: TLabel
          Left = 8
          Top = 72
          Width = 24
          Height = 13
          Caption = #1050#1091#1088#1089
        end
        object Label10: TLabel
          Left = 8
          Top = 96
          Width = 30
          Height = 13
          Caption = #1047#1072#1095#1105#1090
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 64
          Top = 16
          Width = 145
          Height = 21
          KeyField = 'surname'
          ListSource = DM.dsUser
          TabOrder = 0
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 64
          Top = 40
          Width = 97
          Height = 21
          KeyField = 'items'
          ListSource = DM.dsItems
          TabOrder = 1
        end
        object ComboBox3: TComboBox
          Left = 64
          Top = 64
          Width = 97
          Height = 21
          ItemHeight = 13
          TabOrder = 2
          Items.Strings = (
            '1 '#1082#1091#1088#1089
            '2 '#1082#1091#1088#1089
            '3 '#1082#1091#1088#1089
            '4 '#1082#1091#1088#1089)
        end
        object ComboBox4: TComboBox
          Left = 64
          Top = 88
          Width = 97
          Height = 21
          ItemHeight = 13
          TabOrder = 3
          Items.Strings = (
            #1047#1072#1095#1105#1090
            #1053#1077#1079#1072#1095#1105#1090)
        end
        object Button1: TButton
          Left = 168
          Top = 88
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 4
          OnClick = Button1Click
        end
      end
    end
  end
  object QueryUser: TZReadOnlyQuery
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
    Left = 52
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'curuser'
        ParamType = ptUnknown
      end>
  end
  object dsQueryUser: TDataSource
    DataSet = QueryUser
    Left = 52
    Top = 400
  end
  object dsQueryRating: TDataSource
    DataSet = QueryRating
    Left = 116
    Top = 400
  end
  object QueryRating: TZReadOnlyQuery
    Connection = DM.conDB
    SQL.Strings = (
      'SELECT list_of_items.items, rating.rating'
      
        'from rating join list_of_items on rating.id_items = list_of_item' +
        's.id'
      'WHERE rating.id_users=:curuser and rating.kurs=:kurs;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'curuser'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kurs'
        ParamType = ptUnknown
      end>
    Left = 116
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'curuser'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kurs'
        ParamType = ptUnknown
      end>
  end
  object dsQueryPractik: TDataSource
    DataSet = QueryPractik
    Left = 380
    Top = 408
  end
  object QueryPractik: TZReadOnlyQuery
    Connection = DM.conDB
    SQL.Strings = (
      'SELECT list_of_items.items,practik.zachet'
      
        'from practik join list_of_items on practik.id_items = list_of_it' +
        'ems.id'
      'WHERE practik.id_users=:curuser and practik.kurs=:kurs;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'curuser'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kurs'
        ParamType = ptUnknown
      end>
    Left = 380
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'curuser'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kurs'
        ParamType = ptUnknown
      end>
  end
end
