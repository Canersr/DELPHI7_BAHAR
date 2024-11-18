object Form2: TForm2
  Left = 204
  Top = 131
  Width = 979
  Height = 563
  Caption = 'SQL KODLAMASI '#304'LE KAYDETME'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 8
    Top = 16
    Width = 217
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 20
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 8
    Top = 40
    Width = 217
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 20
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 64
    Width = 217
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'HATAY'
      'KOCAEL'#304
      'MERS'#304'N'
      'ADANA'
      'ANTALYA'
      'MU'#286'LA')
  end
  object Button1: TButton
    Left = 8
    Top = 88
    Width = 217
    Height = 73
    Caption = 'SQL KODU '#304'LE KAYDET'
    TabOrder = 3
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 232
    Top = 16
    Width = 729
    Height = 145
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ADOQuery1: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler2.mdb;Per' +
      'sist Security Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT*FROM TABLO1')
    Left = 672
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 648
    Top = 104
  end
end
