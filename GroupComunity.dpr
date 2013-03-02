program GroupComunity;

uses
  Forms,
  UnitMain in 'UnitMain.pas' {FormMain},
  UnitDataModule in 'UnitDataModule.pas' {DM: TDataModule},
  Tray_7 in 'Tray_7.pas' {Tray},
  Unit1doska in 'Unit1doska.pas' {FormAdvert},
  Unit1 in 'Unit1.pas' {FormEvent},
  UnitChat in 'UnitChat.pas' {FormChat},
  UnitPreferences in 'UnitPreferences.pas' {FormPref},
  UnitServerModule in 'UnitServerModule.pas' {ServerModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TTray, Tray);
  Application.CreateForm(TFormAdvert, FormAdvert);
  Application.CreateForm(TFormEvent, FormEvent);
  Application.CreateForm(TFormChat, FormChat);
  Application.CreateForm(TFormPref, FormPref);
  Application.CreateForm(TServerModule, ServerModule);
  Application.Run;
end.
