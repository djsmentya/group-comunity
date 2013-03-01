object FormEvent: TFormEvent
  Left = 252
  Top = 143
  Width = 928
  Height = 480
  Caption = 'FormEvent'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 113
    Height = 13
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1086#1073#1100#1103#1074#1083#1077#1085#1080#1077
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 50
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
  end
  object Label3: TLabel
    Left = 8
    Top = 72
    Width = 30
    Height = 13
    Caption = #1058#1077#1082#1089#1090
  end
  object Label4: TLabel
    Left = 40
    Top = 176
    Width = 77
    Height = 13
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
  end
  object Label5: TLabel
    Left = 8
    Top = 208
    Width = 50
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
  end
  object Label6: TLabel
    Left = 8
    Top = 232
    Width = 30
    Height = 13
    Caption = #1058#1077#1082#1089#1090
  end
  object Label7: TLabel
    Left = 8
    Top = 368
    Width = 50
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
  end
  object Label8: TLabel
    Left = 584
    Top = 16
    Width = 96
    Height = 13
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1086#1073#1099#1090#1080#1077
  end
  object Label9: TLabel
    Left = 512
    Top = 48
    Width = 50
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
  end
  object Label10: TLabel
    Left = 512
    Top = 72
    Width = 30
    Height = 13
    Caption = #1058#1077#1082#1089#1090
  end
  object Label11: TLabel
    Left = 640
    Top = 168
    Width = 77
    Height = 13
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
  end
  object Label12: TLabel
    Left = 40
    Top = 336
    Width = 43
    Height = 13
    Caption = #1059#1076#1072#1083#1080#1090#1100
  end
  object Label13: TLabel
    Left = 512
    Top = 200
    Width = 50
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
  end
  object Label14: TLabel
    Left = 512
    Top = 224
    Width = 30
    Height = 13
    Caption = #1058#1077#1082#1089#1090
  end
  object Label15: TLabel
    Left = 648
    Top = 328
    Width = 43
    Height = 13
    Caption = #1059#1076#1072#1083#1080#1090#1100
  end
  object Label16: TLabel
    Left = 512
    Top = 360
    Width = 50
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
  end
  object Edit1: TEdit
    Left = 64
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 64
    Top = 72
    Width = 185
    Height = 89
    Lines.Strings = (
      '')
    TabOrder = 1
  end
  object Button1: TButton
    Left = 248
    Top = 40
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Memo2: TMemo
    Left = 64
    Top = 232
    Width = 185
    Height = 89
    Lines.Strings = (
      '')
    TabOrder = 3
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 64
    Top = 200
    Width = 145
    Height = 21
    KeyField = 'Name'
    ListSource = DataSource1
    TabOrder = 4
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 64
    Top = 360
    Width = 145
    Height = 21
    KeyField = 'Name'
    ListSource = DataSource1
    TabOrder = 5
  end
  object Button2: TButton
    Left = 248
    Top = 200
    Width = 75
    Height = 25
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 248
    Top = 352
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 7
    OnClick = Button3Click
  end
  object Edit2: TEdit
    Left = 576
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Memo3: TMemo
    Left = 576
    Top = 72
    Width = 185
    Height = 89
    Lines.Strings = (
      '')
    TabOrder = 9
  end
  object Button4: TButton
    Left = 760
    Top = 40
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 10
    OnClick = Button4Click
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 576
    Top = 192
    Width = 145
    Height = 21
    KeyField = 'Name'
    ListSource = DataSource2
    TabOrder = 11
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 576
    Top = 352
    Width = 145
    Height = 21
    KeyField = 'Name'
    ListSource = DataSource2
    TabOrder = 12
  end
  object Memo4: TMemo
    Left = 576
    Top = 224
    Width = 185
    Height = 89
    TabOrder = 13
  end
  object Button5: TButton
    Left = 760
    Top = 192
    Width = 75
    Height = 25
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    TabOrder = 14
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 760
    Top = 344
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 15
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 408
    Top = 392
    Width = 75
    Height = 25
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 16
    OnClick = Button7Click
  end
  object DataSource1: TDataSource
    DataSet = DM.ZAdvert
    Left = 272
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = DM.ZEvent
    Left = 824
    Top = 8
  end
  object ZQuery1: TZQuery
    Connection = DM.conDB
    SQL.Strings = (
      'UpDate advertisements'
      'Set Text =:Text'
      'Where Name =:Name;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Text'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Name'
        ParamType = ptUnknown
      end>
    DataSource = DataSource1
    Left = 312
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Text'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Name'
        ParamType = ptUnknown
      end>
  end
  object ZQuery2: TZQuery
    Connection = DM.conDB
    SQL.Strings = (
      'UpDate events'
      'Set Text =:Text'
      'Where Name =:Name;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Text'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Name'
        ParamType = ptUnknown
      end>
    DataSource = DataSource2
    Left = 856
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Text'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Name'
        ParamType = ptUnknown
      end>
  end
end
