unit UnitPreferences;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, Mask, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZSqlUpdate;

type
  TFormPref = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    EditAddress: TMaskEdit;
    QueryAddres: TZQuery;
    QueryPort: TZQuery;
    QueryAddresid: TIntegerField;
    QueryAddresname: TStringField;
    QueryAddresvalue: TStringField;
    EditPort: TMaskEdit;
    QuerySave: TZQuery;
    procedure TabSheet1Show(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPref: TFormPref;

implementation

uses UnitDataModule;

{$R *.dfm}

procedure TFormPref.TabSheet1Show(Sender: TObject);
begin
EditAddress.Text:= QueryAddres.Fields[2].AsString;
EditPort.Text := QueryPort.Fields[2].AsString;
end;

procedure TFormPref.BitBtn1Click(Sender: TObject);
begin
QuerySave.close;
QuerySave.ParamByName('name').AsString := 'host_port';
QuerySave.ParamByName('value').AsString := EditPort.EditText;
QuerySave.ExecSQL;

end;

end.
