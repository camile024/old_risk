unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,
  IdTCPConnection, IdTCPClient, IdHTTP, shellapi, OleCtrls, SHDocVw_TLB,
  ComCtrls, ScktComp, IdIPWatch, IdBaseComponent, IdComponent, jpeg;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    hTTP: TIdHTTP;
    Memo2: TMemo;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Bevel1: TBevel;
    Memo3: TMemo;
    StatusBar1: TStatusBar;
    Client: TClientSocket;
    Memo4: TMemo;
    IdIPWatch1: TIdIPWatch;
    Timer1: TTimer;
    Panel1: TPanel;
    Panel2: TPanel;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ClientError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ClientDisconnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure Timer1Timer(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit5, Unit6, Unit9, Unit4, Unit12;

{$R *.dfm}
var
sver:integer;

const
 ver=001;

procedure TForm1.Button1Click(Sender: TObject);
var
i,w,j,z,czas:integer;
x:string;
wgrze,nowe:boolean;
begin
nowe:=true;
ladowanie.show;
wgrze:=false;
ladowanie.refresh;
w:=0;
if (checkbox1.checked) and (checkbox2.checked) then begin
  memo1.lines.clear;
  memo1.lines.add('3');
  memo1.Lines.Add(edit1.text);
  memo1.lines.add(edit2.text);
end else if checkbox1.Checked then begin
  memo1.lines.clear;
  memo1.lines.add('1');
  memo1.Lines.Add(edit1.text);
end else if checkbox2.Checked then begin
  memo1.lines.clear;
  memo1.lines.add('2');
  memo1.Lines.Add(edit2.text);
end else begin
  memo1.lines.Clear;
  memo1.lines.add('0');
end;
if checkbox3.checked then memo1.lines.add('1') else memo1.lines.add('0');
memo1.lines.savetofile('logdata.txt');
memo1.lines.Text:=http.Get('http://polish-destroyers.cba.pl/risk/ver.txt');
sver:=strtoint(memo1.Lines.strings[0]);
if sver<>ver then begin
  ladowanie.hide;
  showmessage('Posiadasz star¹ wersjê gry. Przejdziesz teraz na stronê umo¿liwiaj¹c¹ pobranie nowej wersji.');
  ShellExecute(handle, 'open', pchar(memo1.Lines.strings[1]), nil, nil, sw_shownormal);
  application.terminate;
end;

client.Socket.SendText('ACCCOLORS');
sleep(100);
czas:=0;
memo1.Clear;
repeat
memo1.lines.Text:=client.Socket.ReceiveText;
sleep(100);
czas:=czas+1;
if czas=60 then begin
  showmessage('Up³yn¹³ limit czasu ¿¹dania.');
  halt;
  application.terminate;
end;
until
memo1.Lines.strings[0]<>'';

for i:=0 to memo1.Lines.Count+1 do begin
  x:=memo1.Lines.Strings[i];
    if x='clMaroon' then form5.Panel2.visible:=false;
    if x='clOlive' then form5.Panel4.visible:=false;
    if x='clPurple' then form5.Panel6.visible:=false;
    if x='clGray' then form5.panel8.visible:=false;
    if x='clLime' then form5.panel10.visible:=false;
    if x='clBlue' then form5.Panel12.visible:=false;
    if x='clGreen' then form5.Panel3.visible:=false;
    if x='clYellow' then form5.panel11.visible:=false;
    if x='clAqua' then form5.panel14.visible:=false;
    if x='clRed' then form5.panel9.visible:=false;
    if x='clNavy' then form5.Panel5.visible:=false;
    if x='clFuchsia' then form5.panel13.visible:=false;
    if x='clTeal' then form5.panel7.visible:=false;
end;

memo2.clear;
client.Socket.SendText('ACCDATA');
sleep(100);
czas:=0;
repeat
memo2.lines.Text:=client.Socket.ReceiveText;
sleep(100);
czas:=czas+1;
if czas=60 then begin
  showmessage('Up³yn¹³ limit czasu ¿¹dania.');
  halt;
  application.terminate;
end;
until
memo2.Lines.Strings[0]<>'';

for i:=0 to memo2.Lines.Count-1 do
  if memo2.Lines.Strings[i]=edit1.Text then
    if memo2.Lines.strings[i+1]=edit2.Text then begin
      form2.timer2.enabled:=true;

      memo1.Clear;
      client.Socket.SendText('ACI-'+edit1.text);
      sleep(100);
      czas:=0;
      repeat
        memo1.lines.Text:=client.Socket.ReceiveText;
        sleep(100);
        czas:=czas+1;
        if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
        end;
      until
      memo1.Lines.Strings[0]<>'';

      form2.panstwo.Caption:=memo1.Lines.Strings[0];
      form2.kolor.Color:=stringtocolor(memo1.Lines.strings[1]);
      form2.punkty.caption:=memo1.lines.strings[2];

      memo1.clear;
      client.Socket.SendText('ACO-'+lowercase(colortostring(form2.kolor.Color)));
      sleep(100);
      czas:=0;
      repeat
        memo1.lines.Text:=client.Socket.ReceiveText;
        sleep(100);
        czas:=czas+1;
        if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
        end;
      until
      memo1.Lines.Strings[0]<>'';
      form2.tereny.caption:=memo1.Lines.Strings[1];

      memo1.Clear;
      client.Socket.SendText('ACOINGAME');
      sleep(100);
      czas:=0;
      repeat
        memo1.lines.Text:=client.Socket.ReceiveText;
        sleep(100);
        czas:=czas+1;
        if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
        end;
      until
      memo1.Lines.Strings[0]<>'';

      for z:=1 to memo1.Lines.Capacity do
        if memo1.Lines.Strings[i-1]=colortostring(form2.kolor.color) then wgrze:=true;
      inc(w);

      memo1.Clear;
      client.Socket.SendText('ACO-'+lowercase(colortostring(form2.kolor.Color))+'_u');
      sleep(100);
      czas:=0;
      repeat
        memo1.lines.Text:=client.Socket.ReceiveText;
        sleep(100);
        czas:=czas+1;
        if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
        end;
      until
      memo1.Lines.Strings[0]<>'';

        for j:=0 to memo1.lines.Count-1 do begin
          if memo1.lines.strings[j]='1' then form9.button1.enabled:=false;
          if memo1.lines.strings[j]='2' then form9.button3.enabled:=false;
          if memo1.lines.strings[j]='3' then form9.button2.enabled:=false;
          if memo1.lines.strings[j]='4' then form9.button4.enabled:=false;
          if memo1.lines.strings[j]='5' then form9.button5.enabled:=false;
          if memo1.lines.strings[j]='6' then form9.button6.enabled:=false;
          if memo1.lines.strings[j]='7' then form9.button7.enabled:=false;
        end;

      if form2.panstwo.Caption='brak' then
        form5.show
      else
        form2.show;
      form1.Hide;
    end;

ladowanie.hide;
if w=0 then showmessage('Nieprawid³owy e-mail lub has³o. #10');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
image1.Picture.LoadFromFile('mm/loginbg.jpg');
try
memo4.lines.Text:=http.Get('http://polish-destroyers.cba.pl/risk/ip.txt');
client.address:=memo4.lines.Strings[0];
client.port:=strtoint(memo4.lines.strings[1]);
client.Active:=true;
timer1.Enabled:=true;
except
showmessage('Serwer offline');
application.terminate;
end;
memo1.Lines.text:=http.Get('http://polish-destroyers.cba.pl/risk/motd.txt');
      if memo1.Lines.strings[1]='1' then
      memo3.text:=memo1.lines.strings[0];
try
memo1.lines.loadfromfile('logdata.txt');
if memo1.lines.strings[0]='1' then begin
  edit1.text:=memo1.lines.strings[1];
  checkbox1.checked:=true;
end else if memo1.lines.strings[0]='2' then begin
  edit2.text:=memo1.lines.strings[1];
  checkbox2.checked:=true;
end else if memo1.lines.strings[0]='3' then begin
  edit1.text:=memo1.lines.strings[1];
  edit2.text:=memo1.lines.strings[2];
  checkbox1.checked:=true;
  checkbox2.checked:=true;
end;
if memo1.lines.strings[3]='1' then begin
  checkbox3.Checked:=true;
end;
except
sleep(0);
end;
end;

procedure TForm1.ClientError(Sender: TObject; Socket: TCustomWinSocket;
  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
if (errorcode=10061) or (errorcode=10060) then begin
showmessage('Serwer offline');
application.terminate;
end;
end;

procedure TForm1.ClientDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
showmessage('Utracono po³¹czenie z serwerem.');
application.terminate;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
client.Socket.SendText('ZYJE');
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
if checkbox3.Checked then sound.music.Play else sound.music.Stop;
end;

procedure TForm1.Panel1Click(Sender: TObject);
begin
sound.Show;
end;

end.
