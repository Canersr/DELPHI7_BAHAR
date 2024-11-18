object Form1: TForm1
  Left = 197
  Top = 200
  BorderStyle = bsToolWindow
  Caption = 'KAYIT UYGULAMA '#214'RNE'#286#304
  ClientHeight = 525
  ClientWidth = 963
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 344
    Top = 8
    Width = 3
    Height = 13
  end
  object Edit1: TEdit
    Left = 32
    Top = 40
    Width = 161
    Height = 21
    MaxLength = 25
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 32
    Top = 72
    Width = 161
    Height = 21
    MaxLength = 25
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 32
    Top = 112
    Width = 169
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    Sorted = True
    TabOrder = 2
  end
  object CheckBox1: TCheckBox
    Left = 224
    Top = 40
    Width = 97
    Height = 17
    Caption = 'EVL'#304
    TabOrder = 3
    OnClick = CheckBox1Click
  end
  object CheckBox2: TCheckBox
    Left = 224
    Top = 64
    Width = 97
    Height = 17
    Caption = 'BEKAR'
    TabOrder = 4
    OnClick = CheckBox2Click
  end
  object Edit3: TEdit
    Left = 216
    Top = 96
    Width = 441
    Height = 21
    MaxLength = 45
    TabOrder = 5
  end
  object BitBtn1: TBitBtn
    Left = 344
    Top = 32
    Width = 313
    Height = 57
    Cursor = crHandPoint
    Caption = 'SISTEME KAYDET'
    TabOrder = 6
    OnClick = BitBtn1Click
    Kind = bkAll
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 392
    Width = 963
    Height = 133
    Align = alBottom
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler.mdb;Pers' +
      'ist Security Info=False'
    CursorType = ctStatic
    TableName = 'Tablo1'
    Left = 88
    Top = 112
  end
  object ADOTable2: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler.mdb;Pers' +
      'ist Security Info=False'
    CursorType = ctStatic
    TableName = 'Tablo2'
    Left = 576
    Top = 440
  end
  object DataSource1: TDataSource
    DataSet = ADOTable2
    Left = 608
    Top = 440
  end
end
