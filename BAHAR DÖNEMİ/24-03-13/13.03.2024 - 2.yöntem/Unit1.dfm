object Form1: TForm1
  Left = 709
  Top = 115
  Width = 715
  Height = 729
  Caption = 'KOD '#304'LE VER'#304' TABANI BA'#286'LANTISI'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 505
    Height = 120
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 504
    Top = 0
    Width = 193
    Height = 121
    Caption = 'SQL BA'#286'LANTISI'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 128
    Width = 505
    Height = 120
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 504
    Top = 128
    Width = 193
    Height = 121
    Caption = 'ACCDB BA'#286'LANTISI'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 504
    Top = 256
    Width = 193
    Height = 121
    Caption = 'MDB BA'#286'LANTISI'
    TabOrder = 4
    OnClick = Button3Click
  end
  object DBGrid3: TDBGrid
    Left = 0
    Top = 256
    Width = 505
    Height = 120
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    Left = 264
    Top = 40
  end
  object ADOTable1: TADOTable
    Left = 288
    Top = 40
  end
  object ADOTable2: TADOTable
    Left = 248
    Top = 168
  end
  object DataSource2: TDataSource
    Left = 224
    Top = 168
  end
  object DataSource3: TDataSource
    Left = 208
    Top = 296
  end
  object ADOTable3: TADOTable
    Left = 232
    Top = 296
  end
end
