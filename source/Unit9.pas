unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, IdHTTP, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP;

type
  TForm9 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    Label3: TLabel;
    Bevel1: TBevel;
    Label4: TLabel;
    Panel3: TPanel;
    Label5: TLabel;
    Bevel2: TBevel;
    Label6: TLabel;
    Button2: TButton;
    Panel4: TPanel;
    Label7: TLabel;
    Bevel3: TBevel;
    Label8: TLabel;
    Button3: TButton;
    Panel5: TPanel;
    Label9: TLabel;
    Bevel4: TBevel;
    Label10: TLabel;
    Button4: TButton;
    Panel6: TPanel;
    Label11: TLabel;
    Bevel5: TBevel;
    Label12: TLabel;
    Button5: TButton;
    Panel7: TPanel;
    Label13: TLabel;
    Bevel6: TBevel;
    Label14: TLabel;
    Button6: TButton;
    Panel8: TPanel;
    Label15: TLabel;
    Bevel7: TBevel;
    Label16: TLabel;
    Button7: TButton;
    IdFTP1: TIdFTP;
    http1: TIdHTTP;
    Memo1: TMemo;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit2, Unit3, Unit6, Unit1;

{$R *.dfm}

procedure TForm9.Timer1Timer(Sender: TObject);
begin
label2.Caption:=form2.punkty.caption;
end;

procedure TForm9.Button1Click(Sender: TObject);
var
s,czas:integer;
begin
s:=strtoint(form2.punkty.caption);
if s>=25 then begin
    ladowanie.show;
    try
        memo1.lines.clear;
        form1.client.Socket.SendText('ACO-'+lowercase(colortostring(form2.kolor.color))+'_u');
        sleep(100);
        czas:=0;
        repeat
          memo1.lines.Text:=form1.client.Socket.ReceiveText;
          sleep(100);
          czas:=czas+1;
          if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
          end;
        until
          memo1.Lines.Strings[0]<>'';

       s:=s-25;
      memo1.Lines.add('1');
      button1.enabled:=false;

form1.client.Socket.SendText('ACOCH-'+lowercase(colortostring(form2.kolor.color))+'_u'+':'+memo1.Lines.Text);
  sleep(100);
  czas:=0;
  repeat
    sleep(100);
    czas:=czas+1;
  if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
  end;
  until
  form1.client.socket.receivetext='DONE';

           memo1.Clear;
      form1.client.Socket.SendText('ACI-'+form1.edit1.text);
      sleep(100);
      czas:=0;
      repeat
        memo1.lines.Text:=form1.client.Socket.ReceiveText;
        sleep(100);
        czas:=czas+1;
        if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
        end;
      until
      memo1.Lines.Strings[0]<>'';

      memo1.lines.Delete(2);
      memo1.Lines.Insert(2,inttostr(s));
      form2.punkty.caption:=inttostr(s);

  form1.client.Socket.SendText('ACCDATACH-'+form1.edit1.Text+':'+memo1.Lines.Text);
  sleep(100);
  czas:=0;
  repeat
    sleep(100);
    czas:=czas+1;
  if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
  end;
  until
  form1.client.socket.receivetext='DONE';
      button1.enabled:=false;
      ladowanie.hide;
    except
      ladowanie.hide;
      showmessage('Nie uda³o siê po³¹czyæ z serwerem. #91');
    end;
end else showmessage('Nie masz wystarczaj¹co punktów.');
end;

procedure TForm9.Button3Click(Sender: TObject);
var
s,czas:integer;
begin
s:=strtoint(form2.punkty.caption);
if s>=10 then begin
    ladowanie.show;
    try
        memo1.lines.clear;
        form1.client.Socket.SendText('ACO-'+lowercase(colortostring(form2.kolor.color))+'_u');
        sleep(100);
        czas:=0;
        repeat
          memo1.lines.Text:=form1.client.Socket.ReceiveText;
          sleep(100);
          czas:=czas+1;
          if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
          end;
        until
          memo1.Lines.Strings[0]<>'';

       s:=s-10;
      memo1.Lines.add('2');
      button1.enabled:=false;

form1.client.Socket.SendText('ACOCH-'+lowercase(colortostring(form2.kolor.color))+'_u'+':'+memo1.Lines.Text);
  sleep(100);
  czas:=0;
  repeat
    sleep(100);
    czas:=czas+1;
  if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
  end;
  until
  form1.client.socket.receivetext='DONE';

           memo1.Clear;
      form1.client.Socket.SendText('ACI-'+form1.edit1.text);
      sleep(100);
      czas:=0;
      repeat
        memo1.lines.Text:=form1.client.Socket.ReceiveText;
        sleep(100);
        czas:=czas+1;
        if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
        end;
      until
      memo1.Lines.Strings[0]<>'';

      memo1.lines.Delete(2);
      memo1.Lines.Insert(2,inttostr(s));
      form2.punkty.caption:=inttostr(s);

  form1.client.Socket.SendText('ACCDATACH-'+form1.edit1.Text+':'+memo1.Lines.Text);
  sleep(100);
  czas:=0;
  repeat
    sleep(100);
    czas:=czas+1;
  if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
  end;
  until
  form1.client.socket.receivetext='DONE';
      button3.enabled:=false;
      ladowanie.hide;
    except
      ladowanie.hide;
      showmessage('Nie uda³o siê po³¹czyæ z serwerem. #92');
    end;
end else showmessage('Nie masz wystarczaj¹co punktów.');
end;

procedure TForm9.Button2Click(Sender: TObject);
var
s,czas:integer;
begin
s:=strtoint(form2.punkty.caption);
if s>=8 then begin
    ladowanie.show;
    try
       memo1.lines.clear;
        form1.client.Socket.SendText('ACO-'+lowercase(colortostring(form2.kolor.color))+'_u');
        sleep(100);
        czas:=0;
        repeat
          memo1.lines.Text:=form1.client.Socket.ReceiveText;
          sleep(100);
          czas:=czas+1;
          if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
          end;
        until
          memo1.Lines.Strings[0]<>'';

       s:=s-8;
      memo1.Lines.add('3');
      button1.enabled:=false;

form1.client.Socket.SendText('ACOCH-'+lowercase(colortostring(form2.kolor.color))+'_u'+':'+memo1.Lines.Text);
  sleep(100);
  czas:=0;
  repeat
    sleep(100);
    czas:=czas+1;
  if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
  end;
  until
  form1.client.socket.receivetext='DONE';

           memo1.Clear;
      form1.client.Socket.SendText('ACI-'+form1.edit1.text);
      sleep(100);
      czas:=0;
      repeat
        memo1.lines.Text:=form1.client.Socket.ReceiveText;
        sleep(100);
        czas:=czas+1;
        if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
        end;
      until
      memo1.Lines.Strings[0]<>'';

      memo1.lines.Delete(2);
      memo1.Lines.Insert(2,inttostr(s));
      form2.punkty.caption:=inttostr(s);

  form1.client.Socket.SendText('ACCDATACH-'+form1.edit1.Text+':'+memo1.Lines.Text);
  sleep(100);
  czas:=0;
  repeat
    sleep(100);
    czas:=czas+1;
  if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
  end;
  until
  form1.client.socket.receivetext='DONE';

      button2.enabled:=false;
      ladowanie.hide;
    except
      ladowanie.hide;
      showmessage('Nie uda³o siê po³¹czyæ z serwerem. #93');
    end;
end else showmessage('Nie masz wystarczaj¹co punktów.');
end;

procedure TForm9.Button4Click(Sender: TObject);
var
s,czas:integer;
begin
s:=strtoint(form2.punkty.caption);
if button2.enabled=false then begin
if s>=15 then begin
try
 memo1.lines.clear;
        form1.client.Socket.SendText('ACO-'+lowercase(colortostring(form2.kolor.color))+'_u');
        sleep(100);
        czas:=0;
        repeat
          memo1.lines.Text:=form1.client.Socket.ReceiveText;
          sleep(100);
          czas:=czas+1;
          if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
          end;
        until
          memo1.Lines.Strings[0]<>'';

       s:=s-15;
      memo1.Lines.add('4');
      button1.enabled:=false;

form1.client.Socket.SendText('ACOCH-'+lowercase(colortostring(form2.kolor.color))+'_u'+':'+memo1.Lines.Text);
  sleep(100);
  czas:=0;
  repeat
    sleep(100);
    czas:=czas+1;
  if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
  end;
  until
  form1.client.socket.receivetext='DONE';

           memo1.Clear;
      form1.client.Socket.SendText('ACI-'+form1.edit1.text);
      sleep(100);
      czas:=0;
      repeat
        memo1.lines.Text:=form1.client.Socket.ReceiveText;
        sleep(100);
        czas:=czas+1;
        if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
        end;
      until
      memo1.Lines.Strings[0]<>'';

      memo1.lines.Delete(2);
      memo1.Lines.Insert(2,inttostr(s));
      form2.punkty.caption:=inttostr(s);

  form1.client.Socket.SendText('ACCDATACH-'+form1.edit1.Text+':'+memo1.Lines.Text);
  sleep(100);
  czas:=0;
  repeat
    sleep(100);
    czas:=czas+1;
  if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
  end;
  until
  form1.client.socket.receivetext='DONE';

      button4.enabled:=false;
      ladowanie.hide;
    except
      ladowanie.hide;
      showmessage('Nie uda³o siê po³¹czyæ z serwerem. #94');
    end;
end else showmessage('Nie masz wystarczaj¹co punktów.');
end else showmessage('Nie masz poprzedniego ulepszenia.');
end;

procedure TForm9.Button5Click(Sender: TObject);
var
s,czas:integer;
begin
s:=strtoint(form2.punkty.caption);
if s>=5 then begin
    ladowanie.show;
    ladowanie.refresh;
    try
 memo1.lines.clear;
        form1.client.Socket.SendText('ACO-'+lowercase(colortostring(form2.kolor.color))+'_u');
        sleep(100);
        czas:=0;
        repeat
          memo1.lines.Text:=form1.client.Socket.ReceiveText;
          sleep(100);
          czas:=czas+1;
          if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
          end;
        until
          memo1.Lines.Strings[0]<>'';

       s:=s-5;
      memo1.Lines.add('5');
      button1.enabled:=false;

form1.client.Socket.SendText('ACOCH-'+lowercase(colortostring(form2.kolor.color))+'_u'+':'+memo1.Lines.Text);
  sleep(100);
  czas:=0;
  repeat
    sleep(100);
    czas:=czas+1;
  if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
  end;
  until
  form1.client.socket.receivetext='DONE';

           memo1.Clear;
      form1.client.Socket.SendText('ACI-'+form1.edit1.text);
      sleep(100);
      czas:=0;
      repeat
        memo1.lines.Text:=form1.client.Socket.ReceiveText;
        sleep(100);
        czas:=czas+1;
        if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
        end;
      until
      memo1.Lines.Strings[0]<>'';

      memo1.lines.Delete(2);
      memo1.Lines.Insert(2,inttostr(s));
      form2.punkty.caption:=inttostr(s);

  form1.client.Socket.SendText('ACCDATACH-'+form1.edit1.Text+':'+memo1.Lines.Text);
  sleep(100);
  czas:=0;
  repeat
    sleep(100);
    czas:=czas+1;
  if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
  end;
  until
  form1.client.socket.receivetext='DONE';

      button5.enabled:=false;
      ladowanie.hide;
    except
      ladowanie.hide;
      showmessage('Nie uda³o siê po³¹czyæ z serwerem. #95');
    end;
end else showmessage('Nie masz wystarczaj¹co punktów.');
end;

procedure TForm9.Button6Click(Sender: TObject);
var
s,czas:integer;
begin
s:=strtoint(form2.punkty.caption);
if button5.enabled=false then begin
if s>=8 then begin
    ladowanie.show;
    try
  memo1.lines.clear;
        form1.client.Socket.SendText('ACO-'+lowercase(colortostring(form2.kolor.color))+'_u');
        sleep(100);
        czas:=0;
        repeat
          memo1.lines.Text:=form1.client.Socket.ReceiveText;
          sleep(100);
          czas:=czas+1;
          if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
          end;
        until
          memo1.Lines.Strings[0]<>'';

       s:=s-8;
      memo1.Lines.add('6');
      button1.enabled:=false;

form1.client.Socket.SendText('ACOCH-'+lowercase(colortostring(form2.kolor.color))+'_u'+':'+memo1.Lines.Text);
  sleep(100);
  czas:=0;
  repeat
    sleep(100);
    czas:=czas+1;
  if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
  end;
  until
  form1.client.socket.receivetext='DONE';

           memo1.Clear;
      form1.client.Socket.SendText('ACI-'+form1.edit1.text);
      sleep(100);
      czas:=0;
      repeat
        memo1.lines.Text:=form1.client.Socket.ReceiveText;
        sleep(100);
        czas:=czas+1;
        if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
        end;
      until
      memo1.Lines.Strings[0]<>'';

      memo1.lines.Delete(2);
      memo1.Lines.Insert(2,inttostr(s));
      form2.punkty.caption:=inttostr(s);

  form1.client.Socket.SendText('ACCDATACH-'+form1.edit1.Text+':'+memo1.Lines.Text);
  sleep(100);
  czas:=0;
  repeat
    sleep(100);
    czas:=czas+1;
  if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
  end;
  until
  form1.client.socket.receivetext='DONE';

      button6.Enabled:=false;
      ladowanie.hide;
    except
      ladowanie.hide;
      showmessage('Nie uda³o siê po³¹czyæ z serwerem. #96');
    end;
end else showmessage('Nie masz wystarczaj¹co punktów.');
end else showmessage('Nie masz poprzedniego ulepszenia.');
end;

procedure TForm9.Button7Click(Sender: TObject);
var
s,czas:integer;
begin
s:=strtoint(form2.punkty.caption);
if s>=5 then begin
    ladowanie.show;
    try
  memo1.lines.clear;
        form1.client.Socket.SendText('ACO-'+lowercase(colortostring(form2.kolor.color))+'_u');
        sleep(100);
        czas:=0;
        repeat
          memo1.lines.Text:=form1.client.Socket.ReceiveText;
          sleep(100);
          czas:=czas+1;
          if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
          end;
        until
          memo1.Lines.Strings[0]<>'';

       s:=s-5;
      memo1.Lines.add('7');
      button1.enabled:=false;

form1.client.Socket.SendText('ACOCH-'+lowercase(colortostring(form2.kolor.color))+'_u'+':'+memo1.Lines.Text);
  sleep(100);
  czas:=0;
  repeat
    sleep(100);
    czas:=czas+1;
  if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
  end;
  until
  form1.client.socket.receivetext='DONE';

           memo1.Clear;
      form1.client.Socket.SendText('ACI-'+form1.edit1.text);
      sleep(100);
      czas:=0;
      repeat
        memo1.lines.Text:=form1.client.Socket.ReceiveText;
        sleep(100);
        czas:=czas+1;
        if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
        end;
      until
      memo1.Lines.Strings[0]<>'';

      memo1.lines.Delete(2);
      memo1.Lines.Insert(2,inttostr(s));
      form2.punkty.caption:=inttostr(s);

  form1.client.Socket.SendText('ACCDATACH-'+form1.edit1.Text+':'+memo1.Lines.Text);
  sleep(100);
  czas:=0;
  repeat
    sleep(100);
    czas:=czas+1;
  if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
  end;
  until
  form1.client.socket.receivetext='DONE';

      button7.enabled:=false;
      ladowanie.hide;
    except
      ladowanie.hide;
      showmessage('Nie uda³o siê po³¹czyæ z serwerem. #97');
    end;
end else showmessage('Nie masz wystarczaj¹co punktów.');
end;

end.
