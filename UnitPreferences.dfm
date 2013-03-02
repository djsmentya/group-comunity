object FormPref: TFormPref
  Left = 410
  Top = 166
  Width = 928
  Height = 480
  Caption = 'FormPref'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 912
    Height = 442
    ActivePage = TabSheet1
    Align = alClient
    MultiLine = True
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1057#1077#1090#1100
      OnShow = TabSheet1Show
      object GroupBox1: TGroupBox
        Left = 16
        Top = 24
        Width = 377
        Height = 113
        Caption = #1057#1077#1090#1077#1081#1074#1086#1077' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 32
          Width = 113
          Height = 13
          Caption = #1040#1076#1088#1077#1089' '#1080#1083#1080'  IP '#1089#1077#1088#1074#1077#1088#1072
        end
        object Label2: TLabel
          Left = 133
          Top = 51
          Width = 3
          Height = 13
          Caption = ':'
        end
        object Label3: TLabel
          Left = 152
          Top = 32
          Width = 25
          Height = 13
          Caption = #1055#1086#1088#1090
        end
        object EditAddress: TMaskEdit
          Left = 8
          Top = 48
          Width = 120
          Height = 21
          EditMask = '990.990.990.990;0;0'
          MaxLength = 15
          TabOrder = 0
        end
        object EditPort: TMaskEdit
          Left = 144
          Top = 48
          Width = 64
          Height = 21
          EditMask = '99999;0; '
          MaxLength = 5
          TabOrder = 1
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 373
        Width = 904
        Height = 41
        Align = alBottom
        Caption = 'Panel1'
        TabOrder = 1
        object BitBtn1: TBitBtn
          Left = 328
          Top = 8
          Width = 75
          Height = 25
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          TabOrder = 0
          OnClick = BitBtn1Click
        end
      end
    end
  end
  object QueryAddres: TZQuery
    Connection = DM.conDB
    Active = True
    SQL.Strings = (
      'SELECT * FROM preferences where name =  '#39'host_address'#39' ;')
    Params = <>
    Left = 524
    Top = 104
    object QueryAddresid: TIntegerField
      FieldName = 'id'
    end
    object QueryAddresname: TStringField
      FieldName = 'name'
      Size = 1020
    end
    object QueryAddresvalue: TStringField
      FieldName = 'value'
      Size = 1020
    end
  end
  object QueryPort: TZQuery
    Connection = DM.conDB
    Active = True
    SQL.Strings = (
      'SELECT * FROM preferences where name =  '#39'host_port'#39' ;'
      '')
    Params = <>
    Left = 532
    Top = 160
  end
  object QuerySave: TZQuery
    Connection = DM.conDB
    SQL.Strings = (
      'UPDATE preferences'
      'set value = :value'
      'WHERE name =:name;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'value'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'name'
        ParamType = ptUnknown
      end>
    Left = 292
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'value'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'name'
        ParamType = ptUnknown
      end>
  end
end
