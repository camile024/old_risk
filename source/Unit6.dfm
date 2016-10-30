object ladowanie: Tladowanie
  Left = 457
  Top = 252
  BorderStyle = bsNone
  Caption = 'ladowanie'
  ClientHeight = 148
  ClientWidth = 319
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = cl3DLight
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 40
    Width = 245
    Height = 55
    Caption = #321'adowanie...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -48
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Shape1: TShape
    Left = -7
    Top = 0
    Width = 23
    Height = 153
    Brush.Color = clMaroon
    Brush.Style = bsDiagCross
    Pen.Style = psDashDot
  end
  object Shape2: TShape
    Left = 8
    Top = -5
    Width = 313
    Height = 22
    Brush.Color = clMaroon
    Brush.Style = bsDiagCross
    Pen.Style = psDashDot
  end
  object Shape3: TShape
    Left = 6
    Top = 131
    Width = 313
    Height = 22
    Brush.Color = clMaroon
    Brush.Style = bsDiagCross
    Pen.Style = psDashDot
  end
  object Shape4: TShape
    Left = 304
    Top = -5
    Width = 16
    Height = 153
    Brush.Color = clMaroon
    Brush.Style = bsDiagCross
    Pen.Style = psDashDot
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 40
    Top = 96
  end
end
