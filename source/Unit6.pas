unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tladowanie = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ladowanie: Tladowanie;

implementation

{$R *.dfm}

procedure Tladowanie.Timer1Timer(Sender: TObject);
begin
if label1.caption='£adowanie...' then label1.Caption:='£adowanie.'
else if label1.caption='£adowanie.' then label1.caption:='£adowanie..'
else if label1.caption='£adowanie..' then label1.caption:='£adowanie...';
end;

end.
