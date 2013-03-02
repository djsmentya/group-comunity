unit UnitChat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ScktComp;

type
  TFormChat = class(TForm)
    MChatArea: TMemo;
    ListBox1: TListBox;
    Panel1: TPanel;
    MTypeArea: TMemo;
    Panel2: TPanel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ClientSocketConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormChat: TFormChat;

implementation

uses UnitMain, UnitServerModule;

{$R *.dfm}

procedure TFormChat.FormCreate(Sender: TObject);
begin
parent := FormMain.Panel;

end;

procedure TFormChat.ClientSocketConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
MChatArea.Lines.add('Соединение установлено');
end;

procedure TFormChat.Button1Click(Sender: TObject);
begin

ServerModule.sendChatMessage(MTypeArea.SelText,1);
end;

end.
