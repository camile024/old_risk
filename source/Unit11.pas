unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm11 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Memo1: TMemo;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

procedure TForm11.Image1Click(Sender: TObject);
begin
memo1.Lines.Text:='Zdob�d� 30 teren�w. +1 punkt.';
end;

procedure TForm11.Image2Click(Sender: TObject);
begin
memo1.Lines.Text:='Zdob�d� 100 teren�w. +3 punkty.';
end;

procedure TForm11.Image3Click(Sender: TObject);
begin
memo1.Lines.Text:='Zdob�d� 250 teren�w. Dostajesz 2 razy wi�cej punkt�w.';
end;

procedure TForm11.Image4Click(Sender: TObject);
begin
memo1.Lines.Text:='Zaatakuj pa�stwo.';
end;

procedure TForm11.Image5Click(Sender: TObject);
begin
memo1.Lines.Text:='Wyeliminuj pa�stwo. +10 punkt�w.';
end;

procedure TForm11.Image6Click(Sender: TObject);
begin
memo1.Lines.Text:='Wyeliminuj 2 pa�stwa. Ataki zawsze si� udaj�.';
end;

procedure TForm11.Image10Click(Sender: TObject);
begin
memo1.Lines.Text:='Zneutralizuj w�asny teren. +3 punkty';
end;

procedure TForm11.Image8Click(Sender: TObject);
begin
memo1.Lines.Text:='Kup ulepszenie. +3 punkty';
end;

procedure TForm11.Image9Click(Sender: TObject);
begin
memo1.Lines.Text:='Kup 5 ulepsze�. +15 punkt�w';
end;

procedure TForm11.Image11Click(Sender: TObject);
begin
memo1.Lines.Text:='Kup 2 poziomy ulepsze�. Wi�ksza szansa na znalezienie sk�adu amunicji.';
end;

procedure TForm11.Image7Click(Sender: TObject);
begin
memo1.Lines.Text:='Zdob�d� 3 osi�gni�cia. +3 punkty';
end;

end.
