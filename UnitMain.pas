unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, Menus, ExtCtrls;

type
  TFormMain = class(TForm)
    MainMenu: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    ToolBar: TToolBar;
    view: TMenuItem;
    mniN4: TMenuItem;
    Panel: TPanel;
    zachetka: TMenuItem;
    btnZachetka: TToolButton;
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
  UnitDataModule, UnitZachetka;

{$R *.dfm}

procedure TFormMain.zachetkaClick(Sender: TObject);
begin
FormZachetka.show;
end;

end.
