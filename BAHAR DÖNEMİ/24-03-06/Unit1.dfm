object Form1: TForm1
  Left = 447
  Top = 119
  BorderStyle = bsToolWindow
  Caption = 'KOD '#304'LE VER'#304' TABANI BA'#286'LANTISI'
  ClientHeight = 700
  ClientWidth = 651
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
    Left = 16
    Top = 0
    Width = 457
    Height = 120
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 480
    Top = 0
    Width = 153
    Height = 121
    Caption = 'SQL BA'#286'LANTISI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 256
    Width = 473
    Height = 153
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 488
    Top = 256
    Width = 137
    Height = 145
    Caption = 'ACCDB BA'#286'LANTISI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object DBGrid3: TDBGrid
    Left = 8
    Top = 464
    Width = 489
    Height = 120
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button3: TButton
    Left = 504
    Top = 472
    Width = 113
    Height = 113
    Caption = 'MDB BA'#286'LANTISI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button3Click
  end
  object ADOTable1: TADOTable
    Left = 256
    Top = 32
  end
  object DataSource1: TDataSource
    Left = 288
    Top = 32
  end
  object ADOTable2: TADOTable
    Left = 296
    Top = 288
  end
  object DataSource2: TDataSource
    Left = 248
    Top = 296
  end
  object ADOTable3: TADOTable
    Left = 280
    Top = 512
  end
  object DataSource3: TDataSource
    Left = 312
    Top = 512
  end
end
