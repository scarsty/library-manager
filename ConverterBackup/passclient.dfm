object FormPassClient: TFormPassClient
  Left = 323
  Top = 260
  Width = 306
  Height = 204
  Caption = 'FormPassClient'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 24
    Top = 16
    Width = 225
    Height = 105
    Caption = #35831#36755#20837#29992#25143#21517#21644#23494#30721
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 49
      Height = 13
      AutoSize = False
      Caption = #29992#25143#21517
    end
    object Label2: TLabel
      Left = 24
      Top = 64
      Width = 49
      Height = 13
      AutoSize = False
      Caption = #23494#30721
    end
    object Edit2: TEdit
      Left = 80
      Top = 57
      Width = 97
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'New Gulim'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 80
      Top = 24
      Width = 65
      Height = 21
      TabOrder = 0
    end
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 136
    Width = 97
    Height = 25
    Caption = #30331#38470
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5555000050000005555544F00BFBFBF0555544F0BFBF0000055544F0FBFBFBFB
      F05544F0BFBF0000000544F0F000FBFBF00544F0B0B000000F000000F0F000FB
      FB0F555500BFBFBFB0F455555500FBFB0F44555555550000F44455555555550F
      4444555555555550044455555555555550045555555555555550}
  end
  object BitBtn2: TBitBtn
    Left = 152
    Top = 136
    Width = 91
    Height = 25
    Caption = #36864#20986
    TabOrder = 2
    OnClick = BitBtn2Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
      F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
      000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
      338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
      45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
      3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
      F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
      000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
      338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
      4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
      8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
      333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
      0000}
    NumGlyphs = 2
  end
  object DataSource1: TDataSource
    Left = 256
    Top = 56
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'mydb'
    TableName = 'CLIENT'
    Left = 256
    Top = 16
  end
end
