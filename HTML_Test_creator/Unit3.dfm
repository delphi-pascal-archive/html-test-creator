object Form3: TForm3
  Left = 198
  Top = 434
  BorderStyle = bsDialog
  ClientHeight = 201
  ClientWidth = 353
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
    Left = 56
    Top = 14
    Width = 289
    Height = 2
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 44
    Height = 13
    Caption = ' '#1054#1090#1074#1077#1090' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel2: TBevel
    Left = 104
    Top = 86
    Width = 241
    Height = 2
  end
  object Label2: TLabel
    Left = 8
    Top = 80
    Width = 95
    Height = 13
    Caption = ' '#1041#1072#1083#1099' '#1079#1072' '#1086#1090#1074#1077#1090' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel3: TBevel
    Left = 8
    Top = 158
    Width = 337
    Height = 2
  end
  object Label3: TLabel
    Left = 8
    Top = 96
    Width = 337
    Height = 26
    Caption = 
      #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1079#1072#1095#1080#1089#1083#1103#1077#1084#1099#1093' '#1080#1083#1080' '#1074#1099#1095#1080#1090#1072#1077#1084#1099#1093' '#1073#1072#1083#1086#1074' '#1079#1072' '#1101#1090#1086#1090' '#1086#1090#1074#1077 +
      #1090'.'
    WordWrap = True
  end
  object Edit1: TEdit
    Left = 8
    Top = 24
    Width = 337
    Height = 21
    Color = clWhite
    TabOrder = 0
  end
  object Button1: TButton
    Left = 264
    Top = 168
    Width = 75
    Height = 25
    Caption = #1055#1088#1080#1085#1103#1090#1100
    Default = True
    TabOrder = 1
    OnClick = Button1Click
  end
  object CheckBox1: TCheckBox
    Left = 16
    Top = 56
    Width = 329
    Height = 17
    Caption = #1069#1090#1086#1090' '#1086#1090#1074#1077#1090' '#1087#1088#1072#1074#1080#1083#1100#1085#1099#1081
    TabOrder = 2
    OnClick = CheckBox1Click
  end
  object BitBtn1: TBitBtn
    Left = 184
    Top = 168
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object Edit2: TEdit
    Left = 16
    Top = 128
    Width = 89
    Height = 21
    Color = clWhite
    TabOrder = 4
    Text = '0'
  end
end
