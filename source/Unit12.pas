unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MPlayer, ExtCtrls, StdCtrls;

type
  Tsound = class(TForm)
    music: TMediaPlayer;
    alarm: TMediaPlayer;
    game: TMediaPlayer;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Timer2: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  sound: Tsound;

implementation

uses Unit1;

{$R *.dfm}

procedure Tsound.FormCreate(Sender: TObject);
var
x:integer;
begin
randomize;
x:=random(1);
case x of
  0: begin music.FileName:=('mm\chromosome.mp3'); music.Open; end;
end;

if form1.checkbox3.checked then music.play;


end;

procedure Tsound.Timer1Timer(Sender: TObject);
var
x:integer;
begin
if label1.caption=label2.caption then begin
  music.stop;
  randomize;
  x:=random(1);
  case x of
    0: begin music.FileName:=('mm\chromosome.mp3'); music.Open; end;
  end;
  music.Play;
end;

end;
procedure Tsound.Timer2Timer(Sender: TObject);
begin
label1.caption:=inttostr(music.position);
label2.caption:=inttostr(music.length);
end;

end.
