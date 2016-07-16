program Lib;

uses
  Forms,
  main in 'main.pas' {FormMain},
  clientservice in 'clientservice.pas' {FormClientService},
  modify in 'modify.pas' {FormModify},
  inquire in 'inquire.pas' {FormInquire},
  passclient in 'passclient.pas' {FormPassClient},
  passadmin in 'passadmin.pas' {FormPassAdmin},
  borrow in 'borrow.pas' {FormBorrow};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormClientService, FormClientService);
  Application.CreateForm(TFormModify, FormModify);
  Application.CreateForm(TFormInquire, FormInquire);
  Application.CreateForm(TFormPassClient, FormPassClient);
  Application.CreateForm(TFormPassAdmin, FormPassAdmin);
  Application.CreateForm(TFormBorrow, FormBorrow);
  Application.Run;
end.
