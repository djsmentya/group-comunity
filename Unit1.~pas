unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, DB, ZAbstractRODataset, ZDataset,
  ZAbstractDataset;

type
  TFormEvent = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Memo1: TMemo;
    Button1: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Memo2: TMemo;
    Label7: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Button2: TButton;
    Button3: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Label8: TLabel;
    Label9: TLabel;
    Edit2: TEdit;
    Label10: TLabel;
    Memo3: TMemo;
    Button4: TButton;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Label14: TLabel;
    Memo4: TMemo;
    Button5: TButton;
    Label15: TLabel;
    Label16: TLabel;
    Button6: TButton;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEvent: TFormEvent;

implementation

uses UnitDataModule, Unit1doska;

{$R *.dfm}

procedure TFormEvent.Button1Click(Sender: TObject);
begin
if (Memo1.Text='')
then showmessage ('¬ведите данные')
else
with dm.ZAdvert do
      begin
      Append;
      FieldByName('Name').AsString := Edit1.Text;
      FieldByName('Text').AsString := Memo1.Text;
      post;
      Refresh;
end;
edit1.Clear;
Memo1.Clear;
end;

procedure TFormEvent.Button2Click(Sender: TObject);
begin
if (Memo2.Text='')
then showmessage ('¬ведите данные')
else
with ZQuery1 do
begin
if active then
close;
parambyname('Name').AsString:=DBLookupComboBox1.Text;
parambyname('Text').AsString:=Memo2.Text;
end;
ZQuery1.ExecSQL;
dm.ZAdvert.Refresh;
ZQuery1.Close;
dblookupcombobox1.KeyValue:=null;
  Memo2.Clear;
end;

procedure TFormEvent.Button3Click(Sender: TObject);
begin
dm.ZAdvert.Delete;
DBLookupComboBox2.KeyValue:=null;
end;

procedure TFormEvent.Button4Click(Sender: TObject);
begin
if (Memo3.Text='')
then showmessage ('¬ведите данные')
else
with dm.ZEvent do
      begin
      Append;
      FieldByName('Name').AsString := Edit2.Text;
      FieldByName('Text').AsString := Memo3.Text;
      post;
      Refresh;
end;
edit2.Clear;
Memo3.Clear;
end;

procedure TFormEvent.Button5Click(Sender: TObject);
begin
if (Memo4.Text='')
then showmessage ('¬ведите данные')
else
with ZQuery2 do
begin
if active then
close;
parambyname('Name').AsString:=DBLookupComboBox3.Text;
parambyname('Text').AsString:=Memo4.Text;
end;
ZQuery2.ExecSQL;
dm.ZEvent.Refresh;
ZQuery2.Close;
dblookupcombobox3.KeyValue:=null;
  Memo4.Clear;
end;

procedure TFormEvent.Button6Click(Sender: TObject);
begin
dm.ZEvent.Delete;
DBLookupComboBox4.KeyValue:=null;
end;

procedure TFormEvent.Button7Click(Sender: TObject);
begin
FormAdvert.Showmodal;
FormEvent.Visible:=false;
end;

end.
