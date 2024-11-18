unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    ADOTable1: TADOTable;
    DBGrid1: TDBGrid;
    ADOTable2: TADOTable;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  durum:string;
implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
VAR
i:integer;
begin
Label1.Caption :='KAYIT SIRASI : ' + IntToStr(ADOTable2.RecordCount);

for i:=1 to ADOTable1.Recordset.RecordCount do begin
ComboBox1.Items.Add(ADOTable1['ILLER']);
ADOTable1.Next;
end;



end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if (CheckBox1.Checked=true) then begin
durum:=CheckBox1.Caption;
CheckBox2.Checked:=false;
end;





end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
if (CheckBox2.Checked=true) then begin
durum:=CheckBox2.Caption;
CheckBox1.Checked:=false;
end;


end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin

if (edit1.Text='') then
ShowMessage('MUSTERININ ADINI GIRINIZ' )
else
if (Edit2.Text='') then
ShowMessage('MUSTERININ SOYADINI GIRINIZ')
else
if (ComboBox1.ItemIndex=-1) then
ShowMessage('MUSTERININ MEMLEKETINI GIRINIZ')
else
if (CheckBox1.Checked=false) and (CheckBox2.Checked=false) then
ShowMessage('MUSTERININ MEDENI DURUMUNU GIRINIZ')
else
if (edit3.Text='') then
ShowMessage('MUSTERININ ADRESINI GIRINIZ')
else begin //KAYIT ZAMANI
ADOTable2.Append;
ADOTable2.FieldValues ['ADI']:=Edit1.Text;
ADOTable2.FieldValues ['SOYADI']:=Edit2.Text;
ADOTable2.FieldValues ['MEMLEKET']:=ComboBox1.Text;
ADOTable2.FieldValues ['MEDENIHAL']:=durum;
ADOTable2.FieldValues ['ADRES']:=Edit3.Text;
ADOTable2.FieldValues ['KAYITTARIHI']:=DateToStr(now);
ADOTable2.Post;
Label1.Caption :='KAYIT SIRASI : ' + IntToStr(ADOTable2.RecordCount);
ShowMessage('BILGILER KAYDEDILDI');

edit1.Clear; edit2.Clear; Edit3.Clear;
ComboBox1.ItemIndex:=-1;
CheckBox1.Checked:=false;
CheckBox2.Checked:=false;
Edit1.SetFocus;





end; //KAYIT BITIYOR



end;

end.
