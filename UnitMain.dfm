object FormMain: TFormMain
  Left = 239
  Top = 201
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
    ButtonWidth = 33
    Caption = 'ToolBar'
    TabOrder = 0
    object ToolBtnAdvert: TToolButton
      Left = 0
      Top = 2
      Caption = '????? ??????????'
      MenuItem = doska
    end
    object btnZachetka: TToolButton
      Left = 33
      Top = 2
      Caption = '???????'
      MenuItem = zachetka
    end
    object btnProfile: TToolButton
      Left = 66
      Top = 2
      Caption = '??????? ????????????'
      MenuItem = profile
    end
    object ToolButtonDolgi: TToolButton
      Left = 99
      Top = 2
      Caption = #199#224#228#238#235#230#237#238#241#242#232
      MenuItem = Dolgi
      OnClick = ToolButtonDolgiClick
    end
  end
  object Panel: TPanel
    Left = 0
    Top = 29
    Width = 920
    Height = 397
    Align = alClient
    TabOrder = 1
  end
  object MainMenu: TMainMenu
    Left = 872
    Top = 392
    object fileMenu: TMenuItem
      Caption = '????'
      object exitMenu: TMenuItem
        Caption = '?????'
        OnClick = exitMenuClick
      end
    end
    object edit: TMenuItem
      Caption = '??????'
      object pref: TMenuItem
        Caption = '?????????'
      end
      object N1: TMenuItem
        Caption = '????????????? ?????? ??????'
        OnClick = N1Click
      end
    end
    object view: TMenuItem
      Caption = '???'
      object doska: TMenuItem
        Caption = '????? ??????????'
        OnClick = doskaClick
      end
      object zachetka: TMenuItem
        Caption = '???????'
        OnClick = zachetkaClick
      end
      object profile: TMenuItem
        Caption = '??????? ????????????'
        OnClick = profileClick
      end
      object Dolgi: TMenuItem
        Caption = #199#224#228#238#235#230#237#238#241#242#232
        OnClick = DolgiClick
      end
    end
  end
end
