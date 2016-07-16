unit passclient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Buttons;

type
  TFormPassClient = class(TForm)
    DataSource1: TDataSource;
    Table1: TTable;
    GroupBox1: TGroupBox;
    Edit2: TEdit;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPassClient: TFormPassClient;
  Pass: Boolean;
  Password: string;
  ClientName: string;

implementation

{$R *.dfm}

procedure TFormPassClient.BitBtn1Click(Sender: TObject);
begin
  Pass := False;
  if Table1.Lookup('cname', Edit1.Text, 'cpass') <> Null then
  begin
    Password := Table1.Lookup('cname', Edit1.Text, 'cpass');
    if AnsiCompareStr(Password, Edit2.Text) = 0 then
    begin
      Pass := True;
      ClientName := Table1.Lookup('cname', Edit1.Text, 'cfname');
      showmessage(ClientName + '，您好！欢迎使用！');
    end
    else showmessage('您的密码信息有误！');
  end
  else showmessage('对不起，没有这个用户！');
  Close;
end;

procedure TFormPassClient.BitBtn2Click(Sender: TObject);
begin
  Pass := False;
  Close;
end;

end.
