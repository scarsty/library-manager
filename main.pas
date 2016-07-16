unit main;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, sqldb;

type
  TFormMain = class(TForm)
    Database1: TDatabase;
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    Image1: TImage;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

uses passadmin, inquire, modify, borrow, passclient, clientservice;

{$R *.lfm}

procedure TFormMain.BitBtn1Click(Sender: TObject);
begin
  FormPassAdmin.ShowModal;
  if PassAdmin.Pass = True then FormInquire.ShowModal;
end;

procedure TFormMain.BitBtn2Click(Sender: TObject);
begin
  FormPassAdmin.ShowModal;
  if PassAdmin.Pass = True then FormModify.ShowModal;
end;

procedure TFormMain.BitBtn3Click(Sender: TObject);
begin
  FormPassAdmin.ShowModal;
  if PassAdmin.Pass = True then FormBorrow.ShowModal;
end;

procedure TFormMain.BitBtn4Click(Sender: TObject);
begin
  FormPassClient.ShowModal;
  if PassClient.Pass = True then FormClientService.ShowModal;
end;

end.
