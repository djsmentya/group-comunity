unit UnitChat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TFormChat = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormChat: TFormChat;

implementation

uses UnitMain;

{$R *.dfm}

procedure TFormChat.FormCreate(Sender: TObject);
begin
parent := FormMain.Panel;
end;

end.
