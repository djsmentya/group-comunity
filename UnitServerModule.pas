unit UnitServerModule;

interface

uses
  SysUtils, Classes, ScktComp, uLkJSON;

type
  TServerModule = class(TDataModule)
    ClientSocket: TClientSocket;
    procedure sendChatMessage(message:String; user:integer);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServerModule: TServerModule;

implementation

{$R *.dfm}



procedure sendToServer(str:String);
begin
ServerModule.ClientSocket.Socket.SendText(str);
end;


procedure TServerModule.sendChatMessage(message:String; user:integer);
var
jsonString: String;
begin
 jsonString := '{command: message, contentent:'+ message +', user_id:' + IntToStr(user) + '}' ;
 sendToServer(jsonString);
end;
procedure TServerModule.DataModuleCreate(Sender: TObject);
begin
if not ServerModule.ClientSocket.Active then
ServerModule.ClientSocket.Open;
end;

end.
