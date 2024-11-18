unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Button2: TButton;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   i:integer;

implementation

uses Math;

{$R *.dfm}
procedure sifre(gelen:integer);
const karakter='QWERTYUIOPÐÜASDFGHJKLÞÝXCVBNMÖÇ123456789';
var
   i,istenen:integer; sonuc:string;
begin
Randomize;
for i :=1 to gelen do begin
istenen:=random(length(karakter))+1;
sonuc:=sonuc+karakter[istenen];
end;
form1.Label1.Caption:=sonuc;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
if (ComboBox1.ItemIndex=-1) then begin
ShowMessage('LÜTFEN MÜÞTERÝ SEVÝYESÝ SEÇÝNÝZ!!');
exit;
end;

if (ComboBox1.ItemIndex=0) then sifre(4);
if (ComboBox1.ItemIndex=1) then sifre(6);
if (ComboBox1.ItemIndex=2) then sifre(11);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin


if (edit1.Text='') then begin
ShowMessage('Kisinin adini giriniz');
edit1.SetFocus;

exit;
end;

if (edit1.Text='') then begin
ShowMessage('Kisinin soyadini giriniz');
edit1.SetFocus;

exit;
end;



      ////////////////////////////////////

ADOTable1.First;
      for i:=1 to ADOTable1.RecordCount do begin
 if (edit1.Text=ADOTable1['ADI']) and(edit2.Text=ADOTable1['SOYADI'])then begin

ShowMessage('BU KISI SISTEMDE ZATEN VAR');

exit;

end;

ADOTable1.Next;

end;

//kayýt



ADOTable1.Append;
ADOTable1['SIFRE']:= Label1.Caption;
ADOTable1['ADI'] := Edit1.Text;
ADOTable1['SOYADI']:= Edit2.Text;
end;





end.

