object FormChat: TFormChat
  Left = 348
  Top = 166
  Align = alClient
  BorderStyle = bsNone
  Caption = 'FormChat'
  ClientHeight = 442
  ClientWidth = 912
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
  object MChatArea: TMemo
    Left = 0
    Top = 0
    Width = 791
    Height = 321
    Align = alClient
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object ListBox1: TListBox
    Left = 791
    Top = 0
    Width = 121
    Height = 321
    Align = alRight
    ItemHeight = 13
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 321
    Width = 912
    Height = 121
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 2
    object MTypeArea: TMemo
      Left = 1
      Top = 1
      Width = 703
      Height = 119
      Align = alClient
      Lines.Strings = (
        'Memo2')
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 704
      Top = 1
      Width = 207
      Height = 119
      Align = alRight
      Caption = 'Panel2'
      TabOrder = 1
      object Button1: TButton
        Left = 40
        Top = 24
        Width = 137
        Height = 73
        Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100
        TabOrder = 0
        OnClick = Button1Click
      end
    end
  end
end
