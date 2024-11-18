unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, RpBase, RpSystem, RpCon, RpConDS, RpDefine,
  RpRave;

type
  TForm2 = class(TForm)
    Button1: TButton;
    RvProject1: TRvProject;
    RvDataSetConnection1: TRvDataSetConnection;
    RvSystem1: TRvSystem;
    ADOQuery1: TADOQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
soru:integer;
begin
Application.MessageBox('RAPOR ','RAPOR AL',4+32);
if soru=6 then
RvProject1.Execute;




end;

end.
