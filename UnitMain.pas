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
    doska: TMenuItem;
    ToolButton1: TToolButton;
    procedure doskaClick(Sender: TObject);
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
<<<<<<< HEAD
  UnitDataModule, Tray_7;
  UnitDataModule, Unit1, Unit1doska;

{$R *.dfm}

procedure TFormMain.N2Click(Sender: TObject);
begin
close;

procedure TFormMain.doskaClick(Sender: TObject);
begin
FormAdvert.Show;
>>>>>>> refs/remotes/origin/Epur
end;

end.
