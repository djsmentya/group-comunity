unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ScktComp, ExtCtrls, ImgList, ComCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFormChat = class(TForm)
    ServerSocket: TServerSocket;
    ClientSocket: TClientSocket;
    PortEdit: TEdit;
    NikEdit: TEdit;
    TextEdit: TEdit;
    ChatMemo: TMemo;
    HostEdit: TEdit;
    ServerBtn: TButton;
    ClientBtn: TButton;
    SendBtn: TButton;
    Label4: TLabel;
    UserListView: TListView;
    Label6: TLabel;
    ImageList: TImageList;
    ServerTimer: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    QueryCurrentU: TZQuery;
    QueryCurrentUcathedra: TStringField;
    QueryCurrentUInstitute: TStringField;
    QueryCurrentUdate: TStringField;
    QueryCurrentUfaculty: TStringField;
    QueryCurrentUcity: TStringField;
    QueryCurrentUschool: TStringField;
    QueryCurrentUTelephone: TStringField;
    QueryCurrentUaddresses: TStringField;
    QueryCurrentUkurs: TStringField;
    QueryCurrentUid: TIntegerField;
    QueryCurrentUrole: TStringField;
    QueryCurrentUklass: TStringField;
    QueryCurrentUpatronymic: TStringField;
    QueryCurrentUsurname: TStringField;
    QueryCurrentUname: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure UpdateUserList;
    procedure UpdateUserMas;
    procedure ServerBtnClick(Sender: TObject);
    procedure ClientBtnClick(Sender: TObject);
    procedure ServerSocketClientConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocketClientDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure SendBtnClick(Sender: TObject);
    procedure ClientSocketRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocketDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocketConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerTimerTimer(Sender: TObject);
    procedure ClientSocketError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


Type
  TUserList = object
  Status: Byte;    // 1 - ������, 2 - ������
  Rec: Boolean;    // ������� ������ ������������ � ������
  Name: String;    // ��� (���)
  Image: Byte;     // ������ ������
 end;

var
  FormChat: TFormChat;
  i, j, com, ContList: Byte;
  len, pos, x: Word;
  text, StrUserList: String;
  UpdDo: Boolean;
  Buf: array[0..3] of Byte;
  UserMas: array[0..255] of TUserList; //������ ��������
  UItems: TListItem;

implementation
uses
UnitMain, UnitDataModule;
{$R *.dfm}

procedure TFormChat.FormCreate(Sender: TObject);
begin
parent := FormMain.Panel;
// ��������� �����
//  Caption:='��������������������� ���';
//  Application.Title:=Caption;
// ������������ �������� �����
  PortEdit.Text:='7777';
// ����� ��� �������� ��������� �� ����� �� ("��� �� ����")
  HostEdit.Text:='127.0.0.1';
// ������ ��� ��-���������, ��������� ���� ������ �������
if DM.CurrentUser > 0 then
begin
QueryCurrentU.ParamByName('id').AsString := IntToStr(DM.CurrentUser);
QueryCurrentU.ExecSQL;
QueryCurrentU.Active :=true;
  NikEdit.Text:= VarToStr(QueryCurrentU.FieldValues['name']);
  end;
  TextEdit.Clear;
  ChatMemo.Lines.Clear;
end;

procedure TFormChat.UpdateUserList;
begin
// ������� ������ ��������
  UserListView.Items.Clear;
// ������� ����������
  StrUserList:='';
// �������� ������� ������
  ContList:=0;
// ��������� �� ��������� �������
  For i:=0 to 255 do
    Begin
// ���� ������ �� ������
      If UserMas[i].Status<>0 then
        Begin
// ������� � UserListView ������
          UItems:=UserListView.Items.Add;
          UItems.Caption:=UserMas[i].Name;
          UItems.ImageIndex:=UserMas[i].Image;
// ���� ������������ �� �������
          If UserMas[i].Rec=False then ContList:=1;
// ���������� ������ �������������
          StrUserList:=StrUserList+UserMas[i].Name+Chr(152);
        end;
    end;
// ���� ��� ������������ ����������, � ���� ���� ���� �����
    If (ContList=0) And (ServerSocket.Socket.ActiveConnections<>0) then
      Begin
// ��������� �� ���� �������� �������
        For i:=0 to ServerSocket.Socket.ActiveConnections-1 do
          Begin
// �������� ������ ������ ������������� (��� ������� - 2)
            ServerSocket.Socket.Connections[i].SendText('2'+StrUserList);
          end;
      end;
end;

procedure TFormChat.UpdateUserMas;
begin
// ������� ������ � �����������
  For i:=1 to 255 do
    Begin
      UserMas[i].Status:=0;
      UserMas[i].Rec:=False;
      UserMas[i].Name:='�����������';
      UserMas[i].Image:=0;
    end;
// ��������� ������ �������������
  If ServerSocket.Socket.ActiveConnections<>0 then
    Begin
      For i:=1 to ServerSocket.Socket.ActiveConnections do
        Begin
          UserMas[i].Status:=2;
          UserMas[i].Name:='�����������';
          UserMas[i].Image:=0;
// ����������� ��� (���) ������������ �� ��� ������ (��� ������� - 1)
          ServerSocket.Socket.Connections[i-1].SendText('1');
        end;
    end;
end;

procedure TFormChat.ServerBtnClick(Sender: TObject);
begin
  If ServerBtn.Tag=0 then
    Begin
// ������� ClientBtn � ���� HostEdit, PortEdit, NikEdit �����������
      ClientBtn.Enabled:=False;
      HostEdit.Enabled:=False;
      PortEdit.Enabled:=False;
      NikEdit.Enabled:=False;
// ������� ��������� ���� � ServerSocket
      ServerSocket.Port:=StrToInt(PortEdit.Text);
// ��������� ������
      ServerSocket.Active:=True;
// ������� � ChatMemo ��������� � �������� ��������
      ChatMemo.Lines.Add('['+TimeToStr(Time)+']  ������ ������.');
// �������� ���
      ServerBtn.Tag:=1;
// ������ ������� �������
      ServerBtn.Caption:='������� ������';
// �������� ������ �������
      ServerTimer.Enabled:=True;
// ��������� ��������� �������
      UserMas[0].Status:=1;
      UserMas[0].Rec:=True;
      UserMas[0].Name:=NikEdit.Text;
      UserMas[0].Image:=1;
// ��������� ����������
      UpdDo:=True;
    end
  else
    Begin
// ��������� ������ �������
      ServerTimer.Enabled:=False;
// ������� ��������� �������
      UserMas[0].Status:=0;
      UserMas[0].Rec:=False;
      UserMas[0].Name:='�����������';
      UserMas[0].Image:=0;
// ��������� ����������
      UpdDo:=True;
// ������� ������ ��������
      UserListView.Items.Clear;      
// ������� ClientBtn � ���� HostEdit, PortEdit, NikEdit ������������
      ClientBtn.Enabled:=True;
      HostEdit.Enabled:=True;
      PortEdit.Enabled:=True;
      NikEdit.Enabled:=True;
// ��������� ������
      ServerSocket.Active:=False;
// ������� ��������� � ChatMemo
      ChatMemo.Lines.Add('['+TimeToStr(Time)+']  ������ ������.');
// ���������� ���� �������� ��������
      ServerBtn.Tag:=0;
// ���������� �������� ������� �������
      ServerBtn.Caption:='������� ������';
    end;
end;

procedure TFormChat.ClientBtnClick(Sender: TObject);
begin
  If ClientBtn.Tag=0 then
    Begin
// ������� ServerBtn � ���� HostEdit, PortEdit �����������
      ServerBtn.Enabled:=False;
      HostEdit.Enabled:=False;
      PortEdit.Enabled:=False;
// ������� ��������� ���� � ClientSocket
      ClientSocket.Port:=StrToInt(PortEdit.Text);
// ������� ���� � ����� (���� �������� HostEdit � ���)
      ClientSocket.Host:=HostEdit.Text;
      ClientSocket.Address:=HostEdit.Text;
// ��������� �������
      ClientSocket.Active:=True;
// �������� ���
      ClientBtn.Tag:=1;
// ������ ������� �������
      ClientBtn.Caption:='�����������';
    end
  else
    Begin
// ������� ServerBtn � ���� HostEdit, PortEdit ������������
      ServerBtn.Enabled:=True;
      HostEdit.Enabled:=True;
      PortEdit.Enabled:=True;
// ��������� �������
      ClientSocket.Active:=False;
// ������� ������ ��������
      UserListView.Items.Clear;      
// ������� ��������� � ChatMemo
      ChatMemo.Lines.Add('['+TimeToStr(Time)+']  ������ �������.');
// ���������� ���� �������� ��������
      ClientBtn.Tag:=0;
// ���������� �������� ������� �������
      ClientBtn.Caption:='������������';
    end;
end;

procedure TFormChat.ServerSocketClientConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
// ������� � ChatMemo ��������� � �������� ����������� �������
  ChatMemo.Lines.Add('['+TimeToStr(Time)+']  ����������� ������.');
// ��������� ����������
  UpdDo:=True;
end;

procedure TFormChat.ServerSocketClientDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
// ������� � ChatMemo ��������� � �������� ���������� �������
  ChatMemo.Lines.Add('['+TimeToStr(Time)+']  ������ ����������.');
// ��������� ����������
  UpdDo:=True;
end;

procedure TFormChat.SendBtnClick(Sender: TObject);
begin
// ��������, � ����� ������ ��������� ���������

  If (ServerSocket.Active=True) and (ServerSocket.Socket.ActiveConnections > 0) then
// ���������� ��������� � ������� ���� �������������

    For i:=0 to ServerSocket.Socket.ActiveConnections-1 do
      ServerSocket.Socket.Connections[i].SendText('0['+TimeToStr(Time)+']  '+NikEdit.Text+':  '+TextEdit.Text)
  else
// ���������� ��������� � �������
    ClientSocket.Socket.SendText('0['+TimeToStr(Time)+']  '+NikEdit.Text+':  '+TextEdit.Text);
// ��������� ��������� � ChatMemo
  ChatMemo.Lines.Add('['+TimeToStr(Time)+']  '+NikEdit.Text+':  '+TextEdit.Text);
// ������� TextEdit
  TextEdit.Clear;
end;

procedure TFormChat.ClientSocketRead(Sender: TObject;
  Socket: TCustomWinSocket);
begin
// ������� �����, ��� ��������, ����� ������
  text:=Socket.ReceiveText();
  com:=StrToInt(Copy(text,1,1));
  len:=Length(text)-1;
// ����������� �������
  Case com of
// ������� � ChatMemo ��������� � �������
    0: ChatMemo.Lines.Add(Copy(text,2,len));
// ������� ���� ��� �� ������
    1: ClientSocket.Socket.SendText('1'+NikEdit.Text);
// ������ ������ ������ �������������
    2: Begin
// ������� ������ ��������
         UserListView.Items.Clear;
// ������� ���� ����� ������ (�.�. ������� �������� � ���������)
         text:=text+Chr(152);
// ������ ��������� ������
         pos:=2;
// ������� ������� ��������
         x:=0;
// ��������� �� ����� ������ ������
         For j:=2 to len+1 do
           Begin
// ���������� � ������� �����
             x:=x+1;
// ���� ������ ���� (��������� ����� � ������)
             If Copy(text,j,1)=Chr(152) then
               Begin
// ������� � UserListView ������
                 UItems:=UserListView.Items.Add;
                 UItems.Caption:=Copy(text,pos,x-1);
// ������ ��������������� ������ ������������
                 If pos>2 then UItems.ImageIndex:=0 else UItems.ImageIndex:=1;
// ������� ������� ������� � ������ ������
                 pos:=j+1;
// ������� ������� ��������
                 x:=0;
               end;
           end;
       end;
   end;
end;

procedure TFormChat.ClientSocketConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
// ������� � ChatMemo ��������� � ���������� � ��������
  ChatMemo.Lines.Add('['+TimeToStr(Time)+']  ����������� � �������.');
end;

procedure TFormChat.ClientSocketDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
// ������� � ChatMemo ��������� � ������ �����
  ChatMemo.Lines.Add('['+TimeToStr(Time)+']  ������ �� ������.');
end;

procedure TFormChat.ServerTimerTimer(Sender: TObject);
begin
// ������� �� ������� ������������� �������
  If ServerSocket.Socket.ActiveConnections<>0 then
    Begin
// ���� �� ������������ �������
      For i:=1 to ServerSocket.Socket.ActiveConnections do
        Begin
// �������� ����� (���� ������ �� ��������, �� ����� ������)
          text:=ServerSocket.Socket.Connections[i-1].ReceiveText();
// �������, ��� ����� �� ����
          If text<>'' then
            Begin
// ������� ��� �������, ����� ������
              com:=StrToInt(Copy(text,1,1));
              len:=Length(text)-1;
// ����������� ������
              Case com of
// ��� ������ ���������
                0: Begin
// ������� � ChatMemo ��������� �������
                     ChatMemo.Lines.Add(Copy(text,2,len));
// �������� ��������� ������������� (����� ����, ��� �������)
                     For j:=0 to ServerSocket.Socket.ActiveConnections-1 do
                       Begin
                         If (j+1)<>i then ServerSocket.Socket.Connections[j].SendText('0'+Copy(text,2,len));
                       end;
                   end;
// ��� ������ ���� �������
                1: Begin
// ������� � ������ ���������� ���
                     UserMas[i].Name:=Copy(text,2,len);
// �������, ��� ������������ ������� � ������
                     UserMas[i].Rec:=True;
// ��������� ������
                     UpdateUserList;
                   end;
               end;
            end;
        end;
    end;
// ���������� �� ���������� �������� ����������
  If UpdDo=True then
    Begin
// ��������� ������ �������������
      UpdateUserMas;
// ��������� ������ �������������
      UpdateUserList;
// ��������� ����������      
      UpdDo:=False;
    end;
end;

procedure TFormChat.ClientSocketError(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
ErrorCode:=0;
// ������� ServerBtn � ���� HostEdit, PortEdit ������������
      ServerBtn.Enabled:=True;
      HostEdit.Enabled:=True;
      PortEdit.Enabled:=True;
// ��������� �������
      ClientSocket.Active:=False;
// ������� ������ ��������
      UserListView.Items.Clear;      
// ������� ��������� � ChatMemo
      ChatMemo.Lines.Add('['+TimeToStr(Time)+']  ������ �������.');
// ���������� ���� �������� ��������
      ClientBtn.Tag:=0;
// ���������� �������� ������� �������
      ClientBtn.Caption:='������������';
 ChatMemo.Lines.Add('['+TimeToStr(Time)+']  Server:  ������ ����������, �������� ������������ IP ������ � �����. �������� ����� ��������� FireWall');
end;

end.
