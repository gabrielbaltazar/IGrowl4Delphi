program DemoIGrowl;

uses
  IWRtlFix,
  IWStart,
  Unit1 in 'Unit1.pas' {FrmTeste: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  Growl4D.Types in '..\..\Source\Growl4D.Types.pas',
  Growl4D.Interfaces in '..\..\Source\Growl4D.Interfaces.pas',
  Growl4D.IW in '..\..\Source\Growl4D.IW.pas';

{$R *.res}

begin
  TIWStart.Execute(True);
end.
