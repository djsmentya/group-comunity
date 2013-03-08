unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, Menus, ExtCtrls, ShellApi;

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
    N1: TMenuItem;
    profile: TMenuItem;
    btnProfile: TToolButton;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    GroupComunity1: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    procedure exitMenuClick(Sender: TObject);
    procedure doskaClick(Sender: TObject);
    procedure zachetkaClick(Sender: TObject);
    procedure profileClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure GroupComunity1Click(Sender: TObject);
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
  UnitZachetka, UnitProfile, UnitEdit, Unit2;

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

procedure TFormMain.profileClick(Sender: TObject);
begin
FormProfile.show;
end;

procedure TFormMain.N1Click(Sender: TObject);
begin
FormEdit.ShowModal;

end;

procedure TFormMain.N3Click(Sender: TObject);
begin
FormMain.WindowState:= wsMinimized;
end;

procedure TFormMain.N6Click(Sender: TObject);
begin
about.show;
end;

procedure TFormMain.GroupComunity1Click(Sender: TObject);
begin
ShellExecute(handle, 'open', 'info.pdf', '-2>err.txt', nil, SW_SHOW);
end;

end.
