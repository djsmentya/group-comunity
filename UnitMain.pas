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
    tray_start: TMenuItem;
    ToolButton1: TToolButton;
    procedure tray_startClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

uses
  UnitDataModule, Tray_7;

{$R *.dfm}

procedure TFormMain.tray_startClick(Sender: TObject);
begin
//Tray.show;
end;

procedure TFormMain.N2Click(Sender: TObject);
begin
close;
end;

end.
