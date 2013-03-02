unit UnitDataModule;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, ZAbstractConnection, ZConnection;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
