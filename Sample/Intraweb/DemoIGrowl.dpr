program DemoIGrowl;

uses
  IWRtlFix,
  IWStart,
  Unit1 in 'Unit1.pas' {FrmTeste: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  Growl4D.Types in '..\..\Source\Growl4D.Types.pas';

{$R *.res}

begin
  TIWStart.Execute(True);
end.
