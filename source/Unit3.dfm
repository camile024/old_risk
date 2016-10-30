object Form3: TForm3
  Left = 270
  Top = 231
  BorderStyle = bsToolWindow
  Caption = 'Informacja'
  ClientHeight = 100
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 64
    Top = 8
    Width = 393
    Height = 89
  end
  object Label1: TLabel
    Left = 72
    Top = 16
    Width = 80
    Height = 31
    Caption = 'Numer:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object numer: TLabel
    Left = 152
    Top = 16
    Width = 7
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 72
    Top = 56
    Width = 114
    Height = 31
    Caption = 'Posiadacz:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object posiadacz: TLabel
    Left = 192
    Top = 56
    Width = 7
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 592
    Top = 104
    Width = 32
    Height = 13
    Caption = 'Label2'
    Visible = False
  end
  object Label4: TLabel
    Left = 640
    Top = 104
    Width = 32
    Height = 13
    Caption = 'Label4'
    Visible = False
  end
  object Label5: TLabel
    Left = 696
    Top = 104
    Width = 32
    Height = 13
    Caption = 'Label5'
    Visible = False
  end
  object sasi: TLabel
    Left = 200
    Top = 8
    Width = 6
    Height = 13
    Caption = '0'
    Visible = False
  end
  object Button1: TButton
    Left = 464
    Top = 8
    Width = 281
    Height = 33
    Caption = 'Zaatakuj!'
    Enabled = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 320
    Top = 56
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
    Visible = False
  end
  object Memo2: TMemo
    Left = 336
    Top = 80
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo2')
    TabOrder = 3
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 8
    Width = 57
    Height = 89
    TabOrder = 4
  end
  object Button2: TButton
    Left = 464
    Top = 40
    Width = 281
    Height = 33
    Caption = 'Neutralizuj'
    Enabled = False
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 464
    Top = 72
    Width = 281
    Height = 25
    Caption = 'Zamknij'
    TabOrder = 1
    OnClick = Button3Click
  end
  object Memo3: TMemo
    Left = 400
    Top = 104
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo3')
    TabOrder = 6
    Visible = False
  end
  object IdHTTP1: TIdHTTP
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
    Left = 256
    Top = 16
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
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 80
  end
end
