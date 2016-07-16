object FormBorrow: TFormBorrow
  Left = 246
  Top = 125
  Width = 426
  Height = 404
  Caption = 'FormBorrow'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 418
    Height = 313
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #20511#20070
      object DBGrid1: TDBGrid
        Left = 0
        Top = 108
        Width = 410
        Height = 177
        Align = alBottom
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 410
        Height = 105
        Align = alTop
        BevelInner = bvLowered
        BorderStyle = bsSingle
        TabOrder = 1
        object Label1: TLabel
          Left = 32
          Top = 32
          Width = 49
          Height = 13
          AutoSize = False
          Caption = #29992#25143#21517
        end
        object Label2: TLabel
          Left = 32
          Top = 72
          Width = 49
          Height = 13
          AutoSize = False
          Caption = #20070#21495
        end
        object Edit1: TEdit
          Left = 88
          Top = 24
          Width = 97
          Height = 21
          TabOrder = 0
        end
        object Edit4: TEdit
          Left = 88
          Top = 64
          Width = 97
          Height = 21
          TabOrder = 1
        end
        object BitBtn4: TBitBtn
          Left = 232
          Top = 20
          Width = 97
          Height = 25
          Caption = #26597#35810
          TabOrder = 2
          OnClick = BitBtn4Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
            333333333337FF3333333333330003333333333333777F333333333333080333
            3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
            33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
            B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
            BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
            B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
            3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
            333333333337F33333333333333B333333333333333733333333}
          NumGlyphs = 2
        end
        object BitBtn5: TBitBtn
          Left = 232
          Top = 60
          Width = 97
          Height = 25
          Caption = #20511#20070
          TabOrder = 3
          OnClick = BitBtn5Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
            333333333337F33333333333333033333333333333373F333333333333090333
            33333333337F7F33333333333309033333333333337373F33333333330999033
            3333333337F337F33333333330999033333333333733373F3333333309999903
            333333337F33337F33333333099999033333333373333373F333333099999990
            33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
            33333333337F7F33333333333309033333333333337F7F333333333333090333
            33333333337F7F33333333333309033333333333337F7F333333333333090333
            33333333337F7F33333333333300033333333333337773333333}
          NumGlyphs = 2
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #36824#20070
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 108
        Width = 410
        Height = 177
        Align = alBottom
        DataSource = DataSource2
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = OnCellClick
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 410
        Height = 105
        Align = alTop
        BevelInner = bvLowered
        BorderStyle = bsSingle
        TabOrder = 1
        object Label3: TLabel
          Left = 32
          Top = 32
          Width = 49
          Height = 13
          AutoSize = False
          Caption = #29992#25143#21517
        end
        object Label4: TLabel
          Left = 32
          Top = 72
          Width = 41
          Height = 13
          AutoSize = False
          Caption = #20070#21495
        end
        object Edit2: TEdit
          Left = 88
          Top = 24
          Width = 97
          Height = 21
          TabOrder = 0
        end
        object Edit3: TEdit
          Left = 88
          Top = 64
          Width = 97
          Height = 21
          TabOrder = 1
        end
        object BitBtn2: TBitBtn
          Left = 232
          Top = 20
          Width = 97
          Height = 25
          Caption = #26597#35810
          TabOrder = 2
          OnClick = BitBtn2Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
            333333333337FF3333333333330003333333333333777F333333333333080333
            3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
            33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
            B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
            BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
            B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
            3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
            333333333337F33333333333333B333333333333333733333333}
          NumGlyphs = 2
        end
        object BitBtn3: TBitBtn
          Left = 232
          Top = 60
          Width = 97
          Height = 25
          Caption = #36824#20070
          TabOrder = 3
          OnClick = BitBtn3Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
            3333333333777F33333333333309033333333333337F7F333333333333090333
            33333333337F7F33333333333309033333333333337F7F333333333333090333
            33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
            3333333777737777F333333099999990333333373F3333373333333309999903
            333333337F33337F33333333099999033333333373F333733333333330999033
            3333333337F337F3333333333099903333333333373F37333333333333090333
            33333333337F7F33333333333309033333333333337373333333333333303333
            333333333337F333333333333330333333333333333733333333}
          NumGlyphs = 2
        end
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 248
    Top = 328
    Width = 145
    Height = 25
    TabOrder = 1
    Kind = bkClose
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 96
    Top = 328
  end
  object Query1: TQuery
    DatabaseName = 'mydb'
    Left = 56
    Top = 328
  end
  object Table1: TTable
    Active = True
    AutoRefresh = True
    DatabaseName = 'mydb'
    TableName = 'CLIENT'
    Left = 16
    Top = 328
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 184
    Top = 328
  end
  object Query2: TQuery
    DatabaseName = 'mydb'
    Left = 136
    Top = 328
  end
end
