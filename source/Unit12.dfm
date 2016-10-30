object sound: Tsound
  Left = 192
  Top = 122
  Width = 301
  Height = 207
  Caption = 'Sound'
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
    Left = 96
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 176
    Top = 16
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object music: TMediaPlayer
    Left = 16
    Top = 32
    Width = 253
    Height = 30
    TabOrder = 0
  end
  object alarm: TMediaPlayer
    Left = 16
    Top = 72
    Width = 253
    Height = 30
    TabOrder = 1
  end
  object game: TMediaPlayer
    Left = 16
    Top = 112
    Width = 253
    Height = 30
    TabOrder = 2
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 48
    Top = 16
  end
  object Timer2: TTimer
    Interval = 1
    OnTimer = Timer2Timer
    Left = 240
    Top = 16
  end
end
