object Form1: TForm1
  Left = 422
  Top = 136
  BorderStyle = bsToolWindow
  Caption = 'Risk 1.0'
  ClientHeight = 493
  ClientWidth = 452
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
  object Image1: TImage
    Left = 0
    Top = -104
    Width = 452
    Height = 601
    Stretch = True
  end
  object Bevel1: TBevel
    Left = 8
    Top = 384
    Width = 433
    Height = 89
  end
  object Memo1: TMemo
    Left = 656
    Top = 224
    Width = 169
    Height = 89
    Color = clBtnFace
    Ctl3D = True
    Lines.Strings = (
      'Memo1')
    ParentCtl3D = False
    TabOrder = 0
    Visible = False
    WordWrap = False
  end
  object Memo2: TMemo
    Left = 392
    Top = 304
    Width = 473
    Height = 89
    Lines.Strings = (
      'Memo2')
    TabOrder = 1
    Visible = False
    WordWrap = False
  end
  object Memo3: TMemo
    Left = 16
    Top = 392
    Width = 417
    Height = 73
    Cursor = crHelp
    BiDiMode = bdLeftToRight
    Ctl3D = False
    DragMode = dmAutomatic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Lines.Strings = (
      'Brak wiadomo'#347'ci dnia lub nie mo'#380'na po'#322#261'czy'#263' si'#281' z '
      'serwerem. Je'#380'eli nie jeste'#347' w stanie si'#281' zalogowa'#263' - '
      'sprawd'#378' po'#322#261'czenie internetowe.'
      '')
    OEMConvert = True
    ParentBiDiMode = False
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    WantReturns = False
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 474
    Width = 452
    Height = 19
    Panels = <>
    SimplePanel = True
    SimpleText = 'Cupik corp. wszystkie prawa wystrzy'#380'one.'
  end
  object Memo4: TMemo
    Left = 688
    Top = 232
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo4')
    TabOrder = 4
    Visible = False
  end
  object Panel1: TPanel
    Left = 8
    Top = 240
    Width = 273
    Height = 137
    TabOrder = 5
    OnClick = Panel1Click
    object Label2: TLabel
      Left = 8
      Top = 52
      Width = 32
      Height = 13
      Caption = 'Has'#322'o:'
    end
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 34
      Height = 13
      Caption = 'E-mail: '
    end
    object Edit1: TEdit
      Left = 8
      Top = 28
      Width = 209
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 8
      Top = 72
      Width = 209
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      PasswordChar = #8226
      TabOrder = 1
    end
    object Button1: TButton
      Left = 8
      Top = 104
      Width = 209
      Height = 25
      Caption = 'Zaloguj'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 288
    Top = 240
    Width = 153
    Height = 137
    TabOrder = 6
    object CheckBox2: TCheckBox
      Left = 8
      Top = 32
      Width = 209
      Height = 17
      Caption = 'Zapami'#281'taj has'#322'o'
      TabOrder = 0
    end
    object CheckBox3: TCheckBox
      Left = 8
      Top = 56
      Width = 97
      Height = 17
      Caption = 'Muzyka'
      TabOrder = 1
      OnClick = CheckBox3Click
    end
    object CheckBox4: TCheckBox
      Left = 8
      Top = 80
      Width = 137
      Height = 17
      Caption = 'D'#378'wi'#281'ki alarm'#243'w'
      Enabled = False
      TabOrder = 2
    end
    object CheckBox5: TCheckBox
      Left = 8
      Top = 104
      Width = 97
      Height = 17
      Caption = 'D'#378'wi'#281'ki gry'
      Enabled = False
      TabOrder = 3
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 8
      Width = 105
      Height = 17
      Caption = 'Zapami'#281'taj e-mail'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
  end
  object hTTP: TIdHTTP
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
    Left = 120
    Top = 24
  end
  object Client: TClientSocket
    Active = False
    Address = 'risklubliniec.no-ip.org'
    ClientType = ctNonBlocking
    Port = 1628
    OnDisconnect = ClientDisconnect
    OnError = ClientError
    Left = 256
    Top = 88
  end
  object IdIPWatch1: TIdIPWatch
    Active = False
    HistoryFilename = 'iphist.dat'
    Left = 288
    Top = 88
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 15000
    OnTimer = Timer1Timer
    Left = 176
    Top = 24
  end
end
