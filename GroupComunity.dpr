program GroupComunity;

uses
  Forms,
  UnitMain in 'UnitMain.pas' {FormMain},
  UnitDataModule in 'UnitDataModule.pas' {DM: TDataModule},
  UnitZachetka in 'UnitZachetka.pas' {FormZachetka},
  Unit1 in 'Unit1.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormZachetka, FormZachetka);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
