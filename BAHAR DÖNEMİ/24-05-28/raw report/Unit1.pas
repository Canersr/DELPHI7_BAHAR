unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ADODB, RpDefine, RpCon, RpConDS, StdCtrls,
  RpBase, RpSystem, RpRave, RpRenderText, RpRenderRTF, RpRenderHTML,
  RpRender, RpRenderPDF;

type
  TForm1 = class(TForm)
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    RvDataSetConnection1: TRvDataSetConnection;
    RvSystem1: TRvSystem;
    RvRenderPDF1: TRvRenderPDF;
    RvRenderHTML1: TRvRenderHTML;
    RvRenderRTF1: TRvRenderRTF;
    RvRenderText1: TRvRenderText;
    RvProject1: TRvProject;
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

procedure TForm1.Button1Click(Sender: TObject);
begin
{
ADOQuery1.Close;
ADOQuery1.SQL.Text:='SELECT * FROM TABLO1 WHERE ADI="'+edit1.Text+'"AND SOYADI="'+edit2.Text+'"';

ADOQuery1.Open;

if (ADOQuery1.Recordset.RecordCount >0) then
RvProject1.Execute

ELSE BEGIN
ShowMessage('ARANAN KAYIT BULUNAMADI!');
ADOQuery1.Close;
ADOQuery1.SQL.Text:='SELECT * FROM TABLO1';
ADOQuery1.Open;
END;






end;

procedure TForm1.Button2Click(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Text:='SELECT * FROM TABLO1';
ADOQuery1.Open;
}

RvProject1.Execute;


end;

end.

