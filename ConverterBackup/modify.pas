unit modify;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, DB, DBTables, ComCtrls,
  StdCtrls, Buttons, Spin;

type
  TFormModify = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Table1: TTable;
    DataSource1: TDataSource;
    TabSheet3: TTabSheet;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    ComboBox3: TComboBox;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    Table2: TTable;
    Table3: TTable;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label5: TLabel;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    SpinEdit1: TSpinEdit;
    Label9: TLabel;
    Label10: TLabel;
    Edit7: TEdit;
    Label11: TLabel;
    Edit8: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormModify: TFormModify;

implementation

{$R *.dfm}

procedure TFormModify.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormModify.ComboBox3Change(Sender: TObject);
begin
  case ComboBox3.ItemIndex of
  0: begin
    Table3.Active := False;
    Table3.TableName := 'CLIENT';
    Table3.Active := True;
  end;
  1: begin
    Table3.Active := False;
    Table3.TableName := 'BOOK';
    Table3.Active := True;
  end;
  2: begin
    Table3.Active := False;
    Table3.TableName := 'BORROW';
    Table3.Active := True;
  end;
  end;
end;

procedure TFormModify.BitBtn2Click(Sender: TObject);
var
  N: integer;
begin
  if AnsiCompareStr(Edit1.Text, '') = 0 then
    showmessage('请填写用户名！')
  else begin
    if AnsiCompareStr(Edit3.Text, Edit4.Text) = 0 then
    begin
      case ComboBox1.ItemIndex of
        0: n := 3;
        1: n := 7;
      end;
      try
        Table1.InsertRecord([Edit1.Text, Edit2.Text, Edit3.Text, n]);
        showmessage('已更新！');
      except
        showmessage('更新失败，可能是用户名已被占用。');
      end;
    end
    else ShowMessage('密码不一致！');
  end;
end;

procedure TFormModify.BitBtn3Click(Sender: TObject);
begin
  if AnsiCompareStr(Edit5.Text, '') = 0 then
    showmessage('请填写书号！')
  else begin
    try
      Table2.InsertRecord([Edit5.Text, Edit6.Text, SpinEdit1.Value, Edit7.Text, Edit8.Text]);
      showmessage('已更新！');
    except
      showmessage('更新失败，可能是书号已被占用。');
    end;
  end;
end;

end.
