object FormMain: TFormMain
  Left = 278
  Top = 336
  BorderStyle = bsSingle
  Caption = 'FormMain'
  ClientHeight = 422
  ClientWidth = 912
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
    object btnProfile: TToolButton
      Left = 66
      Top = 2
      Caption = #1055#1088#1086#1092#1080#1083#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      MenuItem = profile
    end
    object ToolBChat: TToolButton
      Left = 99
      Top = 2
      Caption = #1063#1072#1090
      MenuItem = chat
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
      object N1: TMenuItem
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1083#1080#1095#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
        OnClick = N1Click
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
      object profile: TMenuItem
        Caption = #1055#1088#1086#1092#1080#1083#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
        OnClick = profileClick
      end
      object chat: TMenuItem
        Caption = #1063#1072#1090
        OnClick = chatClick
      end
    end
  end
end
