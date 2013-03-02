unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, Menus, ExtCtrls;

type
  TFormMain = class(TForm)
    MainMenu: TMainMenu;
    fileMenu: TMenuItem;
    exitMenu: TMenuItem;
    edit: TMenuItem;
    ToolBar: TToolBar;
    view: TMenuItem;
    pref: TMenuItem;
    Panel: TPanel;
    doska: TMenuItem;
    ToolBtnAdvert: TToolButton;
 	zachetka: TMenuItem;
	btnZachetka: TToolButton;
    procedure exitMenuClick(Sender: TObject);
    procedure doskaClick(Sender: TObject);
    procedure zachetkaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

uses

  UnitDataModule, Tray_7, UnitEv, Unit1doska,
  UnitZachetka;

{$R *.dfm}

procedure TFormMain.exitMenuClick(Sender: TObject);
begin
close;
end;

procedure TFormMain.doskaClick(Sender: TObject);
begin
FormAdvert.Show;
end;

procedure TFormMain.zachetkaClick(Sender: TObject);
begin
FormZachetka.show;
end;

end.
