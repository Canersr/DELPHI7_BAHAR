object Form2: TForm2
  Left = 959
  Top = 146
  Width = 344
  Height = 563
  Caption = 'Form2'
  Color = clAqua
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ComboBox1: TComboBox
    Left = 24
    Top = 48
    Width = 265
    Height = 28
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 20
    ParentFont = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 24
    Top = 104
    Width = 265
    Height = 153
    Caption = 'VERILERI YUKLE '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object ADOQuery1: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=AAA.mdb;Persist Se' +
      'curity Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TABLO2')
    Left = 296
    Top = 88
  end
end
