unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    DataSource3: TDataSource;
    DBGrid3: TDBGrid;
    ADOTable3: TADOTable;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
ADOTable1.ConnectionString:='Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=MONDI';
ADOTable1.TableName:='Table_1';
DataSource1.DataSet:=ADOTable1;
DBGrid1.DataSource:=DataSource1;
//ADOTable1.Open;
ADOTable1.Active:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
ADOTable2.ConnectionString:='Provider=Microsoft.ace.oledb.12.0;Data source=bilgiler1.accdb';
ADOTable2.TableName:='Tablo1';
DataSource2.DataSet:=ADOTable2;
DBGrid2.DataSource:=DataSource2;
ADOTable2.Open;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
ADOTable3.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\User\Desktop\06.03.2024\bilgiler2.mdb;Persist Security Info=False';
ADOTable3.TableName:='Tablo1';
DataSource3.DataSet:=ADOTable3;
DBGrid3.DataSource:=DataSource3;
ADOTable3.Open;
end;

end.
