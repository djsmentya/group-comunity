unit UnitEvent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, DB, ZAbstractRODataset, ZDataset;

type
  TFormEvent = class(TForm)
    Edit1: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Memo2: TMemo;
    Button2: TButton;
    Label7: TLabel;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Button3: TButton;
    ZReadOnlyQuery1: TZReadOnlyQuery;
    ZReadOnlyQuery2: TZReadOnlyQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEvent: TFormEvent;

implementation

uses UnitDataModule;

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
with ZReadOnlyQuery1 do
begin
if active then
close;
parambyname('Name').AsString:=DBLookupComboBox1.Text;
parambyname('Text').AsString:=Memo2.Text;
end;
ZReadOnlyQuery1.ExecSQL;
dm.ZAdvert.Refresh;
ZReadOnlyQuery1.Close;
dblookupcombobox1.KeyValue:=null;
  Memo2.Clear;
end;

procedure TFormEvent.Button3Click(Sender: TObject);
begin
dm.ZAdvert.Delete;
DBLookupComboBox2.KeyValue:=null;
end;

end.
