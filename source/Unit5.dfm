object Form5: TForm5
  Left = 212
  Top = 179
  BorderStyle = bsDialog
  Caption = 'Start'
  ClientHeight = 464
  ClientWidth = 854
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 8
    Width = 779
    Height = 51
    Caption = 'Wybierz nazw'#281' swojego pa'#324'stwa oraz kolor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -44
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 24
    Top = 400
    Width = 297
    Height = 41
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Times New Roman'
    Font.Style = []
    MaxLength = 20
    ParentFont = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 448
    Top = 400
    Width = 401
    Height = 41
    Caption = 'Zatwierd'#378
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 328
    Top = 400
    Width = 113
    Height = 41
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 32
    Top = 72
    Width = 185
    Height = 65
    Color = clMaroon
    TabOrder = 3
    object RadioButton1: TRadioButton
      Left = 88
      Top = 24
      Width = 25
      Height = 25
      TabOrder = 0
      OnClick = RadioButton1Click
    end
  end
  object Panel3: TPanel
    Left = 416
    Top = 72
    Width = 185
    Height = 65
    Color = clGreen
    TabOrder = 4
    object RadioButton2: TRadioButton
      Left = 88
      Top = 24
      Width = 25
      Height = 25
      TabOrder = 0
      OnClick = RadioButton2Click
    end
  end
  object Panel4: TPanel
    Left = 32
    Top = 144
    Width = 185
    Height = 65
    Color = clOlive
    TabOrder = 5
    object RadioButton3: TRadioButton
      Left = 88
      Top = 24
      Width = 25
      Height = 25
      TabOrder = 0
      OnClick = RadioButton3Click
    end
  end
  object Panel5: TPanel
    Left = 608
    Top = 144
    Width = 185
    Height = 65
    Color = clNavy
    TabOrder = 6
    object RadioButton4: TRadioButton
      Left = 88
      Top = 24
      Width = 25
      Height = 25
      TabOrder = 0
      OnClick = RadioButton4Click
    end
  end
  object Panel6: TPanel
    Left = 32
    Top = 216
    Width = 185
    Height = 65
    Color = clPurple
    TabOrder = 7
    object RadioButton5: TRadioButton
      Left = 88
      Top = 16
      Width = 25
      Height = 25
      TabOrder = 0
      OnClick = RadioButton5Click
    end
  end
  object Panel7: TPanel
    Left = 320
    Top = 288
    Width = 185
    Height = 57
    Color = clTeal
    TabOrder = 8
    object RadioButton6: TRadioButton
      Left = 88
      Top = 16
      Width = 25
      Height = 25
      TabOrder = 0
      OnClick = RadioButton6Click
    end
  end
  object Panel8: TPanel
    Left = 224
    Top = 72
    Width = 185
    Height = 65
    Color = clGray
    TabOrder = 9
    object RadioButton7: TRadioButton
      Left = 88
      Top = 24
      Width = 25
      Height = 25
      TabOrder = 0
      OnClick = RadioButton7Click
    end
  end
  object Panel9: TPanel
    Left = 608
    Top = 72
    Width = 185
    Height = 65
    Color = clRed
    TabOrder = 10
    object RadioButton8: TRadioButton
      Left = 88
      Top = 24
      Width = 25
      Height = 25
      TabOrder = 0
      OnClick = RadioButton8Click
    end
  end
  object Panel10: TPanel
    Left = 224
    Top = 144
    Width = 185
    Height = 65
    Color = clLime
    TabOrder = 11
    object RadioButton9: TRadioButton
      Left = 88
      Top = 24
      Width = 25
      Height = 25
      TabOrder = 0
      OnClick = RadioButton9Click
    end
  end
  object Panel11: TPanel
    Left = 416
    Top = 144
    Width = 185
    Height = 65
    Color = clYellow
    TabOrder = 12
    object RadioButton10: TRadioButton
      Left = 88
      Top = 24
      Width = 25
      Height = 25
      TabOrder = 0
      OnClick = RadioButton10Click
    end
  end
  object Panel12: TPanel
    Left = 224
    Top = 216
    Width = 185
    Height = 65
    Color = clBlue
    TabOrder = 13
    object RadioButton11: TRadioButton
      Left = 88
      Top = 16
      Width = 25
      Height = 25
      TabOrder = 0
      OnClick = RadioButton11Click
    end
  end
  object Panel13: TPanel
    Left = 608
    Top = 216
    Width = 185
    Height = 65
    Color = clFuchsia
    TabOrder = 14
    object RadioButton12: TRadioButton
      Left = 88
      Top = 16
      Width = 25
      Height = 25
      TabOrder = 0
      OnClick = RadioButton12Click
    end
  end
  object Panel14: TPanel
    Left = 416
    Top = 216
    Width = 185
    Height = 65
    Color = clAqua
    TabOrder = 15
    object RadioButton13: TRadioButton
      Left = 88
      Top = 16
      Width = 25
      Height = 25
      TabOrder = 0
      OnClick = RadioButton13Click
    end
  end
  object Memo1: TMemo
    Left = 80
    Top = 288
    Width = 185
    Height = 89
    TabOrder = 16
    Visible = False
  end
  object Memo2: TMemo
    Left = 512
    Top = 288
    Width = 185
    Height = 89
    TabOrder = 17
    Visible = False
  end
  object Memo3: TMemo
    Left = 704
    Top = 288
    Width = 185
    Height = 89
    TabOrder = 18
    Visible = False
  end
  object IdFTP1: TIdFTP
    AutoLogin = True
    Host = '//GITHUB_COMMENTED_OUT'
    Passive = True
    Password = '//GITHUB_COMMENTED_OUT'
    Username = '//GITHUB_COMMENTED_OUT'
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 528
    Top = 296
  end
  object HTTP: TIdHTTP
    AuthRetries = 0
    AuthProxyRetries = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentRangeInstanceLength = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 520
    Top = 344
  end
end
