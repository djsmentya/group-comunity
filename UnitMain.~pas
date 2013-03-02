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
    ToolBtnAdvert: TToolButton;
    chat: TMenuItem;
    ToolBtnChat: TToolButton;

    procedure N2Click(Sender: TObject);
    procedure doskaClick(Sender: TObject);
    procedure chatClick(Sender: TObject);
    procedure mniN4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

uses

  UnitDataModule, Tray_7, Unit1, Unit1doska, uLkJSON, UnitChat,
  UnitPreferences, UnitServerModule;

{$R *.dfm}

procedure TFormMain.N2Click(Sender: TObject);
begin
close;
end;

procedure TFormMain.doskaClick(Sender: TObject);
begin
FormAdvert.Show;

end;

procedure TFormMain.chatClick(Sender: TObject);
begin
FormChat.show;
end;

procedure TFormMain.mniN4Click(Sender: TObject);
begin
FormPref.ShowModal;
end;

end.
