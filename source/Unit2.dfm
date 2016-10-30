object Form2: TForm2
  Left = 92
  Top = 54
  BorderStyle = bsDialog
  Caption = 'Risk 1.0'
  ClientHeight = 656
  ClientWidth = 1112
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 52
    Height = 13
    Caption = 'Tw'#243'j kolor:'
  end
  object Label2: TLabel
    Left = 112
    Top = 8
    Width = 75
    Height = 13
    Caption = 'Twoje pa'#324'stwo:'
  end
  object panstwo: TLabel
    Left = 112
    Top = 24
    Width = 33
    Height = 17
    Caption = 'brak2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 272
    Top = 8
    Width = 70
    Height = 13
    Caption = 'Punkty/tereny:'
  end
  object punkty: TLabel
    Left = 280
    Top = 24
    Width = 9
    Height = 21
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 208
    Top = 48
    Width = 38
    Height = 13
    Caption = 'Label11'
    Visible = False
  end
  object Label12: TLabel
    Left = 256
    Top = 48
    Width = 38
    Height = 13
    Caption = 'Label12'
    Visible = False
  end
  object Label13: TLabel
    Left = 120
    Top = 48
    Width = 38
    Height = 13
    Caption = 'Label13'
    Visible = False
  end
  object Label14: TLabel
    Left = 24
    Top = 8
    Width = 6
    Height = 13
    Caption = '0'
    Visible = False
  end
  object Label16: TLabel
    Left = 936
    Top = 40
    Width = 5
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 304
    Top = 24
    Width = 7
    Height = 27
    Caption = '/'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object tereny: TLabel
    Left = 320
    Top = 24
    Width = 9
    Height = 21
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object map: TLabel
    Left = 896
    Top = 16
    Width = 22
    Height = 13
    Caption = 'false'
    Visible = False
  end
  object Label17: TLabel
    Left = 216
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Label17'
    Visible = False
  end
  object Button6: TButton
    Left = 624
    Top = 8
    Width = 105
    Height = 25
    Caption = 'Shoutbox'
    TabOrder = 6
    OnClick = Button6Click
  end
  object Button2: TButton
    Left = 728
    Top = 8
    Width = 105
    Height = 25
    Caption = 'Screenshot'
    TabOrder = 15
    OnClick = Button2Click
  end
  object Button8: TButton
    Left = 624
    Top = 32
    Width = 105
    Height = 25
    Caption = 'Ulepszenia'
    TabOrder = 12
    OnClick = Button8Click
  end
  object Button5: TButton
    Left = 584
    Top = 8
    Width = 33
    Height = 49
    Caption = 'O'
    TabOrder = 5
    OnClick = Button5Click
    OnKeyDown = Button5KeyDown
  end
  object kolor: TPanel
    Left = 64
    Top = 8
    Width = 41
    Height = 41
    TabOrder = 0
    OnClick = kolorClick
  end
  object Button1: TButton
    Left = 352
    Top = 8
    Width = 201
    Height = 49
    Caption = 'Mapa / Od'#347'wie'#380' map'#281
    TabOrder = 1
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 64
    Width = 1113
    Height = 577
    Color = clGrayText
    TabOrder = 2
    OnDragOver = Panel1DragOver
    object Image1: TImage
      Left = 1
      Top = 9
      Width = 1064
      Height = 576
      AutoSize = True
      DragCursor = crCross
      DragMode = dmAutomatic
      OnDragOver = Image1DragOver
      OnEndDrag = Image1EndDrag
      OnStartDrag = Image1StartDrag
    end
    object Label7: TLabel
      Left = 16
      Top = 340
      Width = 32
      Height = 13
      Caption = 'Label7'
      Visible = False
    end
    object Label3: TLabel
      Left = 8
      Top = 336
      Width = 32
      Height = 13
      Caption = 'Label3'
      Visible = False
    end
    object Label8: TLabel
      Left = 48
      Top = 340
      Width = 32
      Height = 13
      Caption = 'Label8'
      Visible = False
    end
    object Label4: TLabel
      Left = 56
      Top = 336
      Width = 32
      Height = 13
      Caption = 'Label4'
      Visible = False
    end
    object Label5: TLabel
      Left = 136
      Top = 336
      Width = 6
      Height = 13
      Caption = '1'
      Visible = False
    end
    object Label6: TLabel
      Left = 160
      Top = 336
      Width = 6
      Height = 13
      Caption = '1'
      Visible = False
    end
    object Label15: TLabel
      Left = 40
      Top = 344
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object mapy2: TMemo
      Left = 8
      Top = 40
      Width = 185
      Height = 89
      Lines.Strings = (
        'mapy')
      TabOrder = 0
      Visible = False
    end
    object mapy1: TMemo
      Left = 8
      Top = 16
      Width = 185
      Height = 89
      Lines.Strings = (
        'mapy')
      TabOrder = 1
      Visible = False
    end
    object mapy3: TMemo
      Left = 8
      Top = 112
      Width = 185
      Height = 89
      Lines.Strings = (
        'mapy')
      TabOrder = 2
      Visible = False
    end
    object mapy4: TMemo
      Left = 8
      Top = 144
      Width = 185
      Height = 89
      Lines.Strings = (
        'mapy')
      TabOrder = 3
      Visible = False
    end
    object mapy5: TMemo
      Left = 8
      Top = 168
      Width = 185
      Height = 89
      Lines.Strings = (
        'mapy')
      TabOrder = 4
      Visible = False
    end
    object mapya: TMemo
      Left = 8
      Top = 200
      Width = 185
      Height = 89
      Lines.Strings = (
        'mapy')
      TabOrder = 5
      Visible = False
    end
  end
  object Button3: TButton
    Left = 552
    Top = 8
    Width = 33
    Height = 25
    Caption = '+'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 552
    Top = 32
    Width = 33
    Height = 25
    Caption = '-'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Memo1: TMemo
    Left = 760
    Top = 96
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 7
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 936
    Top = 8
    Width = 169
    Height = 25
    Caption = 'Przegl'#261'darka teren'#243'w'
    TabOrder = 8
    OnClick = BitBtn1Click
    Kind = bkRetry
  end
  object Memo2: TMemo
    Left = 232
    Top = 160
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo2')
    TabOrder = 9
    Visible = False
  end
  object Memo3: TMemo
    Left = 936
    Top = 48
    Width = 185
    Height = 89
    TabOrder = 10
    Visible = False
  end
  object Memo4: TMemo
    Left = 944
    Top = 128
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo4')
    TabOrder = 11
    Visible = False
  end
  object Button9: TButton
    Left = 728
    Top = 32
    Width = 105
    Height = 25
    Caption = 'Osi'#261'gni'#281'cia'
    Enabled = False
    TabOrder = 13
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 0
    Top = 0
    Width = 17
    Height = 17
    TabOrder = 14
    OnClick = Button10Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 24
    Top = 48
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
  object IdTime1: TIdTime
    BaseDate = 2.000000000000000000
    Host = 'ntp2.tp.pl'
    Left = 832
    Top = 24
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 872
    Top = 24
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
  object Timer3: TTimer
    OnTimer = Timer3Timer
    Left = 64
    Top = 48
  end
end
