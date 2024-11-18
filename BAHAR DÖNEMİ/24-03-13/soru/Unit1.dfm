object Form1: TForm1
  Left = 232
  Top = 243
  Width = 979
  Height = 564
  Caption = 'Form1'
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 104
    Top = 24
    Width = 121
    Height = 41
    TabOrder = 0
  end
  object Button1: TButton
    Left = 104
    Top = 88
    Width = 121
    Height = 49
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 328
    Top = 224
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ADOQuery1: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=SORU;Data Source=.\'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Tablo1')
    Left = 472
    Top = 272
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 504
    Top = 272
  end
end
