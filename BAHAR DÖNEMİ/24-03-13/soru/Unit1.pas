unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  sayi,i,fakt:longint;
implementation

{$R *.dfm}
procedure   hesapla(sayi:longint);
begin
fakt:=1;
for i:=1 to sayi do
fakt:= fakt *i;

end;



procedure TForm1.Button1Click(Sender: TObject);
begin
sayi:=strtoint(edit1.Text);

if (sayi <0) or (sayi>9) then   begin
ShowMessage('YANLÞ ARALIKTA SAYI GÝRDÝNÝZ');
Close;
end;

hesapla(sayi);


//---------PARAMETRE KULLANIMI--------//
ADOQuery1.Close; ADOQuery1.sql.Clear;
ADOQuery1.SQL.Text :='INSERT INTO Tablo1(SAYI,SONUC) VALUES(:a,:b)';
ADOQuery1.Parameters.ParamByName('a').Value :=sayi;
ADOQuery1.Parameters.ParamByName('b').Value :=fakt;
ADOQuery1.ExecSQL;
ADOQuery1.SQL.Text :='SELECT * FROM TABLO1';
ADOQuery1.Open;





end;




end.
