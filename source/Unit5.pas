unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, IdHTTP, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    RadioButton1: TRadioButton;
    Panel3: TPanel;
    RadioButton2: TRadioButton;
    Panel4: TPanel;
    RadioButton3: TRadioButton;
    Panel5: TPanel;
    RadioButton4: TRadioButton;
    Panel6: TPanel;
    RadioButton5: TRadioButton;
    Panel7: TPanel;
    RadioButton6: TRadioButton;
    Panel8: TPanel;
    RadioButton7: TRadioButton;
    Panel9: TPanel;
    RadioButton8: TRadioButton;
    Panel10: TPanel;
    RadioButton9: TRadioButton;
    Panel11: TPanel;
    RadioButton10: TRadioButton;
    Panel12: TPanel;
    RadioButton11: TRadioButton;
    Panel13: TPanel;
    RadioButton12: TRadioButton;
    Panel14: TPanel;
    RadioButton13: TRadioButton;
    Memo1: TMemo;
    IdFTP1: TIdFTP;
    Memo2: TMemo;
    HTTP: TIdHTTP;
    Memo3: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    procedure RadioButton9Click(Sender: TObject);
    procedure RadioButton10Click(Sender: TObject);
    procedure RadioButton11Click(Sender: TObject);
    procedure RadioButton12Click(Sender: TObject);
    procedure RadioButton13Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1, Unit2, Unit4, Unit6;

{$R *.dfm}

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
application.terminate;
end;

procedure TForm5.RadioButton1Click(Sender: TObject);
begin
radiobutton2.Checked:=false;
radiobutton3.Checked:=false;
radiobutton4.Checked:=false;
radiobutton5.Checked:=false;
radiobutton6.Checked:=false;
radiobutton7.Checked:=false;
radiobutton8.Checked:=false;
radiobutton9.Checked:=false;
radiobutton10.Checked:=false;
radiobutton11.Checked:=false;
radiobutton12.Checked:=false;
radiobutton13.Checked:=false;
panel1.Color:=panel2.color;
end;

procedure TForm5.RadioButton2Click(Sender: TObject);
begin
radiobutton1.Checked:=false;
radiobutton3.Checked:=false;
radiobutton4.Checked:=false;
radiobutton5.Checked:=false;
radiobutton6.Checked:=false;
radiobutton7.Checked:=false;
radiobutton8.Checked:=false;
radiobutton9.Checked:=false;
radiobutton10.Checked:=false;
radiobutton11.Checked:=false;
radiobutton12.Checked:=false;
radiobutton13.Checked:=false;
panel1.Color:=panel3.color;
end;

procedure TForm5.RadioButton3Click(Sender: TObject);
begin
radiobutton2.Checked:=false;
radiobutton1.Checked:=false;
radiobutton4.Checked:=false;
radiobutton5.Checked:=false;
radiobutton6.Checked:=false;
radiobutton7.Checked:=false;
radiobutton8.Checked:=false;
radiobutton9.Checked:=false;
radiobutton10.Checked:=false;
radiobutton11.Checked:=false;
radiobutton12.Checked:=false;
radiobutton13.Checked:=false;
panel1.Color:=panel4.color;
end;

procedure TForm5.RadioButton4Click(Sender: TObject);
begin
radiobutton2.Checked:=false;
radiobutton3.Checked:=false;
radiobutton1.Checked:=false;
radiobutton5.Checked:=false;
radiobutton6.Checked:=false;
radiobutton7.Checked:=false;
radiobutton8.Checked:=false;
radiobutton9.Checked:=false;
radiobutton10.Checked:=false;
radiobutton11.Checked:=false;
radiobutton12.Checked:=false;
radiobutton13.Checked:=false;
panel1.Color:=panel5.color;
end;

procedure TForm5.RadioButton5Click(Sender: TObject);
begin
radiobutton2.Checked:=false;
radiobutton3.Checked:=false;
radiobutton4.Checked:=false;
radiobutton1.Checked:=false;
radiobutton6.Checked:=false;
radiobutton7.Checked:=false;
radiobutton8.Checked:=false;
radiobutton9.Checked:=false;
radiobutton10.Checked:=false;
radiobutton11.Checked:=false;
radiobutton12.Checked:=false;
radiobutton13.Checked:=false;
panel1.Color:=panel6.color;
end;

procedure TForm5.RadioButton6Click(Sender: TObject);
begin
radiobutton2.Checked:=false;
radiobutton3.Checked:=false;
radiobutton4.Checked:=false;
radiobutton5.Checked:=false;
radiobutton1.Checked:=false;
radiobutton7.Checked:=false;
radiobutton8.Checked:=false;
radiobutton9.Checked:=false;
radiobutton10.Checked:=false;
radiobutton11.Checked:=false;
radiobutton12.Checked:=false;
radiobutton13.Checked:=false;
panel1.Color:=panel7.color;
end;

procedure TForm5.RadioButton7Click(Sender: TObject);
begin
radiobutton2.Checked:=false;
radiobutton3.Checked:=false;
radiobutton4.Checked:=false;
radiobutton5.Checked:=false;
radiobutton6.Checked:=false;
radiobutton1.Checked:=false;
radiobutton8.Checked:=false;
radiobutton9.Checked:=false;
radiobutton10.Checked:=false;
radiobutton11.Checked:=false;
radiobutton12.Checked:=false;
radiobutton13.Checked:=false;
panel1.Color:=panel8.color;
end;

procedure TForm5.RadioButton8Click(Sender: TObject);
begin
radiobutton2.Checked:=false;
radiobutton3.Checked:=false;
radiobutton4.Checked:=false;
radiobutton5.Checked:=false;
radiobutton6.Checked:=false;
radiobutton7.Checked:=false;
radiobutton1.Checked:=false;
radiobutton9.Checked:=false;
radiobutton10.Checked:=false;
radiobutton11.Checked:=false;
radiobutton12.Checked:=false;
radiobutton13.Checked:=false;
panel1.Color:=panel9.color;
end;

procedure TForm5.RadioButton9Click(Sender: TObject);
begin
radiobutton2.Checked:=false;
radiobutton3.Checked:=false;
radiobutton4.Checked:=false;
radiobutton5.Checked:=false;
radiobutton6.Checked:=false;
radiobutton7.Checked:=false;
radiobutton8.Checked:=false;
radiobutton1.Checked:=false;
radiobutton10.Checked:=false;
radiobutton11.Checked:=false;
radiobutton12.Checked:=false;
radiobutton13.Checked:=false;
panel1.Color:=panel10.color;
end;

procedure TForm5.RadioButton10Click(Sender: TObject);
begin
radiobutton2.Checked:=false;
radiobutton3.Checked:=false;
radiobutton4.Checked:=false;
radiobutton5.Checked:=false;
radiobutton6.Checked:=false;
radiobutton7.Checked:=false;
radiobutton8.Checked:=false;
radiobutton9.Checked:=false;
radiobutton1.Checked:=false;
radiobutton11.Checked:=false;
radiobutton12.Checked:=false;
radiobutton13.Checked:=false;
panel1.Color:=panel11.color;
end;

procedure TForm5.RadioButton11Click(Sender: TObject);
begin
radiobutton2.Checked:=false;
radiobutton3.Checked:=false;
radiobutton4.Checked:=false;
radiobutton5.Checked:=false;
radiobutton6.Checked:=false;
radiobutton7.Checked:=false;
radiobutton8.Checked:=false;
radiobutton9.Checked:=false;
radiobutton10.Checked:=false;
radiobutton1.Checked:=false;
radiobutton12.Checked:=false;
radiobutton13.Checked:=false;
panel1.Color:=panel12.color;
end;

procedure TForm5.RadioButton12Click(Sender: TObject);
begin
radiobutton2.Checked:=false;
radiobutton3.Checked:=false;
radiobutton4.Checked:=false;
radiobutton5.Checked:=false;
radiobutton6.Checked:=false;
radiobutton7.Checked:=false;
radiobutton8.Checked:=false;
radiobutton9.Checked:=false;
radiobutton10.Checked:=false;
radiobutton11.Checked:=false;
radiobutton1.Checked:=false;
radiobutton13.Checked:=false;
panel1.Color:=panel13.color;
end;

procedure TForm5.RadioButton13Click(Sender: TObject);
begin
radiobutton2.Checked:=false;
radiobutton3.Checked:=false;
radiobutton4.Checked:=false;
radiobutton5.Checked:=false;
radiobutton6.Checked:=false;
radiobutton7.Checked:=false;
radiobutton8.Checked:=false;
radiobutton9.Checked:=false;
radiobutton10.Checked:=false;
radiobutton11.Checked:=false;
radiobutton12.Checked:=false;
radiobutton1.Checked:=false;
panel1.Color:=panel14.color;
end;

procedure TForm5.Button1Click(Sender: TObject);
var
czas:integer;
y,i:integer;
x:string;
begin
ladowanie.show;
ladowanie.refresh;
x:=copy(edit1.text,1,1);
y:=0;
if x=' ' then inc(y);
for i:=1 to 20 do try
  x:=copy(edit1.Text,i,1);
  if (ord(x[1])<32) then inc(y);
  if (ord(x[1])>=33) and (ord(x[1])<40) then inc(y);
  if (ord(x[1])>=42) and (ord(x[1])<65) then inc(y);
  if (ord(x[1])>=123) then inc(y);
except
sleep(0);
end;
if panel1.color=clBtnFace then showmessage('Wybierz kolor!') else
if (y>0) or (edit1.text='brak') then showmessage('Nieprawid³owa nazwa!')
else begin
  try
 form1.client.Socket.SendText('ADACCCOLORS-'+colortostring(panel1.Color));
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


  memo1.Lines.add(edit1.text);
  memo1.lines.add(colortostring(panel1.Color));
  memo1.Lines.add('3');
  memo1.lines.add(form2.label16.caption);

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

  memo3.Lines.Add(edit1.Text);
  memo3.Lines.Add('0');

 form1.client.Socket.SendText('ADACOINGAME-'+colortostring(panel1.Color));
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

  form1.client.Socket.SendText('ACOCH-'+lowercase(colortostring(panel1.color))+':'+memo3.Lines.Text);
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

  memo3.lines.clear;
  memo3.Lines.add('0');

  form1.client.Socket.SendText('ACOCH-'+lowercase(colortostring(panel1.color))+'_u:'+memo3.Lines.Text);
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


        form1.memo1.Clear;
      form1.client.Socket.SendText('ACI-'+form1.edit1.text);
      sleep(100);
      czas:=0;
      repeat
        form1.memo1.lines.Text:=form1.client.Socket.ReceiveText;
        sleep(100);
        czas:=czas+1;
        if czas=60 then begin
          showmessage('Up³yn¹³ limit czasu ¿¹dania.');
          halt;
          application.terminate;
        end;
      until
      form1.memo1.Lines.Strings[0]<>'';

  form2.panstwo.Caption:=form1.memo1.Lines.Strings[0];
  form2.kolor.Color:=stringtocolor(form1.memo1.Lines.strings[1]);
  form2.punkty.caption:=form1.memo1.lines.strings[2];
  form2.show;
  showmessage('Aby wybraæ miejsce startu kliknij "Mapa", otwórz "przegl¹darkê terenów" i wybierz miejsce.');
  form4.button1.enabled:=true;
  form5.Hide;
  except
  showmessage('Nieoczekiwany b³¹d #50');
  end;
end;
ladowanie.hide;

end;

end.
