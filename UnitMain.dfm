object FormMain: TFormMain
  Left = 382
  Top = 269
  Width = 928
  Height = 480
  Caption = 'FormMain'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 920
    Height = 29
    Caption = 'ToolBar'
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 2
      Caption = #1057#1074#1077#1088#1085#1091#1090#1100' '#1074' '#1090#1088#1101#1081
      MenuItem = tray_start
    end
  end
  object Panel: TPanel
    Left = 0
    Top = 29
    Width = 920
    Height = 400
    Align = alClient
    TabOrder = 1
  end
  object MainMenu: TMainMenu
    Left = 872
    Top = 392
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N2Click
      end
    end
    object N3: TMenuItem
      Caption = #1055#1088#1072#1074#1082#1072
      object mniN4: TMenuItem
        Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      end
    end
    object view: TMenuItem
      Caption = #1042#1080#1076
      object tray_start: TMenuItem
        OnClick = tray_startClick
      end
    end
  end
end
