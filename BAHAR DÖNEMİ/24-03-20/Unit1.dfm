object Form1: TForm1
  Left = 490
  Top = 154
  Width = 490
  Height = 651
  Caption = 'Form1'
  Color = 12615680
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 187
    Top = 16
    Width = 8
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 136
    Top = 184
    Width = 185
    Height = 89
    Caption = #351'ifre t'#252'ret'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 136
    Top = 112
    Width = 169
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 136
    Top = 144
    Width = 169
    Height = 21
    TabOrder = 2
  end
  object ComboBox1: TComboBox
    Left = 128
    Top = 80
    Width = 177
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'DUSUK SEVIYE'
      'ORTA SEVIYE'
      'YUKSEK SEVIYE')
  end
  object Button2: TButton
    Left = 136
    Top = 288
    Width = 193
    Height = 81
    Caption = 'SISTEME KAYDET'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 376
    Width = 473
    Height = 233
    DataSource = DataSource1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=AAA.mdb;Persist Se' +
      'curity Info=False'
    CursorType = ctStatic
    TableName = 'Tablo1'
    Left = 256
    Top = 440
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 216
    Top = 440
  end
end
