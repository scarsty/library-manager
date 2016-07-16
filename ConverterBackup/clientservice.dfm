object FormClientService: TFormClientService
  Left = 361
  Top = 159
  BorderStyle = bsDialog
  Caption = 'FormClientService'
  ClientHeight = 379
  ClientWidth = 479
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = OnFormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 479
    Height = 321
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #26597#35810#24050#20511#38405#22270#20070
      object DBGrid2: TDBGrid
        Left = 0
        Top = 104
        Width = 471
        Height = 189
        Align = alBottom
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 471
        Height = 105
        Align = alTop
        BevelInner = bvLowered
        BorderStyle = bsSingle
        TabOrder = 1
        object BitBtn1: TBitBtn
          Left = 312
          Top = 20
          Width = 121
          Height = 61
          Caption = #26597#35810
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object DBNavigator1: TDBNavigator
          Left = 24
          Top = 20
          Width = 264
          Height = 61
          DataSource = DataSource1
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #26597#35810#39302#34255#22270#20070
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 104
        Width = 471
        Height = 189
        Align = alBottom
        DataSource = DataSource2
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        Width = 471
        Height = 105
        Align = alTop
        BevelInner = bvLowered
        BorderStyle = bsSingle
        TabOrder = 1
        object RadioGroup1: TRadioGroup
          Tag = 1
          Left = 36
          Top = 12
          Width = 209
          Height = 73
          Caption = #26597#35810#36873#39033
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            #25353#20070#21495
            #25353#20070#21517
            #25353#20316#32773
            #25353#20986#29256#31038)
          TabOrder = 0
        end
        object Edit1: TEdit
          Left = 292
          Top = 24
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object BitBtn2: TBitBtn
          Left = 292
          Top = 60
          Width = 121
          Height = 25
          Caption = #26597#35810
          TabOrder = 2
          OnClick = BitBtn2Click
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00999999999999
            99999C4F0F44400004499CC0F040088880099CC0F008888000099CCF00888007
            88099CCC0888077780499CC0FF80777880499CC0FF00877804499C0FF077F870
            44499C0FF0777F8444499C0F077770F8F4499C0F07770CC084499C007700CCF8
            F4499CC000CCCCCCCC499CCCCCCCCCCCCCC99999999999999999}
        end
      end
    end
  end
  object BitBtn3: TBitBtn
    Left = 264
    Top = 336
    Width = 145
    Height = 25
    Caption = #36864#20986
    TabOrder = 1
    Kind = bkClose
  end
  object Query1: TQuery
    DatabaseName = 'mydb'
    Top = 328
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 32
    Top = 328
  end
  object Query2: TQuery
    DatabaseName = 'mydb'
    Left = 80
    Top = 328
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 120
    Top = 328
  end
  object Query3: TQuery
    DatabaseName = 'mydb'
    Left = 184
    Top = 328
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 224
    Top = 328
  end
end
