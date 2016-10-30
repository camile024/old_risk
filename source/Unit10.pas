unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm10 = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public

  end;

var
  Form10: TForm10;


implementation

uses Unit3, Unit2, Unit7;


{$R *.dfm}

procedure TForm10.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  motd:string;
  i,y,x:integer;
begin
if key=vk_return then begin
  if edit1.text='debug' then begin
    memo1.lines.add('B³êdny parametr.');
  end else if edit1.text='debug 1' then begin
    memo1.lines.add('Debugowanie w³¹czone.');
    form2.label17.caption:='1';
  end else if edit1.text='debug 0' then begin
    memo1.lines.add('Debugowanie wy³¹czone.');
    form2.label17.caption:='0';
  end else if (edit1.text='help') or (edit1.text='pomoc') then begin
    memo1.lines.add('Dostêpne komendy: help, pomoc, sasi, czysc, polaczenia, debug, wyjdz, iotd, motd, sciezka');
  end else if edit1.text='wyjdz' then begin
    application.terminate;
  end else if edit1.text='sciezka' then begin
    memo1.Lines.add(extractfilepath(application.exename));
  end else if edit1.text='czysc' then begin
    memo1.Clear;
  end else if edit1.text='polaczenia' then begin
    wiadomosci.caption:='Po³¹czenia.';
    wiadomosci.show;
    wiadomosci.webbrowser1.navigate('http://polish-destroyers.cba.pl/risk/polaczenia.jpg');
  end else if edit1.text='iotd' then begin
    wiadomosci.caption:='Image of The Day.';
    wiadomosci.show;
    wiadomosci.webbrowser1.navigate('http://polish-destroyers.cba.pl/risk/iotd.jpg');
  end else if edit1.text='motd' then begin
    motd:=form2.http1.Get('http://polish-destroyers.cba.pl/risk/motd.txt');
    memo1.lines.Add(motd);
  end else if edit1.text='sasi 1' then begin
    form3.sasi.visible:=true;
  end else if edit1.text='sasi 0' then begin
    form3.sasi.Visible:=false;
  end else if edit1.text='sasi' then begin
    memo1.lines.add('Brak parametru.');
  end else begin
    memo1.lines.add('Nieprawid³owe polecenie.');
  end;
  memo1.lines.add('>>'+edit1.text);
  memo1.lines.Add('');
  edit1.Text:='';
end else if key=vk_escape then
form10.Hide;
end;

end.
