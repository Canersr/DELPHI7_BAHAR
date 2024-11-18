unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, ADODB;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label1: TLabel;
    Edit8: TEdit;
    ADOQuery1: TADOQuery;
    procedure Edit7Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Edit7Change(Sender: TObject);
begin

if (edit7.Text='') then
ADOQuery1.Filtered :=false
else begin
ADOQuery1.Filter :='ADI LIKE '+ QuotedStr('%'+edit7.Text + '%') +
'OR SOYADI LIKE '+QuotedStr('%'+edit7.Text+'%');
ADOQuery1.Filtered :=true;
end;
end;
procedure TForm1.Button1Click(Sender: TObject);
begin
  ///////////////////////////////////////////////////
if (Button1.Caption ='GUNCELLE') then begin
ADOQuery1.SQL.Text := 'UPDATE TABLO1 SET ADI='''+(edit3.Text)
 +''' WHERE Kimlik = '+inttostr(ADOQuery1['KIMLIK']);

 //////////////////   VEYA    ////////////////////////////////

 ADOQuery1.SQL.Text:='UPDATE TABLO1 SET ADI='+QuotedStr(edit3.Text)
 +',SOYADI='QuotedStr(edit4.Text)
 +',MEMLEKET='QuotedStr(edit5.Text)
 +',GELIR='edit6.Text
 +',GIDER='edit8.Text
 +'WHERE ADI='+QuotedStr(edit1.Text)
 +'AND SOYADI='+QuotedStr(edit2.Text);
 ADOQuery1.ExecSQL;







end;

if (edit1.Text='') then begin
ShowMessage('KISININ ADINI YAZINIZ');
edit1.SetFocus;
exit;
end;


if (edit2.Text='') then begin
ShowMessage('KISININ SOYADINI YAZINIZ');
edit2.SetFocus;
exit;
end;

ADOQuery1.SQL.Text:='SELECT * FROM TABLO1 WHERE ADI ="'+Edit1.Text+'"AND SOYADI="'+Edit2.Text+'"';
ADOQuery1.Open;

if (ADOQuery1.RecordCount >=1) then begin
Button1.Caption:='GUNCELLE';
edit3.Text :=ADOQuery1 ['ADI'];
edit4.Text :=ADOQuery1 ['SOYADI'];
edit5.Text :=ADOQuery1 ['MEMLEKET'];
edit6.Text :=ADOQuery1 ['GELIR'];
edit8.Text :=ADOQuery1 ['GIDER'];

edit3.ReadOnly :=false;
edit4.ReadOnly :=false;
edit5.ReadOnly :=false;
edit6.ReadOnly :=false;
edit8.ReadOnly :=false;


end else begin
ShowMessage( edit1.text+' '+edit2.Text+' Ýsimli Müþteri Yok');
ADOQuery1.SQL.Text:='SELECT * FROM TABLO1';
ADOQuery1.Open;
Edit1.Clear; Edit2.Clear;
Edit1.SetFocus;
end;



end;







end.


