unit UnitProfile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, ZAbstractRODataset, ZDataset;

type
  TFormProfile = class(TForm)
    grpprofile: TGroupBox;
    dbtxtsurname: TDBText;
    dbtxtname: TDBText;
    dbtxtpatronymic: TDBText;
    lbldate: TLabel;
    dbtxtdate: TDBText;
    grpKontact: TGroupBox;
    lblCity: TLabel;
    dbtxtcity: TDBText;
    dbtxtaddresses: TDBText;
    lbladdress: TLabel;
    lblTel: TLabel;
    dbtxtTelephone: TDBText;
    grpObraz: TGroupBox;
    lblVUZ: TLabel;
    dbtxtInstitute: TDBText;
    lblFacult: TLabel;
    dbtxtfaculty: TDBText;
    lblCaf: TLabel;
    dbtxtcathedra: TDBText;
    dbtxtschool: TDBText;
    lblSchool: TLabel;
    lblGroup: TLabel;
    dbtxtklass: TDBText;
    QueryUs: TZReadOnlyQuery;
    dsQueryUs: TDataSource;
    dblkcbbstudent: TDBLookupComboBox;
    lblkurs: TLabel;
    dbtxtkurs: TDBText;
    lblsearch: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProfile: TFormProfile;
  CurrentUser: Integer;
implementation

uses UnitMain, UnitDataModule;

{$R *.dfm}

procedure TFormProfile.FormCreate(Sender: TObject);
begin
parent := FormMain.Panel;
end;

procedure TFormProfile.FormShow(Sender: TObject);
begin
DM.ztblCurUser.First;//переходит на первую запись
CurrentUser:=DM.ztblCurUser.FieldValues['user_id']; //получаем значение
if QueryUs.Active then QueryUs.Close;
QueryUs.ParamByName('curuser').Value:=CurrentUser;
QueryUs.ExecSQL;
QueryUs.Active:=True;
end;

end.
