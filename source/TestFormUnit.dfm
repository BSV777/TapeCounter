object TestForm: TTestForm
  Left = 272
  Top = 210
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1058#1077#1089#1090' RS-485'
  ClientHeight = 492
  ClientWidth = 280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 2
    Top = 10
    Width = 41
    Height = 13
    Caption = #1040#1076#1088#1077#1089':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbAnswer: TLabel
    Left = 170
    Top = 11
    Width = 97
    Height = 16
    Caption = '____________'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edAddr: TEdit
    Left = 49
    Top = 6
    Width = 25
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Text = '01'
  end
  object btSaveTrace: TButton
    Left = 99
    Top = 11
    Width = 62
    Height = 16
    Caption = 'SaveTrace'
    TabOrder = 1
    OnClick = btSaveTraceClick
  end
  object btT: TButton
    Left = 9
    Top = 46
    Width = 193
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = #1058' - '#1095#1090#1077#1085#1080#1077' '#1090#1077#1082#1091#1097#1077#1081' '#1073#1091#1093#1090#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    OnClick = btTClick
  end
  object btG: TButton
    Left = 9
    Top = 78
    Width = 193
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = 'G - '#1095#1090#1077#1085#1080#1077' '#1087#1088#1077#1076#1099#1076#1091#1097#1077#1081' '#1073#1091#1093#1090#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    OnClick = btGClick
  end
  object btC: TButton
    Left = 9
    Top = 110
    Width = 193
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = #1057' - '#1095#1090#1077#1085#1080#1077' '#1090#1077#1082#1091#1097#1077#1081' '#1089#1084#1077#1085#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 4
    OnClick = btCClick
  end
  object btX: TButton
    Left = 9
    Top = 142
    Width = 193
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = #1061' - '#1095#1090#1077#1085#1080#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072' '#1089#1084#1077#1085
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 5
    OnClick = btXClick
  end
  object btK: TButton
    Left = 9
    Top = 174
    Width = 193
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = #1050' - '#1095#1090#1077#1085#1080#1077' '#1076#1083#1080#1085#1099' '#1082#1091#1089#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 6
    OnClick = btKClick
  end
  object btY: TButton
    Left = 9
    Top = 206
    Width = 193
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = 'Y - '#1095#1090#1077#1085#1080#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072' '#1082#1091#1089#1082#1086#1074
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 7
    OnClick = btYClick
  end
  object btO: TButton
    Left = 9
    Top = 238
    Width = 193
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = #1054' - '#1095#1090#1077#1085#1080#1077' '#1089#1082#1086#1088#1086#1089#1090#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 8
    OnClick = btOClick
  end
  object btN: TButton
    Left = 9
    Top = 270
    Width = 193
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = 'N - '#1095#1090#1077#1085#1080#1077' '#1091#1089#1090#1072#1074#1082#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 9
    OnClick = btNClick
  end
  object btM: TButton
    Left = 9
    Top = 302
    Width = 193
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = #1052' - '#1089#1073#1088#1086#1089' '#1090#1077#1082#1091#1097#1077#1081' '#1073#1091#1093#1090#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 10
    OnClick = btMClick
  end
  object btZ: TButton
    Left = 9
    Top = 334
    Width = 193
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = 'Z - '#1089#1073#1088#1086#1089' '#1090#1077#1082#1091#1097#1077#1081' '#1089#1084#1077#1085#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 11
    OnClick = btZClick
  end
  object btR: TButton
    Left = 9
    Top = 366
    Width = 193
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = 'R - '#1089#1073#1088#1086#1089' '#1089#1084#1077#1085#1085#1099#1093' '#1074#1099#1088#1072#1073#1086#1090#1086#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 12
    OnClick = btRClick
  end
  object btV: TButton
    Left = 33
    Top = 398
    Width = 169
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = 'V - '#1095#1090#1077#1085#1080#1077' n-'#1086#1081' '#1089#1084#1077#1085#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 13
    OnClick = btVClick
  end
  object btL: TButton
    Left = 33
    Top = 430
    Width = 169
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = 'L - '#1095#1090#1077#1085#1080#1077' n-'#1075#1086' '#1082#1091#1089#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 14
    OnClick = btLClick
  end
  object btA: TButton
    Left = 41
    Top = 462
    Width = 161
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = #1040' - '#1091#1089#1090#1072#1085#1086#1074#1082#1072' '#1072#1076#1088#1077#1089#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 15
    OnClick = btAClick
  end
  object edVN: TEdit
    Left = 9
    Top = 400
    Width = 17
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    Text = '1'
  end
  object edLN: TEdit
    Left = 9
    Top = 432
    Width = 17
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
    Text = '1'
  end
  object edNewAddr: TEdit
    Left = 9
    Top = 464
    Width = 25
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
    Text = '01'
  end
  object ed_T: TEdit
    Left = 209
    Top = 46
    Width = 65
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 19
    Text = '0'
  end
  object ed_G: TEdit
    Left = 209
    Top = 78
    Width = 65
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 20
    Text = '0'
  end
  object ed_C: TEdit
    Left = 209
    Top = 110
    Width = 65
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 21
    Text = '0'
  end
  object ed_X: TEdit
    Left = 209
    Top = 142
    Width = 65
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 22
    Text = '0'
  end
  object ed_K: TEdit
    Left = 209
    Top = 174
    Width = 65
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 23
    Text = '0'
  end
  object ed_Y: TEdit
    Left = 209
    Top = 206
    Width = 65
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 24
    Text = '0'
  end
  object ed_O: TEdit
    Left = 209
    Top = 238
    Width = 65
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 25
    Text = '0'
  end
  object ed_N: TEdit
    Left = 209
    Top = 270
    Width = 65
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 26
    Text = '0'
  end
  object ed_V: TEdit
    Left = 209
    Top = 398
    Width = 65
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 27
    Text = '0'
  end
  object ed_L: TEdit
    Left = 209
    Top = 430
    Width = 65
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 28
    Text = '0'
  end
  object ApdComPort1: TApdComPort
    ComNumber = 1
    StopBits = 2
    AutoOpen = False
    Tracing = tlOn
    TraceName = 'trace.txt'
    LogName = 'APRO.LOG'
    Left = 224
    Top = 320
  end
  object ApdDataPacket1: TApdDataPacket
    Enabled = True
    EndCond = [ecString]
    StartString = '>'
    EndString = #13
    ComPort = ApdComPort1
    PacketSize = 0
    IncludeStrings = False
    OnStringPacket = ApdDataPacket1StringPacket
    Left = 224
    Top = 352
  end
end
