object Form1: TForm1
  Left = 376
  Top = 216
  Width = 743
  Height = 401
  Caption = 'Risk server'
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
    Left = 24
    Top = 32
    Width = 49
    Height = 13
    Caption = 'W'#322#261'czony'
    Color = clBtnFace
    ParentColor = False
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 54
    Height = 13
    Caption = 'Wy'#322#261'czony'
    Color = clRed
    ParentColor = False
  end
  object Label3: TLabel
    Left = 8
    Top = 168
    Width = 23
    Height = 13
    Caption = 'Logi:'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 16
    Width = 457
    Height = 137
  end
  object Bevel2: TBevel
    Left = 8
    Top = 184
    Width = 457
    Height = 137
  end
  object Label4: TLabel
    Left = 248
    Top = 24
    Width = 54
    Height = 13
    Caption = 'Obecne IP:'
  end
  object Label5: TLabel
    Left = 272
    Top = 40
    Width = 89
    Height = 20
    Caption = 'brak danych'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 256
    Top = 80
    Width = 61
    Height = 13
    Caption = 'Obecny port:'
  end
  object Label7: TLabel
    Left = 272
    Top = 104
    Width = 89
    Height = 20
    Caption = 'brak danych'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 32
    Top = 328
    Width = 50
    Height = 21
    Caption = 'Label8'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 16
    Top = 96
    Width = 75
    Height = 25
    Caption = 'W'#322#261'cz'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Wy'#322#261'cz'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 16
    Top = 192
    Width = 441
    Height = 121
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object Button3: TButton
    Left = 120
    Top = 48
    Width = 121
    Height = 25
    Caption = 'Zmie'#324' IP'
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 120
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '192.168.1.1'
  end
  object Edit2: TEdit
    Left = 120
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '162'
  end
  object Button4: TButton
    Left = 120
    Top = 120
    Width = 121
    Height = 25
    Caption = 'Zmie'#324' port'
    TabOrder = 6
  end
  object Memo2: TMemo
    Left = 432
    Top = 192
    Width = 369
    Height = 89
    Lines.Strings = (
      'Memo2')
    TabOrder = 7
    Visible = False
  end
  object Memo3: TMemo
    Left = 296
    Top = 200
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo3')
    TabOrder = 8
    Visible = False
  end
  object list: TListBox
    Left = 472
    Top = 16
    Width = 169
    Height = 305
    ItemHeight = 13
    TabOrder = 9
  end
  object list2: TListBox
    Left = 648
    Top = 16
    Width = 73
    Height = 305
    ItemHeight = 13
    TabOrder = 10
  end
  object Button5: TButton
    Left = 264
    Top = 160
    Width = 75
    Height = 17
    Caption = 'Zapisz'
    TabOrder = 11
    OnClick = Button5Click
  end
  object Edit3: TEdit
    Left = 176
    Top = 160
    Width = 89
    Height = 21
    TabOrder = 12
  end
  object Button6: TButton
    Left = 344
    Top = 160
    Width = 75
    Height = 17
    Caption = 'Czysc'
    TabOrder = 13
    OnClick = Button6Click
  end
  object Memo4: TMemo
    Left = 280
    Top = 200
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo4')
    TabOrder = 14
    Visible = False
  end
  object Memo5: TMemo
    Left = 16
    Top = 192
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo5')
    TabOrder = 15
    Visible = False
  end
  object Memo6: TMemo
    Left = 80
    Top = 192
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo6')
    TabOrder = 16
    Visible = False
  end
  object Memo7: TMemo
    Left = 8
    Top = 208
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo7')
    TabOrder = 17
    Visible = False
  end
  object Memo8: TMemo
    Left = 16
    Top = 208
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo7')
    TabOrder = 18
    Visible = False
  end
  object Memo9: TMemo
    Left = 16
    Top = 216
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo7')
    TabOrder = 19
    Visible = False
  end
  object Memo10: TMemo
    Left = 24
    Top = 224
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo7')
    TabOrder = 20
    Visible = False
  end
  object Memo11: TMemo
    Left = 16
    Top = 208
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo7')
    TabOrder = 21
    Visible = False
  end
  object mapy1: TMemo
    Left = 432
    Top = 8
    Width = 185
    Height = 89
    Lines.Strings = (
      'mapy1')
    TabOrder = 22
    Visible = False
  end
  object mapy2: TMemo
    Left = 432
    Top = 32
    Width = 185
    Height = 89
    Lines.Strings = (
      'mapy2')
    TabOrder = 23
    Visible = False
  end
  object mapy3: TMemo
    Left = 432
    Top = 56
    Width = 185
    Height = 89
    Lines.Strings = (
      'mapy3')
    TabOrder = 24
    Visible = False
  end
  object mapy4: TMemo
    Left = 432
    Top = 80
    Width = 185
    Height = 89
    Lines.Strings = (
      'mapy4')
    TabOrder = 25
    Visible = False
  end
  object mapy5: TMemo
    Left = 432
    Top = 104
    Width = 185
    Height = 89
    Lines.Strings = (
      'mapy5')
    TabOrder = 26
    Visible = False
  end
  object mapya: TMemo
    Left = 432
    Top = 128
    Width = 185
    Height = 89
    Lines.Strings = (
      'mapya')
    TabOrder = 27
    Visible = False
  end
  object ServerSocket1: TServerSocket
    Active = False
    Port = 162
    ServerType = stNonBlocking
    OnAccept = ServerSocket1Accept
    OnClientDisconnect = ServerSocket1ClientDisconnect
    OnClientRead = ServerSocket1ClientRead
    Left = 72
    Top = 8
  end
  object FTP1: TIdFTP
    AutoLogin = True
    Host = '//GITHUB_COMMENTED_OUT'
    Password = '//GITHUB_COMMENTED_OUT'
    Username = '//GITHUB_COMMENTED_OUT'
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 352
    Top = 8
  end
  object HTTP1: TIdHTTP
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
    Left = 384
    Top = 8
  end
  object Timer1: TTimer
    Interval = 30000
    OnTimer = Timer1Timer
    Left = 208
    Top = 8
  end
  object IdTime1: TIdTime
    BaseDate = 2.000000000000000000
    Host = 'ntp2.tp.pl'
    Left = 112
    Top = 328
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 160
    Top = 336
  end
end
