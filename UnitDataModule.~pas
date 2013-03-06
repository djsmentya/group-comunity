unit UnitDataModule;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, ZAbstractConnection, ZConnection, inifiles, dialogs;

type
  TDM = class(TDataModule)
    conDB: TZConnection;
    ztblUser: TZTable;
    ZAdvert: TZTable;
    ZEvent: TZTable;
    ztblItems: TZTable;
    ztblRating: TZTable;
    ztblCurUser: TZTable;
    intgrfldItemsid: TIntegerField;
    strngfldItemsitems: TStringField;
    intgrfldCurUserid: TIntegerField;
    fltfldCurUseruser_id: TFloatField;
    intgrfldRatingid: TIntegerField;
    fltfldRatingid_users: TFloatField;
    fltfldRatingid_items: TFloatField;
    fltfldRatingrating: TFloatField;
    dsGrid: TDataSource;
    dsItems: TDataSource;
    dsUser: TDataSource;
    ztblRatingkurs: TStringField;
    ztblPractik: TZTable;
    dsPractik: TDataSource;
    IniQuery: TZQuery;
    ztblPractikid: TIntegerField;
    ztblPractikkurs: TStringField;
    ztblPractikid_users: TFloatField;
    ztblPractikid_items: TFloatField;
    ztblPractikzachet: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    ZtblDolgi: TZTable;
    DsDolgi: TDataSource;
    ZtblDolgipredmet: TStringField;
    ZtblDolgiDolg: TBooleanField;
    ZtblDolgiName: TStringField;
    ZtblDolgiid: TIntegerField;
    ZtblDolgiuser_id: TFloatField;
  private
    { Private declarations }
    user_id: integer;
  public
    { Public declarations }
   property CurrentUser : Integer read user_id write user_id;
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
Var IniFile : TIniFile;
begin
  IniFile := TIniFile.Create('settings.ini');
  CurrentUser :=  IniFile.ReadInteger('User','ID',-1);

  if CurrentUser <=0 then
  begin
   // IniQuery.ExecSQL;

   ztblUser.Insert;
   ztblUser.FieldByName('name').AsString := 'Аноним';
   ztblUser.Post;
    IniFile.WriteInteger('User','ID', StrToInt (ztblUser.FieldValues['id']));
    CurrentUser := StrToInt (ztblUser.FieldValues['id']);
     end;
  IniFile.Free;
end;

end.
