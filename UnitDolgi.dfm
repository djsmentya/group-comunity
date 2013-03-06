object FormDolgi: TFormDolgi
  Left = 413
  Top = 302
  Align = alClient
  AutoSize = True
  BorderStyle = bsNone
  Caption = 'Dolgi'
  ClientHeight = 353
  ClientWidth = 785
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
  object LabelNzvTabl: TLabel
    Left = 280
    Top = 0
    Width = 114
    Height = 20
    Caption = #1047#1072#1076#1086#1083#1078#1077#1085#1086#1089#1090#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 16
    Width = 753
    Height = 305
    Align = alCustom
    Anchors = [akLeft, akTop, akBottom]
    DataSource = DM.DsDolgi
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 240
    Top = 328
    Width = 240
    Height = 25
    DataSource = DM.DsDolgi
    TabOrder = 1
  end
end
