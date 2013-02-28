unit Unit1doska;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBCtrls, ExtCtrls;

type
  TFormAdvert = class(TForm)
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    DBText1: TDBText;
    DBMemo1: TDBMemo;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBText2: TDBText;
    DBMemo2: TDBMemo;
    DBNavigator2: TDBNavigator;
    Label2: TLabel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAdvert: TFormAdvert;

implementation

uses UnitMain, UnitDataModule, Unit1;

{$R *.dfm}

procedure TFormAdvert.FormCreate(Sender: TObject);
begin
parent:=formmain.panel;
end;

procedure TFormAdvert.Button1Click(Sender: TObject);
begin
FormEvent.Show;

end;

end.
