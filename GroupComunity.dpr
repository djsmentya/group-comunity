program GroupComunity;

uses
  Forms,
  UnitMain in 'UnitMain.pas' {FormMain},
  UnitDataModule in 'UnitDataModule.pas' {DM: TDataModule},
  Unit1doska in 'Unit1doska.pas' {FormAdvert},
  UnitEvent in 'UnitEvent.pas' {FormEvent};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormAdvert, FormAdvert);
  Application.CreateForm(TFormEvent, FormEvent);
  Application.Run;
end.
