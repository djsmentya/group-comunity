unit Tray_7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus,ShellApi;

type
  TTray = class(TForm)
    PopupMenu1: TPopupMenu;
    N2: TMenuItem;
    N: TMenuItem;
    N1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure OnMinimizeWindow(Sender:TObject);
    procedure DefineIconInformation(Action:Integer ; IC:TIcon);
    procedure ControlWindow(var MSG: TMessage);message WM_SYSCOMMAND;
    procedure MouseReaction(var MSG: TMessage);message WM_USER+1;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Tray: TTray;

implementation

uses UnitMain;

{$R *.dfm}

procedure TTray.FormCreate(Sender: TObject);
begin
parent := FormMain.Panel;
Application.OnMinimize:=OnMinimizeWindow;

end;

procedure TTray.DefineIconInformation(Action:Integer; IC:TIcon);
var
notificData:TNotifyIconData;
begin
with notificData do
begin
cbSize:=SizeOf(NotificData);
Wnd:=Self.Handle;
uID:=1;
uFlags:=NIF_ICON or NIF_MESSAGE or NIF_TIP;
uCallbackMessage:=WM_USER+1;
hIcon:=icon.Handle;
szTip:='Программа';
end;
case action of
1:Shell_NotifyIcon(Nim_Add,@notificData);
2:Shell_NotifyIcon(Nim_Delete,@notificData);
3:Shell_NotifyIcon(Nim_Modify,@notificData);
end;
end;

procedure TTray.ControlWindow(var MSG: TMessage);
begin
if msg.WParam=SC_MINIMIZE then
begin
DefineIconInformation(1,Application.Icon);
ShowWindow(Handle,SW_HIDE);
ShowWindow(Application.Handle,SW_HIDE);
end
else
inherited;
end;

procedure TTray.OnMinimizeWindow(Sender:TObject);
begin
PostMessage(Handle,WM_SYSCOMMAND, SC_MINIMIZE, 0);
SendMessage(Handle,WM_SYSCOMMAND, SC_MINIMIZE, 0);
end;




procedure TTray.MouseReaction(var MSG: TMessage);// ????? ?? ?????? ? ????? ????? ? ????
var
p:TPoint;
begin
GetCursorPos(p);
case msg.LParam of
WM_LBUTTONUP, WM_LBUTTONDBLCLK:
begin
DefineIconInformation(2, Application.Icon);
ShowWindow(Application.Handle,SW_SHOW);
ShowWindow(Handle,SW_SHOW);
end;
WM_RBUTTONUP:
begin
SetForegroundWindow(Handle);
PopupMenu1.Popup(p.X,p.Y); //?? ?????????? ????????? ????? ???? ??? ???? ????? ???????? ? ???? ?????????
postmessage(Handle,WM_NULL,0,0);
end;
end;
end;

// ????????? ??????

procedure TTray.N1Click(Sender: TObject);
begin
DefineIconInformation(2,Application.Icon);
ShowWindow(Application.Handle,SW_SHOW);
ShowWindow(Handle,SW_SHOW);
FormMain.Show;
end;

procedure TTray.N2Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
