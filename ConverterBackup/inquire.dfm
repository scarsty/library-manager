object FormInquire: TFormInquire
  Left = 284
  Top = 156
  Width = 506
  Height = 407
  Caption = 'FormInquire'
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
    Width = 498
    Height = 329
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #29992#25143#20449#24687
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 120
        Width = 430
        Height = 25
        DataSource = DataSource1
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
        TabOrder = 0
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 152
        Width = 490
        Height = 149
        Align = alBottom
        DataSource = DataSource2
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 425
        Height = 113
        BevelInner = bvLowered
        BorderStyle = bsSingle
        TabOrder = 2
        object Label2: TLabel
          Left = 148
          Top = 32
          Width = 65
          Height = 13
          AutoSize = False
          Caption = #29992#25143#20840#21517
        end
        object Label3: TLabel
          Left = 12
          Top = 72
          Width = 145
          Height = 13
          AutoSize = False
          Caption = #21487#20197#20511#20070#30340#25968#37327
        end
        object Label1: TLabel
          Left = 16
          Top = 32
          Width = 65
          Height = 13
          AutoSize = False
          Caption = #29992#25143#21517
        end
        object Label4: TLabel
          Left = 188
          Top = 72
          Width = 145
          Height = 13
          AutoSize = False
          Caption = #24050#32463#20511#20070#30340#25968#37327
        end
        object DBEdit3: TDBEdit
          Left = 108
          Top = 64
          Width = 45
          Height = 21
          DataField = 'CCBNUM'
          DataSource = DataSource1
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 220
          Top = 24
          Width = 121
          Height = 21
          DataField = 'CFNAME'
          DataSource = DataSource1
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Left = 72
          Top = 24
          Width = 49
          Height = 21
          DataField = 'CNAME'
          DataSource = DataSource1
          TabOrder = 2
          OnChange = DBEdit1Change
        end
        object DBEdit10: TDBEdit
          Left = 296
          Top = 64
          Width = 49
          Height = 21
          TabOrder = 3
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #20070#31821#20449#24687
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 152
        Width = 490
        Height = 149
        Align = alBottom
        DataSource = DataSource4
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBNavigator2: TDBNavigator
        Left = 0
        Top = 120
        Width = 430
        Height = 25
        DataSource = DataSource3
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
        TabOrder = 1
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 425
        Height = 113
        BevelInner = bvLowered
        BorderStyle = bsSingle
        TabOrder = 2
        object DBEdit5: TDBEdit
          Left = 76
          Top = 24
          Width = 177
          Height = 21
          DataField = 'BNAME'
          DataSource = DataSource3
          TabOrder = 0
        end
        object DBEdit4: TDBEdit
          Left = 24
          Top = 24
          Width = 41
          Height = 21
          DataField = 'BNO'
          DataSource = DataSource3
          TabOrder = 1
          OnChange = DBEdit4Change
        end
        object DBEdit8: TDBEdit
          Left = 224
          Top = 64
          Width = 57
          Height = 21
          DataField = 'BNUM'
          DataSource = DataSource3
          TabOrder = 2
        end
        object DBEdit6: TDBEdit
          Left = 24
          Top = 64
          Width = 57
          Height = 21
          DataField = 'AUTHOR'
          DataSource = DataSource3
          TabOrder = 3
        end
        object DBEdit7: TDBEdit
          Left = 92
          Top = 64
          Width = 121
          Height = 21
          DataField = 'PUB'
          DataSource = DataSource3
          TabOrder = 4
        end
        object DBEdit9: TDBEdit
          Left = 292
          Top = 64
          Width = 57
          Height = 21
          TabOrder = 5
        end
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 360
    Top = 336
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkClose
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'mydb'
    TableName = 'CLIENT'
    Left = 8
    Top = 336
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 48
    Top = 336
  end
  object DataSource2: TDataSource
    DataSet = Query1
    Left = 128
    Top = 336
  end
  object Query1: TQuery
    DatabaseName = 'mydb'
    Left = 88
    Top = 336
  end
  object Table2: TTable
    Active = True
    DatabaseName = 'mydb'
    TableName = 'BOOK'
    Left = 208
    Top = 336
  end
  object DataSource3: TDataSource
    DataSet = Table2
    Left = 248
    Top = 336
  end
  object DataSource4: TDataSource
    DataSet = Query2
    Left = 328
    Top = 336
  end
  object Query2: TQuery
    DatabaseName = 'mydb'
    Left = 288
    Top = 336
  end
end
