unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm2 = class(TForm)
    ComboBox1: TComboBox;
    ADOQuery1: TADOQuery;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
i:integer;

begin
ComboBox1.Clear;
ADOQuery1.First;

ADOQuery1.SQL.Text:='SELECT DISTINCT(MEMLEKET) FROM Tablo2 WHERE MEMLEKET IS NOT NULL';



ADOQuery1.Open;


 //for i:=1 to ADOQuery1.RecordCount do


 while not (ADOQuery1.Eof) do begin
 ComboBox1.Items.Add(ADOQuery1['MEMLEKET']);
ADOQuery1.Next;

end;






end;
end.
