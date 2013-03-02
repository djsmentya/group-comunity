unit UnitZachetka;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DB, DBCtrls, Grids, DBGrids,
  ZAbstractRODataset, ZDataset, Mask;

type
  TFormZachetka = class(TForm)
    pgcZach: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    dbgrd1: TDBGrid;
    dbtxt1: TDBText;
    QueryUser: TZReadOnlyQuery;
    dsQueryUser: TDataSource;
    dbtxt2: TDBText;
    dsQueryRating: TDataSource;
    QueryRating: TZReadOnlyQuery;
    dbtxt3: TDBText;
    dbtxt4: TDBText;
    dbgrd2: TDBGrid;
    dsQueryPractik: TDataSource;
    QueryPractik: TZReadOnlyQuery;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    grp1: TGroupBox;
    Edit1: TEdit;
    btn1: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    btn2: TButton;
    grp2: TGroupBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    Edit2: TEdit;
    btn3: TButton;
    dbedtid: TDBEdit;
    ComboBox2: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    grp3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    Button1: TButton;
    dbtxt5: TDBText;
    Label11: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormZachetka: TFormZachetka;
  CurrentUser: Integer;
implementation

uses UnitMain, UnitDataModule;

{$R *.dfm}

procedure TFormZachetka.FormCreate(Sender: TObject);
begin
if (dbtxt5.Caption='student') then
begin
  ts2.TabVisible:=False;

end
else

ts2.TabVisible:=True;

parent := FormMain.Panel;


end;

procedure TFormZachetka.ComboBox1Select(Sender: TObject);
begin

if QueryRating.Active then QueryRating.Close;
QueryRating.ParamByName('curuser').Value:=CurrentUser;
QueryRating.ParamByName('kurs').Value:=ComboBox1.Text;
QueryRating.ExecSQL;
QueryRating.Active:=True;
dbgrd1.DataSource:=dsQueryRating;

  dbgrd1.Columns[0].Width:=64;
  dbgrd1.Columns[0].Alignment:=taCenter;
  dbgrd1.Columns[0].Title.Caption:='Предмет';
  dbgrd1.Columns[0].Title.Alignment:=taCenter;

  dbgrd1.Columns[1].Alignment:=taCenter;
  dbgrd1.Columns[1].Title.Caption:='Балл';
  dbgrd1.Columns[1].Title.Alignment:=taCenter;

if QueryPractik.Active then QueryPractik.Close;
QueryPractik.ParamByName('curuser').Value:=CurrentUser;
QueryPractik.ParamByName('kurs').Value:=ComboBox1.Text;
QueryPractik.ExecSQL;
QueryPractik.Active:=True;
dbgrd2.DataSource:=dsQueryPractik;

  dbgrd2.Columns[0].Width:=64;
  dbgrd2.Columns[0].Alignment:=taCenter;
  dbgrd2.Columns[0].Title.Caption:='Предмет';
  dbgrd2.Columns[0].Title.Alignment:=taCenter;

  dbgrd2.Columns[1].Width:=64;
  dbgrd2.Columns[1].Alignment:=taCenter;
  dbgrd2.Columns[1].Title.Caption:='Зачёт';
  dbgrd2.Columns[1].Title.Alignment:=taCenter;
end;

procedure TFormZachetka.FormShow(Sender: TObject);
begin
DM.ztblCurUser.First;//переходит на первую запись
CurrentUser:=DM.ztblCurUser.FieldValues['user_id']; //получаем значение
if QueryUser.Active then QueryUser.Close;
QueryUser.ParamByName('curuser').Value:=CurrentUser;
QueryUser.ExecSQL;
QueryUser.Active:=True;
end;

procedure TFormZachetka.btn1Click(Sender: TObject);
begin
with DM.ztblItems do
  begin
    Append;
    FieldByName('items').AsString:=Edit1.Text;
    Post;
    Refresh;
  end;
  Edit1.Clear;
end;

procedure TFormZachetka.btn2Click(Sender: TObject);
begin
DM.ztblItems.Delete;
DM.ztblItems.Refresh;
DBLookupComboBox1.KeyValue:=null;
end;

procedure TFormZachetka.btn3Click(Sender: TObject);
begin
 with DM.ztblRating do
 begin
   Append;
   FieldByName('kurs').AsString:=ComboBox2.Text;
   FieldByName('id_users').AsString:=DBEdit1.Text;
   FieldByName('id_items').AsString:=dbedtid.Text;
   FieldByName('rating').AsString:=Edit2.Text;
   Post;
   Refresh;
 end;
 DBLookupComboBox2.KeyValue:=null;
 DBLookupComboBox3.KeyValue:=null;
 ComboBox2.Text:='';
 Edit2.Clear;
end;

procedure TFormZachetka.Button1Click(Sender: TObject);
begin
 with DM.ztblPractik do
 begin
   Append;
   FieldByName('kurs').AsString:=ComboBox3.Text;
   FieldByName('id_users').AsString:=DBEdit1.Text;
   FieldByName('id_items').AsString:=dbedtid.Text;
   FieldByName('zachet').AsString:=ComboBox4.Text;
   Post;
   Refresh;
 end;
 DBLookupComboBox4.KeyValue:=null;
 DBLookupComboBox5.KeyValue:=null;
 ComboBox3.Text:='';
 ComboBox4.Text:='';
end;

end.
