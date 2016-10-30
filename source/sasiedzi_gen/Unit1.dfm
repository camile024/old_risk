object Form1: TForm1
  Left = 192
  Top = 137
  Width = 1066
  Height = 624
  Caption = 'Form1'
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
  object label15: TLabel
    Left = 168
    Top = 72
    Width = 6
    Height = 13
    Caption = '0'
  end
  object label3: TLabel
    Left = 160
    Top = 32
    Width = 28
    Height = 13
    Caption = 'label3'
  end
  object Label4: TLabel
    Left = 72
    Top = 24
    Width = 32
    Height = 13
    Caption = 'Label4'
  end
  object Label13: TLabel
    Left = 496
    Top = 24
    Width = 6
    Height = 13
    Caption = 'lll'
  end
  object Label11: TLabel
    Left = 384
    Top = 8
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Label12: TLabel
    Left = 432
    Top = 8
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Label14: TLabel
    Left = 224
    Top = 8
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Label1: TLabel
    Left = 624
    Top = 16
    Width = 34
    Height = 13
    Caption = 'Numer:'
  end
  object numer: TLabel
    Left = 680
    Top = 16
    Width = 6
    Height = 13
    Caption = '0'
  end
  object numer2: TLabel
    Left = 968
    Top = 16
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 272
    Top = 72
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object Label5: TLabel
    Left = 272
    Top = 88
    Width = 32
    Height = 13
    Caption = 'Label5'
  end
  object Panel1: TPanel
    Left = 0
    Top = 105
    Width = 1033
    Height = 484
    Align = alBottom
    TabOrder = 0
    OnDragOver = Panel1DragOver
    object Image1: TImage
      Left = 1
      Top = 1
      Width = 1048
      Height = 482
      AutoSize = True
      DragCursor = crHandPoint
      DragMode = dmAutomatic
      OnDragOver = Image1DragOver
      OnEndDrag = Image1EndDrag
      OnStartDrag = Image1StartDrag
    end
  end
  object Button1: TButton
    Left = 288
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Laduj'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 752
    Top = 16
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object Button2: TButton
    Left = 568
    Top = 32
    Width = 169
    Height = 25
    Caption = 'Od nowa'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 568
    Top = 56
    Width = 169
    Height = 25
    Caption = 'Next'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 568
    Top = 80
    Width = 169
    Height = 25
    Caption = 'Zapisz'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 360
    Top = 40
    Width = 115
    Height = 25
    Caption = 'Zaznacz morskie'
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 360
    Top = 64
    Width = 113
    Height = 25
    Caption = 'ok'
    TabOrder = 7
    OnClick = Button6Click
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 216
    Top = 56
  end
end
