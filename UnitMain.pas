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

    procedure N2Click(Sender: TObject);
    procedure doskaClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

uses

  UnitDataModule, Tray_7, Unit1, Unit1doska;

{$R *.dfm}

procedure TFormMain.N2Click(Sender: TObject);
begin
close;
end;

procedure TFormMain.doskaClick(Sender: TObject);
begin
FormAdvert.Show;
end;

end.
