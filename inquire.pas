unit inquire;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs{, DBTables}, DB, sqldb, StdCtrls, MaskEdit, DBCtrls, Grids, DBGrids,
  ExtCtrls, Buttons, ComCtrls;

type
  TFormInquire = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Table1: TSQLQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Query1: TSQLQuery;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    Table2: TSQLQuery;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    Query2: TSQLQuery;
    Panel1: TPanel;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Panel2: TPanel;
    DBEdit5: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label4: TLabel;
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInquire: TFormInquire;

implementation

{$R *.lfm}

procedure TFormInquire.DBEdit1Change(Sender: TObject);
begin
  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select book.bno,bname,btime,30-round(sysdate-btime) from borrow,book');
  Query1.SQL.Add('where book.bno=borrow.bno ');
  Query1.SQL.Add('and cname=''' + DBEdit1.Text + '''');
  Query1.Prepare;
  Query1.Open;
  Query1.Fields[0].DisplayLabel := '书号';
  Query1.Fields[1].DisplayLabel := '书名';
  Query1.Fields[2].DisplayLabel := '借出时间';
  Query1.Fields[3].DisplayLabel := '到期天数';
  DBEdit10.Text := inttostr(Query1.RecordCount);
end;

procedure TFormInquire.DBEdit4Change(Sender: TObject);
begin
  Query2.Close;
  Query2.SQL.Clear;
  Query2.SQL.Add('select client.cname,cfname,btime,30-round(sysdate-btime) from borrow,client');
  Query2.SQL.Add('where client.cname=borrow.cname ');
  Query2.SQL.Add('and bno=''' + DBEdit4.Text + '''');
  Query2.Prepare;
  Query2.Open;
  Query2.Fields[0].DisplayLabel := '用户名';
  Query2.Fields[1].DisplayLabel := '全名';
  Query2.Fields[2].DisplayLabel := '借出时间';
  Query2.Fields[3].DisplayLabel := '到期天数';
  DBEdit9.Text := inttostr(Query2.RecordCount);
end;

end.
