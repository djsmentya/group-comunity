unit UnitDolgi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZAbstractTable,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids,
  ExtCtrls, DBCtrls;

type
  TFormDolgi = class(TForm)
    LabelNzvTabl: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDolgi: TFormDolgi;

implementation

uses UnitMain, UnitDataModule;

{$R *.dfm}

procedure TFormDolgi.FormCreate(Sender: TObject);
begin
parent := FormMain.Panel;
end;

end.
