object FormEvent: TFormEvent
  Left = 289
  Top = 205
  Align = alClient
  BorderStyle = bsNone
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1086#1073#1099#1090#1080#1103
  ClientHeight = 446
  ClientWidth = 920
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
    Width = 114
    Height = 13
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1086#1073#1098#1103#1074#1083#1077#1085#1080#1077
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 50
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
  end
  object Label3: TLabel
    Left = 16
    Top = 80
    Width = 30
    Height = 13
    Caption = #1058#1077#1082#1089#1090
  end
  object Label4: TLabel
    Left = 32
    Top = 176
    Width = 77
    Height = 13
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
  end
  object Label5: TLabel
    Left = 16
    Top = 208
    Width = 50
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
  end
  object Label6: TLabel
    Left = 16
    Top = 240
    Width = 30
    Height = 13
    Caption = #1058#1077#1082#1089#1090
  end
  object Label7: TLabel
    Left = 32
    Top = 336
    Width = 43
    Height = 13
    Caption = #1059#1076#1072#1083#1080#1090#1100
  end
  object Label8: TLabel
    Left = 16
    Top = 368
    Width = 50
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077
  end
  object Edit1: TEdit
    Left = 72
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 72
    Top = 72
    Width = 185
    Height = 89
    Lines.Strings = (
      '')
    TabOrder = 1
  end
  object Button1: TButton
    Left = 256
    Top = 40
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 72
    Top = 200
    Width = 145
    Height = 21
    KeyField = 'Name'
    ListSource = DataSource1
    TabOrder = 3
  end
  object Memo2: TMemo
    Left = 72
    Top = 232
    Width = 185
    Height = 89
    Lines.Strings = (
      '')
    TabOrder = 4
  end
  object Button2: TButton
    Left = 256
    Top = 200
    Width = 75
    Height = 25
    Caption = #1054#1073#1085#1086#1074#1080#1090#1100
    TabOrder = 5
    OnClick = Button2Click
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 72
    Top = 360
    Width = 145
    Height = 21
    KeyField = 'Name'
    ListSource = DataSource1
    TabOrder = 6
  end
  object Button3: TButton
    Left = 256
    Top = 352
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 7
    OnClick = Button3Click
  end
  object ZReadOnlyQuery1: TZReadOnlyQuery
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
    Left = 368
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
  object ZReadOnlyQuery2: TZReadOnlyQuery
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
    Left = 880
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
  object DataSource1: TDataSource
    DataSet = DM.ZAdvert
    Left = 336
    Top = 8
  end
  object DataSource2: TDataSource
    Left = 848
    Top = 8
  end
end
