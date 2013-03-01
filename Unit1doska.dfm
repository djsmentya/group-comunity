object FormAdvert: TFormAdvert
  Left = 234
  Top = 132
  Align = alClient
  BorderStyle = bsNone
  Caption = #1054#1073#1098#1103#1074#1083#1077#1085#1080#1103
  ClientHeight = 446
  ClientWidth = 920
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
  object Label1: TLabel
    Left = 128
    Top = 24
    Width = 63
    Height = 13
    Caption = #1054#1073#1098#1103#1074#1083#1077#1085#1080#1103
  end
  object Label2: TLabel
    Left = 576
    Top = 16
    Width = 44
    Height = 13
    Caption = #1057#1086#1073#1099#1090#1080#1103
  end
  object DBText1: TDBText
    Left = 32
    Top = 48
    Width = 65
    Height = 17
    DataField = 'Name'
    DataSource = DataSource1
  end
  object DBText2: TDBText
    Left = 520
    Top = 40
    Width = 65
    Height = 17
    DataField = 'Name'
    DataSource = DataSource2
  end
  object DBNavigator1: TDBNavigator
    Left = 56
    Top = 296
    Width = 218
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbPrior, nbNext]
    TabOrder = 0
  end
  object DBMemo1: TDBMemo
    Left = 32
    Top = 80
    Width = 265
    Height = 201
    DataField = 'Text'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBMemo2: TDBMemo
    Left = 512
    Top = 72
    Width = 273
    Height = 209
    DataField = 'Text'
    DataSource = DataSource2
    TabOrder = 2
  end
  object DBNavigator2: TDBNavigator
    Left = 544
    Top = 296
    Width = 222
    Height = 25
    DataSource = DataSource2
    VisibleButtons = [nbPrior, nbNext]
    TabOrder = 3
  end
  object Button1: TButton
    Left = 344
    Top = 336
    Width = 121
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1086#1073#1099#1090#1080#1103
    TabOrder = 4
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    DataSet = DM.ZAdvert
    Left = 232
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = DM.ZEvent
    Left = 488
    Top = 8
  end
end
