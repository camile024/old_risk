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
memo1.Lines.Text:='Zdob¹dŸ 30 terenów. +1 punkt.';
end;

procedure TForm11.Image2Click(Sender: TObject);
begin
memo1.Lines.Text:='Zdob¹dŸ 100 terenów. +3 punkty.';
end;

procedure TForm11.Image3Click(Sender: TObject);
begin
memo1.Lines.Text:='Zdob¹dŸ 250 terenów. Dostajesz 2 razy wiêcej punktów.';
end;

procedure TForm11.Image4Click(Sender: TObject);
begin
memo1.Lines.Text:='Zaatakuj pañstwo.';
end;

procedure TForm11.Image5Click(Sender: TObject);
begin
memo1.Lines.Text:='Wyeliminuj pañstwo. +10 punktów.';
end;

procedure TForm11.Image6Click(Sender: TObject);
begin
memo1.Lines.Text:='Wyeliminuj 2 pañstwa. Ataki zawsze siê udaj¹.';
end;

procedure TForm11.Image10Click(Sender: TObject);
begin
memo1.Lines.Text:='Zneutralizuj w³asny teren. +3 punkty';
end;

procedure TForm11.Image8Click(Sender: TObject);
begin
memo1.Lines.Text:='Kup ulepszenie. +3 punkty';
end;

procedure TForm11.Image9Click(Sender: TObject);
begin
memo1.Lines.Text:='Kup 5 ulepszeñ. +15 punktów';
end;

procedure TForm11.Image11Click(Sender: TObject);
begin
memo1.Lines.Text:='Kup 2 poziomy ulepszeñ. Wiêksza szansa na znalezienie sk³adu amunicji.';
end;

procedure TForm11.Image7Click(Sender: TObject);
begin
memo1.Lines.Text:='Zdob¹dŸ 3 osi¹gniêcia. +3 punkty';
end;

end.
