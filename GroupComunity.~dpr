program GroupComunity;

uses
  Forms,
  UnitMain in 'UnitMain.pas' {FormMain},
  UnitDataModule in 'UnitDataModule.pas' {DM: TDataModule},

  Tray_7 in 'Tray_7.pas' {Tray};
  Unit1doska in 'Unit1doska.pas' {FormAdvert},
  Unit1 in 'Unit1.pas' {FormEvent};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TDM, DM);

  Application.CreateForm(TTray, Tray);
  Application.CreateForm(TFormAdvert, FormAdvert);
  Application.CreateForm(TFormEvent, FormEvent);
  Application.Run;
end.
