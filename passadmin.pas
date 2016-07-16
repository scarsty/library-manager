unit passadmin;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, sqldb{, DBTables}, StdCtrls, MaskEdit, DBCtrls, Buttons;

type
  TFormPassAdmin = class(TForm)
    DataSource1: TDataSource;
    Table1: TSQLQuery;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPassAdmin: TFormPassAdmin;
  Pass: Boolean;
  PassWord: AnsiString;

implementation

{$R *.lfm}

procedure TFormPassAdmin.BitBtn2Click(Sender: TObject);
begin
  Pass := False;
  Table1.Active := True;
  if Table1.Lookup('aname', Edit1.Text, 'apass') <> Null then
  begin
    Password := Table1.Lookup('aname', Edit1.Text, 'apass');
    if AnsiCompareStr(Password, Edit2.Text) = 0 then
    begin
      Pass := True;
      showmessage('您好！欢迎使用！');
    end
    else showmessage('您的密码信息有误！');
  end
  else showmessage('对不起，没有这个用户！');
  Table1.Active := False;
  Close;
end;

procedure TFormPassAdmin.BitBtn1Click(Sender: TObject);
begin
  Pass := False;
  Close;
end;

end.
