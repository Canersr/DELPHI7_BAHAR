object Form1: TForm1
  Left = 254
  Top = 132
  Width = 658
  Height = 419
  Caption = 'TUM BILGILERI RAPORLA'
  Color = 12615680
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 20
  object Button1: TButton
    Left = 32
    Top = 8
    Width = 257
    Height = 113
    Caption = 'TUM BILGILERI RAPORLA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object ADOQuery1: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\User\Deskt' +
      'op\24.04.24\bilgiler.mdb;Persist Security Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TABLO1')
    Left = 328
    Top = 16
  end
end
