unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  sql,kontrol:String;
implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
sql:='SELECT*FROM TABLO1';
kontrol:='SELECT COUNT(*) FROM TABLO1 WHERE ADI="'+edit1.text+
'" and soyadý="'+edit2.text+'"';
ADOQuery1.SQL.Text :=kontrol;
ADOQuery1.Open;

if (ADOQuery1.Recordset.RecordCount>0) then begin
ADOQuery1.SQL.Text:=sql;
ADOQuery1.Open;
ShowMessage('KAYIT ZATEN VAR');
end else begin
ADOQuery1.Close;  ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('INSERT INTO TABLO1(ADI,SOYADI,MEMLEKET)');
ADOQuery1.SQL.Add('VALUES("'+Edit1.Text+'","'+Edit2.Text+'","'+ComboBox1.Text+'")');
ADOQuery1.ExecSQL;
{
ADOQuery1.Close; ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('SELECT*FROM TABLO1');
ADOQuery1.Open;
}
{
ADOQuery1.SQL.Add('SELECT*FROM TABLO1');
ADOQuery1.Open;
}
//VEYA
sql:='SELECT*FROM TABLO1';
ADOQuery1.SQL.Text:=sql;
ADOQuery1.Open;
end;
end;
end.
