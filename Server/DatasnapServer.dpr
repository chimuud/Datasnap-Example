program DatasnapServer;

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  uFrmServer in 'uFrmServer.pas' {FrmServer},
  ServerMethodsUnit in 'ServerMethodsUnit.pas',
  ServerContainerUnit in 'ServerContainerUnit.pas' {ServerContainer: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmServer, FrmServer);
  Application.CreateForm(TServerContainer, ServerContainer);
  Application.Run;
end.

