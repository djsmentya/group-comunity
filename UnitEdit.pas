unit UnitEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids;

type
  TFormEdit = class(TForm)
    dbedtaddresses: TDBEdit;
    dbedtcity: TDBEdit;
    dbedtdate: TDBEdit;
    dbedtklass: TDBEdit;
    dbedtname: TDBEdit;
    dbedtpatronymic: TDBEdit;
    dbedtschool: TDBEdit;
    dbedtsurname: TDBEdit;
    dbedtTelephone: TDBEdit;
    lbladdress: TLabel;
    lblFamil: TLabel;
    lblName: TLabel;
    lbltchestvo: TLabel;
    lblDate: TLabel;
    lblCity: TLabel;
    lblTel: TLabel;
    lblschool: TLabel;
    lblVUZ: TLabel;
    lblFacult: TLabel;
    lblKaf: TLabel;
    lblgroup: TLabel;
    lblkurs: TLabel;
    edtFamil: TEdit;
    edtName: TEdit;
    edtOtches: TEdit;
    edtCity: TEdit;
    edtDate: TMaskEdit;
    edtAddress: TEdit;
    edtTel: TEdit;
    edtSchool: TEdit;
    cbbVUZ: TComboBox;
    cbbFacult: TComboBox;
    cbbKaf: TComboBox;
    edtGroup: TEdit;
    cbbKurs: TComboBox;
    btnEdit: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEdit: TFormEdit;
 // CurrentUser: Integer;
implementation

uses
  UnitDataModule, UnitProfile;

{$R *.dfm}

procedure TFormEdit.FormShow(Sender: TObject);
begin
//DM.ztblCurUser.First;//переходит на первую запись
//CurrentUser:=DM.ztblCurUser.FieldValues['user_id']; //получаем значение
if FormProfile.QueryUs.Active then FormProfile.QueryUs.Close;
FormProfile.QueryUs.ParamByName('curuser').Value:=DM.CurrentUser;
FormProfile.QueryUs.ExecSQL;
FormProfile.QueryUs.Active:=True;
end;

procedure TFormEdit.FormCreate(Sender: TObject);
begin

FormEdit.edtFamil.Text:=FormEdit.dbedtsurname.Text;
FormEdit.edtName.Text:=FormEdit.dbedtname.Text;
FormEdit.edtOtches.Text:=FormEdit.dbedtpatronymic.Text;
FormEdit.edtDate.Text:=FormEdit.dbedtdate.Text;
FormEdit.edtCity.Text:=FormEdit.dbedtcity.Text;
FormEdit.edtAddress.Text:=FormEdit.dbedtaddresses.Text;
FormEdit.edtTel.Text:=FormEdit.dbedtTelephone.Text;
FormEdit.edtSchool.Text:=FormEdit.dbedtschool.Text;
FormEdit.edtGroup.Text:=FormEdit.dbedtklass.Text;
end;



procedure TFormEdit.btnEditClick(Sender: TObject);
begin
with DM.ztblUser do
begin
  Edit;
  FieldByName('surname').AsString:=edtFamil.Text;
  FieldByName('name').AsString:=edtName.Text;
  FieldByName('patronymic').AsString:=edtOtches.Text;
  FieldByName('date').AsString:=edtDate.Text;
  FieldByName('city').AsString:=edtCity.Text;
  FieldByName('addresses').AsString:=edtAddress.Text;
  FieldByName('Telephone').AsString:=edtTel.Text;
  FieldByName('school').AsString:=edtSchool.Text;
  FieldByName('Institute').AsString:=cbbVUZ.Text;
  FieldByName('faculty').AsString:=cbbFacult.Text;
  FieldByName('cathedra').AsString:=cbbKaf.Text;
  FieldByName('klass').AsString:=edtGroup.Text;
  FieldByName('kurs').AsString:=cbbKurs.Text;
  Post;
  Refresh;
end;
{
edtFamil.Clear;
edtName.Clear;
edtOtches.Clear;
edtCity.Clear;
edtDate.Clear;
edtCity.Clear;
edtAddress.Clear;
edtTel.Clear;
edtSchool.Clear;
cbbVUZ.Text:='';
cbbFacult.Text:='';
cbbKaf.Text:='';
edtGroup.Clear;
cbbKurs.Text:='';}
end;

end.
