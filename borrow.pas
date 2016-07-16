unit borrow;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs{, DBTables}, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, DB, sqldb,
  Buttons, ComCtrls{, SqlTimSt};

type
  TFormBorrow = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    BitBtn1: TBitBtn;
    DataSource1: TDataSource;
    Query1: TSQLQuery;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Table1: TSQLQuery;
    DataSource2: TDataSource;
    Query2: TSQLQuery;
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit4: TEdit;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Panel2: TPanel;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure OnCellClick(Column: TColumn);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBorrow: TFormBorrow;

implementation

{$R *.lfm}

procedure TFormBorrow.BitBtn2Click(Sender: TObject);
begin
  Table1.Active := True;
  Table1.TableName := 'CLIENT';
  if Table1.Lookup('cname', Edit2.Text, 'cname') = null then
    ShowMessage('没有这个用户')
  else
  begin
    Query2.Close;
    Query2.SQL.Clear;
    Query2.SQL.Add('select book.bno,bname,btime from borrow,book ');
    Query2.SQL.Add('where book.bno=borrow.bno ');
    Query2.SQL.Add('and cname=''' + Edit2.Text + '''');
    Query2.Prepare;
    Query2.Open;
    Query2.Fields[0].DisplayLabel := '书号';
    Query2.Fields[1].DisplayLabel := '书名';
    Query2.Fields[2].DisplayLabel := '借出时间';
    //Label6.Caption := '您现在已经借了' + inttostr(Query1.RecordCount) + '本书';
  end;
  Table1.Active := False;
end;

procedure TFormBorrow.OnCellClick(Column: TColumn);
begin
  Edit3.Text := DBGrid2.Fields[0].AsString;
end;

procedure TFormBorrow.BitBtn3Click(Sender: TObject);
begin
  Query2.Close;
  Query2.SQL.Clear;
  Query2.SQL.Add('delete from borrow ');
  Query2.SQL.Add('where bno=''' + Edit3.Text + ''' ');
  Query2.SQL.Add('and cname=''' + Edit2.Text + '''');
  Query2.ExecSQL;
  Query2.Close;
  Query2.SQL.Clear;
  Query2.SQL.Add('select book.bno,bname,btime from borrow,book ');
  Query2.SQL.Add('where book.bno=borrow.bno ');
  Query2.SQL.Add('and cname=''' + Edit2.Text + '''');
  Query2.Prepare;
  Query2.Open;
  Query2.Fields[0].DisplayLabel := '书号';
  Query2.Fields[1].DisplayLabel := '书名';
  Query2.Fields[2].DisplayLabel := '借出时间';
  //Label6.Caption := '请按查询按钮刷新';
end;

procedure TFormBorrow.BitBtn4Click(Sender: TObject);
begin
  Table1.Active := True;
  Table1.TableName := 'CLIENT';
  if Table1.Lookup('cname', Edit1.Text, 'cname') = null then
    ShowMessage('没有这个用户')
  else
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select book.bno,bname,btime from borrow,book ');
    Query1.SQL.Add('where book.bno=borrow.bno ');
    Query1.SQL.Add('and cname=''' + Edit1.Text + '''');
    Query1.Prepare;
    Query1.Open;
    Query1.Fields[0].DisplayLabel := '书号';
    Query1.Fields[1].DisplayLabel := '书名';
    Query1.Fields[2].DisplayLabel := '借出时间';
    //Label5.Caption := '您现在已经借了' + inttostr(Query1.RecordCount) + '本书';
  end;
  Table1.Active := False;
end;

procedure TFormBorrow.BitBtn5Click(Sender: TObject);
var
  temp: string;
begin
  //Table1.Active := True;
  //Table1.TableName := 'BOOK';
  //if Table1.Lookup('bname', Edit3.Text, 'bname') = null then
  //showmessage('没有这本书！')
  //else begin
  //Table1.Active := False;
  try
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('insert into borrow values');
    Query1.SQL.Add('(''' + Edit4.Text + ''',');
    Query1.SQL.Add('''' + Edit1.Text + ''',');
    Query1.SQL.Add('''' + FormatDateTime('DD-MM月-YY', DATE) + ''')');
    Query1.ExecSQL;
  except
    temp := '借书失败，原因可能是以下之一：' + #13 + #13;
    temp := temp + '1.您的借书数量已到；' + #13;
    temp := temp + '2.您所借的书已全部借完；' + #13;
    temp := temp + '3.您输入的书号不存在；' + #13;
    temp := temp + '4.您已经借了这本书。';
    ShowMessage(temp);
  end;
  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select book.bno,bname,btime from borrow,book ');
  Query1.SQL.Add('where book.bno=borrow.bno ');
  Query1.SQL.Add('and cname=''' + Edit1.Text + '''');
  Query1.Prepare;
  Query1.Open;
  Query1.Fields[0].DisplayLabel := '书号';
  Query1.Fields[1].DisplayLabel := '书名';
  Query1.Fields[2].DisplayLabel := '借出时间';
  //Label5.Caption := '请按查询按钮刷新';
  //end;
  //Table1.Active := False;
  //Query1.Post;
end;

end.
