program GroupComunity;

uses
  Forms,
  UnitMain in 'UnitMain.pas' {FormMain},
  UnitDataModule in 'UnitDataModule.pas' {DM: TDataModule},
  Tray_7 in 'Tray_7.pas' {Tray};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TTray, Tray);
  Application.Run;
end.
