object Tray: TTray
  Left = 664
  Top = 338
  Align = alClient
  BorderStyle = bsNone
  Caption = #1058#1088#1101#1081
  ClientHeight = 130
  ClientWidth = 152
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PopupMenu1: TPopupMenu
    object N1: TMenuItem
      Caption = #1056#1072#1079#1074#1077#1088#1085#1091#1090#1100
      OnClick = N1Click
    end
    object N: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N2Click
    end
  end
end
