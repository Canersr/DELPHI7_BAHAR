object Form2: TForm2
  Left = 905
  Top = 146
  Width = 440
  Height = 541
  Caption = 'Form2'
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 104
    Top = 64
    Width = 217
    Height = 105
    Caption = 'RAPORLA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object RvProject1: TRvProject
    Engine = RvSystem1
    Left = 208
    Top = 256
  end
  object RvDataSetConnection1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ADOQuery1
    Left = 160
    Top = 256
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 248
    Top = 256
  end
  object ADOQuery1: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=F:\DELPH'#304'7\BAHAR D'#214 +
      'NEM'#304'\24.05.28\raw report\bilgi.mdb;Persist Security Info=False'
    CursorType = ctStatic
    DataSource = Form1.DataSource1
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TABLO1')
    Left = 120
    Top = 256
  end
end
