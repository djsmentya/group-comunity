object FormMain: TFormMain
  Left = 340
  Top = 168
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
    Width = 912
    Height = 29
    ButtonWidth = 33
    Caption = 'ToolBar'
    TabOrder = 0
    object ToolBtnAdvert: TToolButton
      Left = 0
      Top = 2
      Caption = #1044#1086#1089#1082#1072' '#1086#1073#1098#1103#1074#1083#1077#1085#1080#1081
      MenuItem = doska
    end
    object btnZachetka: TToolButton
      Left = 33
      Top = 2
      Caption = #1047#1072#1095#1105#1090#1082#1072
      MenuItem = zachetka
    end
  end
  object Panel: TPanel
    Left = 0
    Top = 29
    Width = 912
    Height = 393
    Align = alClient
    TabOrder = 1
  end
  object MainMenu: TMainMenu
    Left = 872
    Top = 392
    object fileMenu: TMenuItem
      Caption = #1060#1072#1081#1083
      object exitMenu: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = exitMenuClick
      end
    end
    object edit: TMenuItem
      Caption = #1055#1088#1072#1074#1082#1072
      object pref: TMenuItem
        Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      end
    end
    object view: TMenuItem
      Caption = #1042#1080#1076
      object doska: TMenuItem
        Caption = #1044#1086#1089#1082#1072' '#1086#1073#1098#1103#1074#1083#1077#1085#1080#1081
        OnClick = doskaClick
      end
      object zachetka: TMenuItem
        Caption = #1047#1072#1095#1105#1090#1082#1072
        OnClick = zachetkaClick
      end
    end
  end
end
