object Form9: TForm9
  Left = 442
  Top = 73
  BorderStyle = bsDialog
  Caption = 'Ulepszenia'
  ClientHeight = 551
  ClientWidth = 355
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 355
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 8
      Width = 267
      Height = 21
      Caption = '(25) Zwi'#281'kszone wydatki na wojsko'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 0
      Top = 40
      Width = 353
      Height = 33
    end
    object Label4: TLabel
      Left = 40
      Top = 48
      Width = 239
      Height = 19
      Caption = 'Dostajesz punkt co godzin'#281', a nie dwie.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 280
      Top = 8
      Width = 67
      Height = 25
      Caption = 'Kup'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 510
    Width = 355
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 96
      Top = 0
      Width = 87
      Height = 33
      Caption = 'Punkty:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 200
      Top = 0
      Width = 14
      Height = 33
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 146
    Width = 355
    Height = 73
    Align = alTop
    TabOrder = 2
    object Label5: TLabel
      Left = 16
      Top = 8
      Width = 214
      Height = 21
      Caption = '(8) Powi'#281'kszone magazyny I'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 0
      Top = 40
      Width = 353
      Height = 33
    end
    object Label6: TLabel
      Left = 40
      Top = 48
      Width = 267
      Height = 19
      Caption = 'Limit max. punkt'#243'w zwi'#281'kszony z 25 do 50.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Button2: TButton
      Left = 280
      Top = 8
      Width = 67
      Height = 25
      Caption = 'Kup'
      TabOrder = 0
      OnClick = Button2Click
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 73
    Width = 355
    Height = 73
    Align = alTop
    TabOrder = 3
    object Label7: TLabel
      Left = 16
      Top = 8
      Width = 189
      Height = 21
      Caption = '(10) Grupa sabota'#380'yst'#243'w'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Bevel3: TBevel
      Left = 0
      Top = 40
      Width = 353
      Height = 33
    end
    object Label8: TLabel
      Left = 40
      Top = 48
      Width = 223
      Height = 19
      Caption = 'Mo'#380'esz neutralizowa'#263' w'#322'asne tereny.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Button3: TButton
      Left = 280
      Top = 8
      Width = 67
      Height = 25
      Caption = 'Kup'
      TabOrder = 0
      OnClick = Button3Click
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 219
    Width = 355
    Height = 73
    Align = alTop
    TabOrder = 4
    object Label9: TLabel
      Left = 16
      Top = 8
      Width = 229
      Height = 21
      Caption = '(15) Powi'#281'kszone magazyny II'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Bevel4: TBevel
      Left = 0
      Top = 40
      Width = 353
      Height = 33
    end
    object Label10: TLabel
      Left = 40
      Top = 48
      Width = 267
      Height = 19
      Caption = 'Limit max. punkt'#243'w zwi'#281'kszony z 50 do 75.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Button4: TButton
      Left = 280
      Top = 8
      Width = 67
      Height = 25
      Caption = 'Kup'
      TabOrder = 0
      OnClick = Button4Click
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 292
    Width = 355
    Height = 73
    Align = alTop
    TabOrder = 5
    object Label11: TLabel
      Left = 16
      Top = 8
      Width = 138
      Height = 21
      Caption = '(5) Oszcz'#281'dno'#347#263' I'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Bevel5: TBevel
      Left = 0
      Top = 40
      Width = 353
      Height = 33
    end
    object Label12: TLabel
      Left = 40
      Top = 48
      Width = 312
      Height = 19
      Caption = 'Szansa na znalezienie dodatkowej amunicji (+1 pkt)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Button5: TButton
      Left = 280
      Top = 8
      Width = 67
      Height = 25
      Caption = 'Kup'
      TabOrder = 0
      OnClick = Button5Click
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 365
    Width = 355
    Height = 73
    Align = alTop
    TabOrder = 6
    object Label13: TLabel
      Left = 16
      Top = 8
      Width = 144
      Height = 21
      Caption = '(8) Oszcz'#281'dno'#347#263' II'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Bevel6: TBevel
      Left = 0
      Top = 40
      Width = 353
      Height = 33
    end
    object Label14: TLabel
      Left = 40
      Top = 48
      Width = 312
      Height = 19
      Caption = 'Szansa na znalezienie dodatkowej amunicji (+1 pkt)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Button6: TButton
      Left = 280
      Top = 8
      Width = 67
      Height = 25
      Caption = 'Kup'
      TabOrder = 0
      OnClick = Button6Click
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 438
    Width = 355
    Height = 73
    Align = alTop
    TabOrder = 7
    object Label15: TLabel
      Left = 16
      Top = 8
      Width = 170
      Height = 21
      Caption = '(5) Wojsko zawodowe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Bevel7: TBevel
      Left = 0
      Top = 40
      Width = 353
      Height = 33
    end
    object Label16: TLabel
      Left = 40
      Top = 48
      Width = 267
      Height = 19
      Caption = 'Mniejsza szansa na niepowodzenie w walce.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Button7: TButton
      Left = 280
      Top = 8
      Width = 67
      Height = 25
      Caption = 'Kup'
      TabOrder = 0
      OnClick = Button7Click
    end
  end
  object Memo1: TMemo
    Left = 40
    Top = 528
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 8
    Visible = False
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 248
    Top = 224
  end
  object IdFTP1: TIdFTP
    AutoLogin = True
    Host = '//GITHUB_COMMENTED_OUT'
    Passive = True
    Password = '//GITHUB_COMMENTED_OUT'
    Username = '//GITHUB_COMMENTED_OUT'
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 656
    Top = 32
  end
  object http1: TIdHTTP
    AuthRetries = 0
    AuthProxyRetries = 0
    AllowCookies = True
    RedirectMaximum = 3
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
    Left = 384
    Top = 32
  end
end
