unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ScktComp, ExtCtrls, IdHTTP, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdFTP, IdTime;

type
  TForm1 = class(TForm)
    ServerSocket1: TServerSocket;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Memo1: TMemo;
    Button3: TButton;
    Edit1: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit2: TEdit;
    Button4: TButton;
    FTP1: TIdFTP;
    HTTP1: TIdHTTP;
    Memo2: TMemo;
    Memo3: TMemo;
    list: TListBox;
    list2: TListBox;
    Timer1: TTimer;
    Button5: TButton;
    Edit3: TEdit;
    Button6: TButton;
    Memo4: TMemo;
    Memo5: TMemo;
    Memo6: TMemo;
    Memo7: TMemo;
    Memo8: TMemo;
    Memo9: TMemo;
    Memo10: TMemo;
    Memo11: TMemo;
    Label8: TLabel;
    IdTime1: TIdTime;
    Timer2: TTimer;
    mapy1: TMemo;
    mapy2: TMemo;
    mapy3: TMemo;
    mapy4: TMemo;
    mapy5: TMemo;
    mapya: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ServerSocket1Accept(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocket1ClientDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure Timer1Timer(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
serversocket1.Active:=true;
label1.color:=cllime;
label2.color:=clbtnface;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
serversocket1.active:=false;
label1.color:=clbtnface;
label2.color:=clred;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
memo2.lines.text:=http1.get('http://polish-destroyers.cba.pl/risk/ip.txt');
label5.caption:=memo2.Lines.Strings[0];
label7.caption:=memo2.lines.strings[1];
serversocket1.Port:=strtoint(memo2.Lines.Strings[1]);
end;

procedure TForm1.ServerSocket1Accept(Sender: TObject;
  Socket: TCustomWinSocket);
begin
memo1.Lines.Add('Odebrano po³¹czenie od: '+socket.RemoteAddress);
list.Items.add(socket.remoteaddress);
list2.Items.Add(socket.RemoteAddress)
end;

procedure TForm1.ServerSocket1ClientDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
  var
  i,j:integer;
  tesame:boolean;
begin
memo1.lines.add('IP: '+socket.RemoteAddress+' od³¹czy³ siê.');
for i:=0 to list.items.Count-1 do begin
  tesame:=true;
  for j:=1 to length(list.items.strings[i]) do
    if list.Items.Strings[i][j]<>socket.remoteaddress[j] then tesame:=false;
  if tesame=true then list.items.Delete(i);
end;

end;

procedure TForm1.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
var
m,mm:string;
i,j:integer;
p1,p3:string;
p2,p4:integer;
begin
m:=socket.ReceiveText;
  memo1.Lines.Add('IP: '+socket.RemoteAddress+' ['+m+']   | '+timetostr(time));

if m='ACCDATA' then begin
  memo3.Lines.LoadFromFile('accountsdata.txt');
  for i:=0 to list.Items.Count-1 do
    if list.items.strings[i]=socket.remoteaddress then
    serversocket1.socket.Connections[i].SendText(memo3.lines.text);
end;

if m='ACCCOLORS' then begin
  memo8.Lines.LoadFromFile('acccolors.txt');
  for i:=0 to list.Items.Count-1 do
    if list.items.strings[i]=socket.remoteaddress then
    serversocket1.socket.Connections[i].SendText(memo8.lines.text);
end;

if (m[1]='A') and (m[2]='C') and (m[3]='I') and (m[4]='-') then begin
  mm:='';
  for j:=5 to length(m) do mm:=mm+m[j];
  memo8.Lines.LoadFromFile('acc\'+mm+'.txt');
  for i:=0 to list.Items.Count-1 do
    if list.items.strings[i]=socket.remoteaddress then
    serversocket1.socket.Connections[i].SendText(memo8.lines.text);
end;

if (m[1]='A') and (m[2]='C') and (m[3]='O') and (m[4]='-') then begin
  mm:='';
  for j:=5 to length(m) do mm:=mm+m[j];
  memo3.Lines.LoadFromFile('col\'+mm+'.txt');
  for i:=0 to list.Items.Count-1 do
    if list.items.strings[i]=socket.remoteaddress then
    serversocket1.socket.Connections[i].SendText(memo3.lines.text);
end;

if m='ACOINGAME' then begin
  memo9.Lines.LoadFromFile('acccolorsingame.txt');
  for i:=0 to list.Items.Count-1 do
    if list.items.strings[i]=socket.remoteaddress then
    serversocket1.socket.Connections[i].SendText(memo9.lines.text);
end;

if copy(m,1,12)='ADACCCOLORS-' then begin
  memo10.Lines.LoadFromFile('acccolors.txt');
  memo10.Lines.Add(copy(m,13,length(m)-12));
  memo10.Lines.SaveToFile('acccolors.txt');
  for i:=0 to list.Items.Count-1 do
    if list.items.strings[i]=socket.remoteaddress then
    serversocket1.socket.Connections[i].SendText('DONE');
end;

if copy(m,1,12)='ADACOINGAME-' then begin
  memo11.Lines.LoadFromFile('acccolorsingame.txt');
  memo11.Lines.Add(copy(m,13,length(m)-12));
  memo11.Lines.SaveToFile('acccolorsingame.txt');
  for i:=0 to list.Items.Count-1 do
    if list.items.strings[i]=socket.remoteaddress then
    serversocket1.socket.Connections[i].SendText('DONE');
end;

if copy(m,1,12)='REACOINGAME-' then begin
  memo11.Lines.LoadFromFile('acccolorsingame.txt');
  for i:=0 to memo11.Lines.Count-1 do
  if memo11.lines.Strings[i]=copy(m,13,length(m)-12) then memo11.Lines.Delete(i);
  memo11.Lines.SaveToFile('acccolorsingame.txt');
  for i:=0 to list.Items.Count-1 do
    if list.items.strings[i]=socket.remoteaddress then
    serversocket1.socket.Connections[i].SendText('DONE');
end;

if copy(m,1,10)='ACCDATACH-' then begin
  memo8.lines.Clear;
  mm:='';
  i:=11;
  repeat
  if m[i]<>':' then mm:=mm+m[i];
  inc(i);
  until m[i]=':';
  memo8.Lines.text:=copy(m,i+1,length(m)-i);
  memo8.Lines.SaveToFile('acc/'+mm+'.txt');
  for i:=0 to list.Items.Count-1 do
    if list.items.strings[i]=socket.remoteaddress then
    serversocket1.socket.Connections[i].SendText('DONE');
end;

if copy(m,1,6)='ACOCH-' then begin
  memo10.lines.Clear;
  mm:='';
  i:=7;
  repeat
  if m[i]<>':' then mm:=mm+m[i];
  inc(i);
  until m[i]=':';
  memo10.Lines.text:=copy(m,i+1,length(m)-i);
  memo10.Lines.SaveToFile('col/'+mm+'.txt');
  for i:=0 to list.Items.Count-1 do
    if list.items.strings[i]=socket.remoteaddress then
    serversocket1.socket.Connections[i].SendText('DONE');
end;

if copy(m,1,5)='MAPC-' then begin
  memo7.lines.Clear;
  mm:='';
  j:=6;
  repeat
  if m[j]<>':' then inc(j);
  until m[j]=':';
  i:=strtoint(copy(m,6,length(m)-5-length(copy(m,j,length(m)))));
  memo7.Lines.LoadFromFile('mapy.txt');
    memo7.Lines.Delete(i*3-3);
    memo7.lines.Insert(i*3-3,'1');
    memo7.lines.delete(i*3-2);
    memo7.lines.insert(i*3-2,copy(m,j+1,length(m)));
    memo7.Lines.SaveToFile('mapy.txt');
  for i:=0 to list.Items.Count-1 do
    if list.items.strings[i]=socket.remoteaddress then
    serversocket1.socket.Connections[i].SendText('DONE');
end;

if copy(m,1,5)='MAP0-' then begin
  memo3.lines.Clear;
  mm:='';
  j:=6;
  repeat
  if m[j]<>':' then inc(j);
  until m[j]=':';
  i:=strtoint(copy(m,6,length(m)-5-length(copy(m,j,length(m)))));
  memo4.Lines.LoadFromFile('mapy.txt');
    memo4.Lines.Delete(i*3-3);
    memo4.lines.Insert(i*3-3,'0');
    memo4.lines.delete(i*3-2);
    memo4.lines.insert(i*3-2,copy(m,j+1,length(m)));
    memo4.Lines.SaveToFile('mapy.txt');
  for i:=0 to list.Items.Count-1 do
    if list.items.strings[i]=socket.remoteaddress then
    serversocket1.socket.Connections[i].SendText('DONE');
end;

if m='ZYJE' then begin
  list2.Items.Add(socket.RemoteAddress);
end;

if copy(m,1,8)='NOWEPKT-' then begin
  memo6.lines.Clear;
  mm:='';
  i:=9;
  repeat
  if m[i]<>':' then mm:=mm+m[i];
  inc(i);
  until m[i]=':';
  memo8.Lines.LoadFromFile('acc/'+mm+'.txt');
  p1:=copy(m,i+1,length(m)-i);
  memo8.Lines.Strings[2]:=p1;
  memo8.lines.strings[3]:=label8.caption;
  memo8.Lines.SaveToFile('acc/'+mm+'.txt');
  for i:=0 to list.Items.Count-1 do
    if list.items.strings[i]=socket.remoteaddress then
    serversocket1.socket.Connections[i].SendText('DONE');
end;

if copy(m,1,5)='ATAK-' then begin
  memo6.lines.Clear;
  mm:='';
  i:=6;
  repeat
  inc(i);
  until m[i]=':';
  p1:=copy(m,6,i-6);
  memo9.Lines.LoadFromFile('col/'+p1+'.txt');
  memo9.Lines.Strings[1]:=inttostr(strtoint(memo9.lines.strings[1])+1);
  memo9.Lines.savetoFile('col/'+p1+'.txt');
  p2:=i;

  repeat
  inc(p2);
  until m[p2]=':';
  p3:=copy(m,i+1,p2-i-1);
  memo9.Lines.LoadFromFile('col/'+p3+'.txt');
  memo9.Lines.Strings[1]:=inttostr(strtoint(memo9.lines.strings[1])-1);
  memo9.Lines.savetoFile('col/'+p3+'.txt');

  i:=strtoint(copy(m,p2+1,length(m)-p2));
  memo9.Lines.LoadFromFile('mapy.txt');
    memo9.Lines.Delete(i*3-3);
    memo9.lines.Insert(i*3-3,'1');
    memo9.lines.delete(i*3-2);
    memo9.lines.insert(i*3-2,p1);
    memo9.Lines.SaveToFile('mapy.txt');

  for i:=0 to list.Items.Count-1 do
    if list.items.strings[i]=socket.remoteaddress then
    serversocket1.socket.Connections[i].SendText('DONE');
end;

if m='MAPY1' then begin
  mapya.lines.clear;
  mapy1.lines.clear;
  mapy2.lines.clear;
  mapya.lines.LoadFromFile('mapy.txt');
  for i:=0 to 200 do
  mapy1.Lines.Add(mapya.Lines.strings[i]);
  for i:=0 to list.Items.Count-1 do
    if list.items.strings[i]=socket.remoteaddress then
    serversocket1.socket.Connections[i].SendText(mapy1.lines.text);
end;

if m='MAPY2' then begin
  mapy1.Clear;
  for i:=201 to 500 do
  mapy1.Lines.Add(mapya.Lines.strings[i]);
  for i:=0 to list.Items.Count-1 do
    if list.items.strings[i]=socket.remoteaddress then
    serversocket1.socket.Connections[i].SendText(mapy1.lines.text);
end;

if m='MAPY3' then begin
  mapy1.Clear;
  for i:=501 to 700 do
  mapy1.Lines.Add(mapya.Lines.strings[i]);
  for i:=0 to list.Items.Count-1 do
    if list.items.strings[i]=socket.remoteaddress then
    serversocket1.socket.Connections[i].SendText(mapy1.lines.text);
end;

if m='MAPY4' then begin
  mapy1.Clear;
  for i:=701 to 1000 do
  mapy1.Lines.Add(mapya.Lines.strings[i]);
  for i:=0 to list.Items.Count-1 do
    if list.items.strings[i]=socket.remoteaddress then
    serversocket1.socket.Connections[i].SendText(mapy1.lines.text);
end;

if m='MAPY5' then begin
  mapy1.Clear;
  for i:=1001 to 1300 do
  mapy1.Lines.Add(mapya.Lines.strings[i]);
  for i:=0 to list.Items.Count-1 do
    if list.items.strings[i]=socket.remoteaddress then
    serversocket1.socket.Connections[i].SendText(mapy1.lines.text);
end;

 if m='MAPY6' then begin
  mapy1.Clear;
  for i:=1301 to 1600 do
  mapy1.Lines.Add(mapya.Lines.strings[i]);
  for i:=0 to list.Items.Count-1 do
    if list.items.strings[i]=socket.remoteaddress then
    serversocket1.socket.Connections[i].SendText(mapy1.lines.text);
end;

 if m='MAPY7' then begin
  mapy1.Clear;
  for i:=1601 to 2000 do
  mapy1.Lines.Add(mapya.Lines.strings[i]);
  for i:=0 to list.Items.Count-1 do
    if list.items.strings[i]=socket.remoteaddress then
    serversocket1.socket.Connections[i].SendText(mapy1.lines.text);
end;

 if m='MAPY8' then begin
  mapy1.Clear;
  for i:=2001 to mapya.Lines.Count-1 do
  mapy1.Lines.Add(mapya.Lines.strings[i]);
  for i:=0 to list.Items.Count-1 do
    if list.items.strings[i]=socket.remoteaddress then
    serversocket1.socket.Connections[i].SendText(mapy1.lines.text);
end;



 end;
procedure TForm1.Timer1Timer(Sender: TObject);
var
i,j:integer;
zyje:boolean;
begin
for i:=0 to list.Items.Count-1 do begin
  zyje:=false;
  for j:=0 to list2.Items.Count-1 do
    if list.Items.Strings[i]=list2.Items.Strings[j] then zyje:=true;
  if zyje=false then begin
    memo1.Lines.Add('Od³¹czono '+list.Items.Strings[i]+' z powodu braku aktywnoœci.');
    list.Items.Delete(i);
    serversocket1.Socket.Disconnect(i);
  end;
end;
list2.Clear;

end;

procedure TForm1.Button6Click(Sender: TObject);
begin
memo1.clear;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
memo1.Lines.savetofile('consolelogs/'+edit3.text+'.txt');
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  label8.caption:=formatdatetime('yyyy-mm-dd hh:nn',idtime1.DateTime);
end;

end.
