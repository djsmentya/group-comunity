object FormMain: TFormMain
  Left = 277
  Top = 162
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 912
    Height = 29
    ButtonWidth = 33
    Caption = 'ToolBar'
    Images = ImageList1
    TabOrder = 0
    object ToolBtnAdvert: TToolButton
      Left = 0
      Top = 2
      Caption = #1044#1086#1089#1082#1072' '#1086#1073#1098#1103#1074#1083#1077#1085#1080#1081
      ImageIndex = 0
      MenuItem = doska
    end
    object btnZachetka: TToolButton
      Left = 33
      Top = 2
      Caption = #1047#1072#1095#1105#1090#1082#1072
      ImageIndex = 3
      MenuItem = zachetka
    end
    object btnProfile: TToolButton
      Left = 66
      Top = 2
      Caption = #1055#1088#1086#1092#1080#1083#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      ImageIndex = 2
      MenuItem = profile
    end
    object ToolBChat: TToolButton
      Left = 99
      Top = 2
      Caption = #1063#1072#1090
      ImageIndex = 1
      MenuItem = chat
    end
    object ToolButtonDolgi: TToolButton
      Left = 132
      Top = 2
      Caption = #1047#1072#1076#1086#1083#1078#1077#1085#1086#1089#1090#1080
      ImageIndex = 4
      MenuItem = Dolgi
      OnClick = ToolButtonDolgiClick
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
    Images = ImageList1
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
      object N1: TMenuItem
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1083#1080#1095#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
        OnClick = N1Click
      end
    end
    object view: TMenuItem
      Caption = #1042#1080#1076
      object doska: TMenuItem
        Caption = #1044#1086#1089#1082#1072' '#1086#1073#1098#1103#1074#1083#1077#1085#1080#1081
        ImageIndex = 0
        OnClick = doskaClick
      end
      object zachetka: TMenuItem
        Caption = #1047#1072#1095#1105#1090#1082#1072
        ImageIndex = 3
        OnClick = zachetkaClick
      end
      object profile: TMenuItem
        Caption = #1055#1088#1086#1092#1080#1083#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
        ImageIndex = 2
        OnClick = profileClick
      end
      object chat: TMenuItem
        Caption = #1063#1072#1090
        ImageIndex = 1
        OnClick = chatClick
      end
      object Dolgi: TMenuItem
        Caption = #1047#1072#1076#1086#1083#1078#1077#1085#1086#1089#1090#1080
        ImageIndex = 4
        OnClick = DolgiClick
      end
      object schedule: TMenuItem
        Caption = #1056#1072#1089#1087#1080#1089#1072#1085#1080#1077
        ImageIndex = 5
        OnClick = scheduleClick
      end
    end
  end
  object ImageList1: TImageList
    Left = 832
    Top = 381
    Bitmap = {
      494C010106000900040010001000FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFF5F5F5FFE2E2E2FFE4E4
      E4FFE6E6E6FFE7E7E7FFE8E8E8FFEAEAEAFFEDEDEDFFF6F6F6FFF7F7F7FFFAFA
      FAFFFBFBFBFF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2EAF7FF3FD1
      E9FF01E8F4FF02E6F5FF06D1EDFF01B1E3FF0198DAFF5CB2E5FFE6F3FAFF0000
      000000000000000000000000000000000000000000FFE7E7E7FFF8F8F8FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F6F6FFF5F3F2FFEDECEBFFF7F6
      F6FFF8F8F8FFADADADFF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DCEEF8FF05A1E6FF07B1E6FF02D0
      F2FF02EEFAFF03E8F8FF07D4EFFF02B4E6FF02A0E3FF0798E5FF0691DEFF029A
      DAFF00000000000000000000000000000000000000FFE9E9E9FFEFEFEFFFF0F0
      F0FFDEDEDEFFF1F1F1FFE1E1E1FFF1F1F1FFE9E9E9FFF3F2F2FFF3F0F0FFEDEB
      EBFFF6F6F6FFE9E9E9FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000389D9FF05A3E8FF05B1E6FF01D2
      F1FF07DFFAFF09D2F9FF0AC8F4FF09C5F3FF07B9EDFF0397E2FF0591DEFF019D
      DCFF67B5E2FF000000000000000000000000000000FFE9E9E9FFE0E0E0FFE0E0
      E0FFDCDCDCFFE0E0E0FFDCDCDCFFE0E0E0FFDDDDDDFFE1E1E1FFE2E1E1FFE1E0
      DFFFDDDBDBFFF4F4F4FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000038ADAFF05B7F1FF06A7F7FF06AC
      F7FF06B1F8FF08B1EAFF01CDE6FF01ECF8FF01E3F6FF05D0EFFF01AFE3FF019A
      DEFF168CD4FFBFE0F4FF0000000000000000000000FFE6E6E6FFECECECFFECEC
      ECFFDBDBDBFFECECECFFDDDDDDFFEDEDEDFFE5E5E5FFEFEFEFFFF0F0F0FFF0F0
      F0FFF1EFEFFFEFEDEDFF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000001B4ECFF06A6F7FF06ACF7FF0296
      E1FF03A4E6FF05B6E8FF01D5EEFF01EFFBFF01E4F7FF06D1EFFF01B0E4FF019E
      E3FF0190DFFF0494DFFF07A0E0FF00000000000000FFE1E1E1FFE2E2E2FFE2E2
      E2FFD8D8D8FFE3E3E3FFD9D9D9FFE3E3E3FFDEDEDEFFE4E4E4FFE5E5E5FFE6E6
      E6FFE7E7E7FFF4F2F2FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000090DAF4FF0399E5FF06B0F8FF0290
      DDFF03A4E6FF03B3E5FF05D1F3FF09CCFAFF0AC4F9FF0CC5F9FF0AC6F7FF09BF
      F2FF02A3E4FF0494DFFF06A3E3FFA3D3EEFF000000FFE1E1E1FFE8E8E8FFE8E8
      E8FFD8D8D8FFE9E9E9FFDADADAFFE9E9E9FFE1E1E1FFEBEBEBFFECECECFFEDED
      EDFFEEEEEEFFF3F3F3FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5FBFDFF11A3E2FF07B6
      E7FF07E4F1FF01E6F3FF01DFF6FF01C8EEFF04AEE7FF0197DFFF0185D4FF07AE
      EDFF07BDF9FF07BDF9FF04BBEDFFA3D5EFFF000000FFE2E2E2FFE7E7E7FFE7E7
      E7FFD7D7D7FFE7E7E7FFD9D9D9FFE8E8E8FFE0E0E0FFE9E9E9FFEAEAEAFFEBEB
      EBFFECECECFFF2F2F2FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000068ED7FF01A6E4FF06C1
      EFFF07E6F2FF01E7F3FF01DFF6FF01C8EEFF04AEE7FF0198E0FF018CDCFF059E
      E5FF069BDCFF07BDF9FF07BDF9FF98DCF3FF000000FFE3E3E3FFDFDFDFFFDFDF
      DFFFD3D3D3FFDFDFDFFFD4D4D4FFE0E0E0FFD9D9D9FFE1E1E1FFE2E2E2FFE3E3
      E3FFE4E4E4FFF2F2F2FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000195E0FF02A6E3FF15D7
      F4FF2EF5F9FF3AFDFDFF12F0FDFF08ECFAFF15F8FDFF23ECF9FF1ABBEAFF049D
      E4FF07A3E4FF07BDF9FF02A8E4FF00000000000000FFE4E4E4FFE4E4E4FFE5E5
      E5FFD5D5D5FFE5E5E5FFD6D6D6FFE5E5E5FFDDDDDDFFE6E6E6FFE7E7E7FFE8E8
      E8FFE9E9E9FFF0F0F0FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000011C5F2FF2AF9FEFF2EFE
      FEFF32FEFEFF24FBFEFF01D9F4FF06E2FBFF16F4FEFF2AFEFEFF3CFEFEFF45FE
      FEFF07C4EFFFBAE6F7FF0000000000000000000000FFE7E7E7FFD9D9D9FFD8D8
      D8FFD4D4D4FFD7D7D7FFD3D3D3FFD6D6D6FFD4D4D4FFD8D8D8FFD9D9D9FFDADA
      DAFFDBDBDBFFEFEFEFFF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000022E1FEFF2AF1FEFF31FA
      FEFF33FEFEFF0EDDFCFF01D1F3FF0DDFFEFF1FF2FEFF33FEFEFF41FEFEFF37FD
      FEFF01CCECFF000000000000000000000000000000FFE9E9E9FFE2E2E2FFE3E3
      E3FFD3D3D3FFE3E3E3FFD4D4D4FFE3E3E3FFDBDBDBFFE4E4E4FFE5E5E5FFE6E6
      E6FFE7E7E7FFEFEFEFFF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006BDFFBFF2ED4F4FF32F3
      FEFF28EBFEFF01C5EFFF05CCF5FF14DCFEFF29F1FEFF3AFEFEFF44FEFEFF10C5
      E8FF49C8EEFF000000000000000000000000000000FFF5F5F5FFD5D5D5FFD5D5
      D5FFD1D1D1FFD4D4D4FFD0D0D0FFD3D3D3FFD1D1D1FFD4D4D4FFD6D6D6FFD7D7
      D7FFD8D8D8FFEEEEEEFF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009AE7
      FBFF24B7EDFF019CD0FF0CAEDFFF1EC1E9FF32D0F4FF4BDFF8FF9CEDFBFF0000
      000000000000000000000000000000000000000000FFF6F6F6FFE2E2E2FFE2E2
      E2FFD2D2D2FFE2E2E2FFD4D4D4FFE2E2E2FFDADADAFFE3E3E3FFE3E3E3FFE4E4
      E4FFE5E5E5FFEDEDEDFF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFF3F3F6FF4C65CCFF4B64
      CCFF4B64CCFF4B64CBFF4A63CBFF4A63CBFF4A63CBFF4C65CBFF697DD0FF8797
      D6FFA6B1DCFFDADCE2FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FFF3F4F6FFDBDBDBFFDBDB
      DBFFDBDBDBFFDBDBDCFFDADBDBFFDBDBDBFFDADADBFFDADADBFFD9D9DAFFD9D9
      D9FFD9D9DAFFD9D9D9FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFFFCFCFCFFFBFBFBFFFBFBFBFFFCFCFCFFFEFE
      FEFF000000000000000000000000000000000000000000000000FEFEFEFFFCFC
      FDFFFAFAFBFFF8F8FAFFF6F6F8FFF4F4F6FFF5F5F6FFF6F6F7FFF9F9FAFFFDFD
      FDFF00000000000000000000000000000000FDFDFDFFF8F8F8FFF1F1F1FFECEC
      ECFFE7E7E8FFE6E6E7FFDDDDDEFFDBDBDDFFDCDCDDFFDFDFDFFFE6E6E7FFE9E9
      E9FFF1F1F1FFF6F6F6FFFBFBFBFF0000000000000000386DA2FF305882FF315B
      85FF315D8AFF336291FF336394FF336394FF33608EFF315B87FF305881FF2E55
      79FF2E5172FF2B4B6CFF2B4A67FF323B43FF000000000000000000000000305A
      83FF2E5882FF2E5883FF2C5680FF2B537CFF294C6DFF28445BFF27486AFF2849
      68FF294966FF284665FF2A4965FF0000000000000000376BA1FF274972FF0F27
      8FFF001199FF001197FF001197FF001198FF001199FF001199FF0B1F8AFF1A32
      5DFF264565FF284565FF0000000000000000ECECECFF6180A1FF61839DFF6382
      AAFF6381ADFF6987AEFF6987AEFF6987AEFF6987AEFF6987AEFF6A89ACFF6685
      A0FF65869FFF607183FF4F6578FF373F47FF00000000315E8CFF67ABE4FF65A9
      E1FF64A8DFFF64A6DBFF63A4D9FF61A0D6FF609FD1FF5A94C4FF5C96C9FF5E9B
      CEFF5A92C0FF5383ACFF41617BFF3C5065FF00000000000000000000000061A2
      D8FF5B9ACCFF5791BFFF4E6563FFE9E3BEFFECE5BCFFE9E2B4FFE7DFACFFCAC1
      88FF47708FFF4C779CFF3E5D76FF00000000FDFDFEFF133B99FF2947B7FF203F
      B3FF0023A8FF0023A8FF0023A8FF0023A8FF0425A8FF452F6EFF0023A8FF0023
      A8FF0023ABFF173DA6FF3D5B76FF0000000000000000000000000087DDFF0087
      DDFF0087DDFF0087DDFF0087DDFF0087DDFF0087DDFF0087DDFF0087DDFF0087
      DDFF0087DDFF0671CCFF0000000000000000F9F9F9FF305881FF69AFE3FF64A7
      DAFF64A7DAFF64A7DAFF64A7DAFF64A7DAFF69AEE5FF669494FF9EEEF0FF87CA
      CAFF76ADABFF3F5F7BFF5383AAFF445565FF00000000000000000000000062A4
      D7FF61A2D3FF6D7549FFE5DDA5FFE3D99CFFE1D694FFDED38CFFDCD084FFDACD
      7CFFAEA250FF4B594CFF0000000000000000F7F7F8FF184080FF416BCFFF3966
      CDFF2A59C9FF023BBFFF0039BFFF0039C0FF7A6B8FFFBE4E17FF003AC0FF0039
      BFFF0039BFFF003AC0FF385F88FF0000000000000000000000000088DDFF087B
      C2FF244B5DFF21485BFF1E4659FF1B4356FF194154FF163E52FF133B50FF1039
      4EFF0088DDFF0071D4FF0000000000000000EFEFEFFF2C5177FF70B5ECFF6AAB
      E0FF6AABE0FF6AACE1FF64A7D9FF6AACE1FF6EB2EBFF8FBCBDFFC4FAFFFFC3FA
      FFFFCBFFFFFF41607AFF5684A9FF495665FFEBEBEBFF294C6FFF63A0D0FF4B7C
      9FFF3F6E73FFC8B539FFDACE7DFFD5C669FFC8B539FFCEBE52FFD1C25CFFCFBE
      54FFA7993AFFC2AF37FF000000000000000000000000284B6EFF5C93E7FF4783
      E3FF4180E2FF3B7CE2FF1E68DDFF0159DBFFF6F9FCFFE8C0ADFF2B76E1FF0155
      D9FF0054D9FF0057DBFF4E7EA9FF000000000000000000000000008DE0FF008D
      E0FF008DE0FF008DE0FF008DE0FF008DE0FF008DE0FF008DE0FF008DE0FF008D
      E0FF008DE0FF007EDEFF0000000000000000D4D4D4FF2D4F73FF74BAF0FF6EB2
      E5FF6EB2E5FF6DB3E9FFD87570FF414B59FF6CB3EBFFBCE3E3FFD6FCFFFFD6FC
      FFFFDEFFFFFF43657FFF5685A8FF4E5A66FFD0D0D0FF2A496AFF3D7463FFA1D7
      B6FF94D1ACFFC3B137FFB4A437FFC8B539FFC8B539FFC8B539FFC8B539FFC8B5
      39FF8D8126FF948A2EFF000000000000000000000000000000001C77B5FF62A5
      F7FF4E9BF6FF4998F6FF4A98F6FF5BACF7FFE1A86AFFE5B27CFF77B9F9FF2482
      F4FF006EF2FF3581A7FF5684A7FF0000000000000000000000000092E3FF0488
      D2FF16608CFF135D8AFF105A87FF0D5885FF086399FF0092E3FF0092E3FF0092
      E3FF0092E3FF0F8CD1FF0000000000000000B8B8B8FF2C4C6DFF79BFF5FF5D92
      B9FF4E7EA2FF4A81A6FFFFA6A6FFFFA8A8FFCD706CFFDCF7FAFFE8FDFFFFE7FD
      FFFFF1FFFFFF466780FF5784A6FF505C66FF000000002A4C69FF348B56FF46B0
      6FFF30A75EFF588B44FF8F8327FFC8B539FFC8B539FFC8B539FFC8B539FFC8B5
      39FFB9A834FF506A73FF00000000000000000000000000000000000000002EA6
      EAFF74BDFFFF75BEFFFF5BBAFFFFEDF4FAFFB7D4EBFFE1EDF7FFAFE0FFFF8DCA
      FFFF36A0DBFF00000000000000000000000000000000000000000097E6FF0097
      E4FF078ECDFF068ECCFF068DCCFF058CCBFF048CCBFF048BCAFF038BCAFF0097
      E6FF0097E6FF1789C5FF00000000000000009C9C9CFF2B4763FF7EC7FDFF5D61
      66FFFFFFFFFF828181FFFFA8A8FFFFA3A3FFF68A8AFFA4A8A8FFB2B3B1FFC3C3
      C2FFDCD8D6FF46677FFF5885A5FF425464FF0000000000000000299654FF30A7
      5EFF30A75EFF30A75EFFA2972FFFC2AF37FFC8B539FFC8B539FFC8B539FFA697
      2EFF9B8F3BFF0000000000000000000000000000000000000000000000000000
      000020A6B6FF4DBDFCFF93B5D1FF6995B7FF7098B7FF7CACCEFF81B8AAFF9DA7
      6DFF000000000000000000000000000000000000000000000000009CE9FF009C
      E9FF009CE9FF009CE9FF009CE9FF009CE9FF009CE9FF009CE9FF009CE9FF009C
      E9FF009CE9FF148CCBFF00000000000000007F7F80FF2A4159FF8DD0FFFFA3A2
      A1FFFFFFFFFF734C4CFFFFA4A4FFFFA3A3FFFFA9A9FF496980FF87CDFFFF83CD
      FFFF7EC6FAFF7FC6F9FF5885A4FF384D63FF000000000000000084C8EFFF2789
      4DFF2F8D53FF2B9755FF448755FF867A24FFB8AC5EFFDCD082FFCEC376FF8A7E
      25FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000006692B1FF74A4C9FF7BADD5FF7BACD4FFA1B29DFF0000
      000000000000000000000000000000000000000000000000000000A0EDFF0791
      D1FF264552FF22414FFF1E3E4CFF1A3A49FF163646FF113648FF00A0EDFF00A0
      EDFF00A0EDFF24AAEFFF000000000000000067696BFF2E4358FF97D6FFFFCECA
      C7FFFFFFFFFFD67575FFFFA7A7FFFFA4A4FFFFABABFF5388A9FF84CBFCFF85CC
      FDFF85CDFCFF84CBFCFF5A85A2FF374C63FF0000000000000000000000002C8A
      51FF30A75EFF30A75EFFB0907BFFB4A332FFC8B539FFC8B539FFC8B539FFC6B3
      38FF000000000000000000000000000000000000000000000000000000000000
      00000000000033A562FF78A6C9FF84B7DFFF8BC1EAFF8BC0EAFF82B4DAFF0000
      000000000000000000000000000000000000000000000000000000A5F0FF00A5
      F0FF00A5F0FF00A5F0FF00A5F0FF00A5F0FF00A5F0FF00A5F0FF00A5F0FF00A5
      F0FF00A5F0FF25AFF2FF00000000000000005B5E61FF384E62FF9EDCFFFFD0CB
      C7FFFFFFFFFFC1C7C7FF706E6EFF6B4C4CFF945858FF76B8E3FF94D5FFFF4059
      6AFF49687CFF699DBFFF5A84A0FF3C4E62FF00000000000000000000000030A7
      5EFF30A75EFF30A75EFF30744BFFC8B539FFC8B539FFC8B539FFC8B539FFC8B5
      39FF596C63FF0000000000000000000000000000000000000000000000000000
      0000000000003D6355FF85B4D8FF92C4ECFF96CBF5FF96CAF3FF8EBFE6FFBEB5
      51FF00000000000000000000000000000000000000000000000000AAF2FF03A0
      E3FF1475A0FF12739FFF11729DFF0F709CFF0E6F9BFF0C6D9AFF0B6C99FF096A
      98FF00AAF2FF1EA6E3FF00000000000000004F565BFF3E5B6CFF9FDFFFFFD6D0
      CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83CDFDFF94D5FFFF8DD2FFFF8AF4
      F1FFAFFFFFFF557B92FF547B92FF405163FF0000000000000000000000006895
      77FF86CCA1FF85CBA0FFECF1EBFFCCBB4AFFCCBB4AFFCBBA47FFCBB946FFCBBA
      47FFACF5EFFF0000000000000000000000000000000000000000000000000000
      000000000000434C52FF90BDE0FF9BCBF1FF9DCFF5FF9DCEF4FF96C5E9FFBFB9
      5EFF00000000000000000000000000000000000000000000000000AFF5FF01AD
      F0FF099ACCFF0899CBFF0798CAFF0697C9FF0596C9FF0495C8FF00AFF5FF00AF
      F5FF00AFF5FF18A0D8FF000000000000000048515AFF47657AFF9BDBFFFF577A
      90FF567589FF547083FF547182FF537182FF8CD2FFFF92D4FFFF83C5F3FF8AF4
      F1FF91F3F1FF638FB1FF4D6D85FF435362FF0000000000000000000000000000
      00000000000000000000000000006B714AFFE0D590FFDFD58FFFDFD48EFF8A8E
      4CFF000000000000000000000000000000000000000000000000000000000000
      00004F6778FF323232FF393939FFA2CFF2FFA3D1F4FFA3D0F4FF9CC7E9FF898F
      53FF00000000000000000000000000000000000000000000000000B4F8FF00B4
      F8FF00B4F8FF00B4F8FF00B4F8FF00B4F8FF00B4F8FF00B4F8FF00B4F8FF00B4
      F8FF00B4F8FF1CA8E3FF0000000000000000404A55FF4E6F86FF94D5FFFF92D4
      FFFF93D5FFFF94D5FFFF94D5FFFF94D5FFFF92D4FFFF92D4FFFF93D5FFFF6897
      B9FF56778FFF94D5FFFF446276FF4A5663FF0000000000000000000000000000
      00000000000000000000000000000000000093CDECFF87A397FF93C4D7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00007EB1D1FF303030FF494949FF636F79FF708798FF56636DFF667988FF668F
      ADFF00000000000000000000000000000000000000000000000000B8FBFF09A0
      D7FF293E48FF263B46FF233843FF203541FF1D323EFF192F3CFF162C3AFF0842
      99FF053F93FF35A5E2FF0000000000000000364455FF314659FF496A82FF527A
      93FF5A849EFF608EA9FF6493B1FF6897B6FF6493B1FF5F8BA8FF5985A0FF547A
      96FF4E718BFF466780FF2D4257FF4F5863FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002A2A2AFF161616FF161616FF2C2C2CFF656565FF717171FF4D69
      7EFF00000000000000000000000000000000000000000000000000BDFEFF00BD
      FEFF00BDFEFF00BDFEFF00BDFEFF00BDFEFF00BDFEFF00BDFEFF00BDFEFF042A
      7FFF0086CEFF1A99CCFF0000000000000000959595007B7C7EFF6D6E70FF6063
      67FF53595FFF4A525BFF424D59FF414E58FF535A60FF65696CFF727376FF7E80
      80FF89898AFF929292FF9C9C9CFFBEBEBEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000043494FFF333333FF383838FF4E4E4EFF4E4F4FFF696B6DFF0000
      000000000000000000000000000000000000000000000000000000C9FFFF00C8
      FFFF00C8FFFF00C8FFFF00C8FFFF00C8FFFF00C8FFFF00C8FFFF00C9FFFF0085
      CCFF00BCFEFF39AFD3FF0000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF800700000000C01F800300000000
      000F800300000000000780030000000000038003000000000001800300000000
      0000800300000000800080030000000080008003000000008001800300000000
      800380030000000080078003000000008007800300000000E01F800300000000
      FFFF800300000000FFFF800300000000FFFFFC0FC00F00018000E00180030000
      8000E0010001C0030000E0030001C003000000038001C00300000003C001C003
      00008003E007C0030000C007F00FC0030000C00FFC1FC0030000E00FF81FC003
      0000E007F80FC0030000E007F80FC0030000FE0FF00FC0030000FF1FF00FC003
      0000FFFFF80FC0030000FFFFF81FC003}
  end
end
