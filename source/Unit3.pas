unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,  IdFTP,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  IdExplicitTLSClientServerBase;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    numer: TLabel;
    Label3: TLabel;
    posiadacz: TLabel;
    Bevel1: TBevel;
    Button1: TButton;
    Button3: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    IdHTTP1: TIdHTTP;
    IdFTP1: TIdFTP;
    Panel1: TPanel;
    Button2: TButton;
    Memo3: TMemo;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Timer1: TTimer;
    sasi: TLabel;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2, Unit6, Unit1, Unit9, Unit10;

{$R *.dfm}
var
debug:boolean;
sklad:boolean;
nuke10:boolean;
ammu:boolean;
ammu2:boolean;
failure:boolean;

procedure TForm3.Button3Click(Sender: TObject);
begin
form3.Hide;
end;

procedure TForm3.Button1Click(Sender: TObject);
var
ter,s,i,fail,czas,wyeliminowany,tswoje:integer;
begin
    if debug=true then begin
    form10.Memo1.Lines.Add('------------------------/3/BUTTON1CLICK------------------------');
    form10.memo1.lines.add(''); end;
randomize;
if form9.button7.enabled=false then
fail:=random(70+8*(strtoint(sasi.caption)))
else fail:=random(40+8*(strtoint(sasi.caption)));
if panel1.color=clwhite then fail:=fail+20;
if form2.map.caption='true' then
if panel1.color<>form2.kolor.color then
if strtoint(form2.punkty.Caption)>0 then begin
  try
  ladowanie.show;
  ladowanie.refresh;

  //ATAK
if fail>30 then begin
    if debug=true then
    form10.Memo1.Lines.Add('<---Atak start.');

        form1.client.Socket.SendText('ATAK-'+(colortostring(form2.kolor.color))+':'+lowercase(colortostring(panel1.color))+':'+numer.caption);
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

 {      memo1.lines.clear;
   form1.client.Socket.SendText('ACO-'+lowercase(colortostring(form2.kolor.color)));
    sleep(100);
    czas:=0;
    repeat
      memo1.lines.Text:=form1.client.Socket.ReceiveText;
      sleep(100);
      czas:=czas+1;
      if czas=60 then begin
        showmessage('Up³yn¹³ czas ¿¹dania.');
        application.terminate;
      end;
    until
      memo1.Lines.Strings[0]<>'';

  ter:=strtoint(memo1.lines.Strings[1]);
  memo1.Lines.Delete(1);
  memo1.Lines.add(inttostr(ter+1));  }
  tswoje:=strtoint(form2.tereny.caption);

   { form1.client.Socket.SendText('ACOCH-'+colortostring(form2.kolor.color)+':'+memo1.Lines.Text);
  sleep(100);
  czas:=0;
  repeat
    sleep(100);
    czas:=czas+1;
  if czas=60 then begin
    showmessage('Up³yn¹³ czas ¿¹dania.');
    application.terminate;
  end;
  until
  form1.client.socket.receivetext='DONE';


    if debug=true then
    form10.Memo1.Lines.Add('--->Atak stop.');
    //OBRO
      if debug=true then
    form10.Memo1.Lines.Add('<---Obro start..');

    memo1.lines.clear;
   form1.client.Socket.SendText('ACO-'+lowercase(colortostring(panel1.color)));
    sleep(100);
    czas:=0;
    repeat
      memo1.lines.Text:=form1.client.Socket.ReceiveText;
      sleep(100);
      czas:=czas+1;
      if czas=60 then begin
        showmessage('Up³yn¹³ czas ¿¹dania.');
        application.terminate;
      end;
    until
      memo1.Lines.Strings[0]<>'';

    ter:=strtoint(memo1.lines.Strings[1]);
    memo1.Lines.Delete(1);
    memo1.Lines.add(inttostr(ter-1));


    form1.client.Socket.SendText('ACOCH-'+lowercase(colortostring(panel1.color))+':'+memo1.Lines.Text);
  sleep(100);
  czas:=0;
  repeat
    sleep(100);
    czas:=czas+1;
  if czas=60 then begin
    showmessage('Up³yn¹³ czas ¿¹dania.');
    application.terminate;
  end;
  until
  form1.client.socket.receivetext='DONE';

    if debug=true then
    form10.Memo1.Lines.Add('--->Obro stop.');
    //ELIMINACJA
      if debug=true then
    form10.Memo1.Lines.Add('<---Elim start.'); }
    if panel1.Color<>clWhite then
    if memo1.lines.strings[1]='0' then begin
     wyeliminowany:=1;

     form1.client.Socket.SendText('REACOINGAME-'+colortostring(panel1.color));
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

  end;
     if debug=true then
    form10.Memo1.Lines.Add('--->Elim stop.');
  {//MAPY
    i:=strtoint(numer.Caption);
      if debug=true then
    form10.Memo1.Lines.Add('<---Mapy start.');

    form1.client.Socket.SendText('MAPC-'+inttostr(i)+':'+colortostring(form2.kolor.color));
    sleep(100);
    czas:=0;
    repeat
      sleep(100);
      czas:=czas+1;
      if czas=60 then begin
        showmessage('Up³yn¹³ czas ¿¹dania.');
        application.terminate;
      end;
    until
  form1.client.socket.receivetext='DONE';

      if debug=true then
    form10.Memo1.Lines.Add('--->Mapy stop.');    }

  //LOSO
    if debug=true then
    form10.Memo1.Lines.Add('<---Loso start.');
    randomize;
    i:=random(150);
    if (i>80) and (i<86) then begin
      showmessage('Znalaz³eœ sk³ad amunicji! +5 punktów!');
      sklad:=true;
    end else if (i>85) and (i<88) then begin
      showmessage('Znalaz³eœ bombê! +10 punktów!');
      nuke10:=true;
    end;
    if form9.button5.enabled=false then
      if (i>65) and (i<80) then begin
        showmessage('Znalaz³eœ dodatkow¹ amunicjê! +1 punkt!');
        ammu:=true;
      end;
    i:=random(150);
    if form9.button6.enabled=false then
      if (i>50) and (i<75) then begin
        showmessage('Znalaz³eœ dodatkow¹ amunicjê! +1 punkt!');
        ammu2:=true;
      end;
  end else failure:=true;
    if debug=true then
    form10.Memo1.Lines.Add('--->Loso stop. ('+inttostr(i)+')');
      if debug=true then
    form10.Memo1.Lines.Add('<---Pubdate start.');
  //PUNKTUPDATE (server)

    s:=strtoint(form2.punkty.caption);
    s:=s-1;
    if sklad=true then begin
      s:=s+5;
      sklad:=false;
    end;
    if nuke10=true then begin
      s:=s+10;
      nuke10:=false;
    end;
    if ammu=true then begin
      s:=s+1;
      ammu:=false;
    end;
    if ammu2=true then begin
      s:=s+1;
      ammu2:=false;
    end;
    if wyeliminowany=1 then begin
      s:=s+(tswoje div 4);
      wyeliminowany:=0;
      showmessage('Zdobyto '+inttostr(tswoje div 4)+' punktów za wyeliminowanie przeciwnika.');
    end;

     form1.client.Socket.SendText('NOWEPKT-'+form1.edit1.Text+':'+inttostr(s));
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

  form2.punkty.caption:=inttostr(s);
  if fail>30 then
  form2.tereny.caption:=inttostr(strtoint(form2.tereny.caption)+1);

  Form2.Button1Click(Button1);
  ladowanie.hide;
  form3.Hide;
    if debug=true then
    form10.Memo1.Lines.Add('---Pubdate stop.');
      if debug=true then
    form10.Memo1.Lines.Add('---Koniec.');
  if failure=true then begin
    failure:=false;
    showmessage('Atak nie powiód³ siê.');
  end;
  except
    showmessage('Utracono po³¹czenie z serwerem/nieznany b³¹d. #34');
    end;
    ladowanie.hide;

end else showmessage('Nie masz punktów.')
else showmessage('Nie mo¿esz atakowaæ siebie!')
else showmessage('Musisz odœwie¿yæ mapê.');
end;   

procedure TForm3.Button2Click(Sender: TObject);
var
ter,s,i,czas:integer;
begin
    if debug=true then begin
    form10.Memo1.Lines.Add('------------------------/3/BUTTON2CLICK------------------------');
    form10.memo1.lines.add(''); end;
randomize;
if strtoint(form2.tereny.caption)>2 then
if form2.map.caption='true' then
if panel1.color=form2.kolor.color then
if strtoint(form2.punkty.Caption)>0 then begin
  try
  ladowanie.show;
  ladowanie.refresh;
    if debug=true then
    form10.Memo1.Lines.Add('---Atak start.');
  //ATAK

        memo1.lines.clear;
   form1.client.Socket.SendText('ACO-'+lowercase(colortostring(form2.kolor.color)));
    sleep(100);
    czas:=0;
    repeat
      memo1.lines.Text:=form1.client.Socket.ReceiveText;
      sleep(100);
      czas:=czas+1;
      if czas=60 then begin
        showmessage('Up³yn¹³ limit czasu ¿¹dania.');
        application.terminate;
      end;
    until
      memo1.Lines.Strings[0]<>'';

  ter:=strtoint(memo1.lines.Strings[1]);
  memo1.Lines.Delete(1);
  memo1.Lines.add(inttostr(ter-1));

      form1.client.Socket.SendText('ACOCH-'+lowercase(colortostring(form2.kolor.color))+':'+memo1.Lines.Text);
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

    if debug=true then
    form10.Memo1.Lines.Add('---Mapy start.');
  //MAPY
  i:=strtoint(numer.Caption);

    form1.client.Socket.SendText('MAP0-'+inttostr(i)+':clWhite');
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

    if debug=true then
    form10.Memo1.Lines.Add('---Pubdate start.');
  //PUNKTUPDATE (server)

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

  s:=strtoint(form2.punkty.caption);
  s:=s-1;
  memo1.lines.Delete(2);
  memo1.Lines.Insert(2,inttostr(s));
  form2.punkty.caption:=inttostr(s);
  form2.tereny.caption:=inttostr(strtoint(form2.tereny.caption)+1);

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

  form2.map.caption:='false';
  ladowanie.hide;
  form3.Hide;
     if debug=true then
    form10.Memo1.Lines.Add('---Koniec.');
  except
    showmessage('Utracono po³¹czenie z serwerem/nieznany b³¹d. #34');
    ladowanie.hide;
  end;
end else showmessage('Nie masz punktów.')
else showmessage('Musisz wybraæ swój teren.')
else showmessage('Musisz odœwie¿yæ mapê.')
else showmessage('Musisz posiadaæ conajmniej 3 tereny, ¿eby neutralizowaæ któryœ z nich.');
end;

procedure TForm3.Timer1Timer(Sender: TObject);
begin
if form2.Label17.caption='1' then debug:=true else debug:=false;
end;

end.
