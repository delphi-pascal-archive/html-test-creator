object Form2: TForm2
  Left = 631
  Top = 166
  BorderStyle = bsDialog
  ClientHeight = 305
  ClientWidth = 337
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 96
    Top = 135
    Width = 233
    Height = 2
  end
  object Label1: TLabel
    Left = 8
    Top = 128
    Width = 84
    Height = 13
    Caption = ' '#1058#1080#1087' '#1074#1086#1087#1088#1086#1089#1072' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel2: TBevel
    Left = 8
    Top = 207
    Width = 321
    Height = 2
  end
  object Bevel3: TBevel
    Left = 8
    Top = 255
    Width = 321
    Height = 2
  end
  object Bevel4: TBevel
    Left = 72
    Top = 15
    Width = 257
    Height = 2
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 48
    Height = 13
    Caption = ' '#1042#1086#1087#1088#1086#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 248
    Top = 272
    Width = 75
    Height = 25
    Caption = #1055#1088#1080#1085#1103#1090#1100
    Default = True
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 24
    Width = 321
    Height = 97
    Color = clWhite
    TabOrder = 1
  end
  object RadioButton1: TRadioButton
    Left = 16
    Top = 152
    Width = 315
    Height = 17
    Caption = #1054#1076#1080#1085' '#1074#1072#1088#1080#1072#1085#1090' '#1086#1090#1074#1077#1090#1072
    Checked = True
    TabOrder = 2
    TabStop = True
  end
  object RadioButton2: TRadioButton
    Left = 16
    Top = 176
    Width = 315
    Height = 17
    Caption = #1053#1077#1089#1082#1086#1083#1100#1082#1086' '#1074#1072#1088#1080#1072#1085#1090#1086#1074' '#1086#1090#1074#1077#1090#1072
    TabOrder = 3
  end
  object CheckBox1: TCheckBox
    Left = 16
    Top = 224
    Width = 313
    Height = 17
    Caption = #1043#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100' '#1101#1090#1086#1090' '#1074#1086#1087#1088#1086#1089
    TabOrder = 4
  end
  object Button1: TButton
    Left = 168
    Top = 272
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 5
    OnClick = Button1Click
  end
end
