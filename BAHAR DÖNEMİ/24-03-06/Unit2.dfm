object Form2: TForm2
  Left = 224
  Top = 124
  Width = 979
  Height = 563
  Caption = 'SQL KODLAMASI ILE KAYDETME'
  Color = clActiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 32
    Top = 32
    Width = 289
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 20
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 32
    Top = 72
    Width = 289
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 20
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 32
    Top = 120
    Width = 289
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    Sorted = True
    TabOrder = 2
    Items.Strings = (
      'ANKARA'
      'ANTALYA'
      'AYDIN'
      'HATAY'
      'ISPARTA'
      #304'STANBUL'
      'NAZILLI'
      'SAMSUN')
  end
  object Button1: TButton
    Left = 24
    Top = 160
    Width = 297
    Height = 97
    Caption = 'SQL KODU ILE KAYDET'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 328
    Top = 8
    Width = 609
    Height = 249
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
    Left = 848
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 816
    Top = 24
  end
end
