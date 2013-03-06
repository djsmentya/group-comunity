unit UnitSchedule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, inifiles;

type
  TFormSchedule = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    GroupBox2: TGroupBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    ComboBox9: TComboBox;
    ComboBox10: TComboBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    GroupBox3: TGroupBox;
    ComboBox11: TComboBox;
    ComboBox12: TComboBox;
    ComboBox13: TComboBox;
    ComboBox14: TComboBox;
    ComboBox15: TComboBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    GroupBox4: TGroupBox;
    ComboBox16: TComboBox;
    ComboBox17: TComboBox;
    ComboBox18: TComboBox;
    ComboBox19: TComboBox;
    ComboBox20: TComboBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    GroupBox5: TGroupBox;
    ComboBox21: TComboBox;
    ComboBox22: TComboBox;
    ComboBox23: TComboBox;
    ComboBox24: TComboBox;
    ComboBox25: TComboBox;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    CheckBox23: TCheckBox;
    CheckBox24: TCheckBox;
    CheckBox25: TCheckBox;
    GroupBox6: TGroupBox;
    ComboBox26: TComboBox;
    ComboBox27: TComboBox;
    ComboBox28: TComboBox;
    ComboBox29: TComboBox;
    ComboBox30: TComboBox;
    CheckBox26: TCheckBox;
    CheckBox27: TCheckBox;
    CheckBox28: TCheckBox;
    CheckBox29: TCheckBox;
    CheckBox30: TCheckBox;
    ComboBox61: TComboBox;
    Label2: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    GroupBox7: TGroupBox;
    ComboBox31: TComboBox;
    ComboBox32: TComboBox;
    ComboBox33: TComboBox;
    ComboBox34: TComboBox;
    ComboBox35: TComboBox;
    CheckBox31: TCheckBox;
    CheckBox32: TCheckBox;
    CheckBox33: TCheckBox;
    CheckBox34: TCheckBox;
    CheckBox35: TCheckBox;
    GroupBox8: TGroupBox;
    ComboBox36: TComboBox;
    ComboBox37: TComboBox;
    ComboBox38: TComboBox;
    ComboBox39: TComboBox;
    ComboBox40: TComboBox;
    CheckBox36: TCheckBox;
    CheckBox37: TCheckBox;
    CheckBox38: TCheckBox;
    CheckBox39: TCheckBox;
    CheckBox40: TCheckBox;
    GroupBox9: TGroupBox;
    ComboBox41: TComboBox;
    ComboBox42: TComboBox;
    ComboBox43: TComboBox;
    ComboBox44: TComboBox;
    ComboBox45: TComboBox;
    CheckBox41: TCheckBox;
    CheckBox42: TCheckBox;
    CheckBox43: TCheckBox;
    CheckBox44: TCheckBox;
    CheckBox45: TCheckBox;
    GroupBox10: TGroupBox;
    ComboBox46: TComboBox;
    ComboBox47: TComboBox;
    ComboBox48: TComboBox;
    ComboBox49: TComboBox;
    ComboBox50: TComboBox;
    CheckBox46: TCheckBox;
    CheckBox47: TCheckBox;
    CheckBox48: TCheckBox;
    CheckBox49: TCheckBox;
    CheckBox50: TCheckBox;
    GroupBox11: TGroupBox;
    ComboBox51: TComboBox;
    ComboBox52: TComboBox;
    ComboBox53: TComboBox;
    ComboBox54: TComboBox;
    ComboBox55: TComboBox;
    CheckBox51: TCheckBox;
    CheckBox52: TCheckBox;
    CheckBox53: TCheckBox;
    CheckBox54: TCheckBox;
    CheckBox55: TCheckBox;
    GroupBox12: TGroupBox;
    ComboBox56: TComboBox;
    ComboBox57: TComboBox;
    ComboBox58: TComboBox;
    ComboBox59: TComboBox;
    ComboBox60: TComboBox;
    CheckBox56: TCheckBox;
    CheckBox57: TCheckBox;
    CheckBox58: TCheckBox;
    CheckBox59: TCheckBox;
    CheckBox60: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    Timer2: TTimer;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Button3: TButton;
    Panel3: TPanel;
    Panel4: TPanel;
    procedure ReadParams;
    procedure WriteParams;
    procedure ComboBox61Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSchedule: TFormSchedule;
  IniFile : TIniFile;
  Path:String;

implementation

uses UnitMain;

{$R *.dfm}

procedure TFormSchedule.ReadParams;
begin
Path:=Application.ExeName;
Path:=ExtractFileDir(Path);
if Path[Length(Path)]<>'\' then Path:=Path+'\';
IniFile:=TIniFile.Create(Path+'1.ini');
ComboBox1.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox1ItemIndex',ComboBox1.ItemIndex);
ComboBox2.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox2ItemIndex',ComboBox2.ItemIndex);
ComboBox3.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox3ItemIndex',ComboBox3.ItemIndex);
ComboBox4.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox4ItemIndex',ComboBox4.ItemIndex);
ComboBox5.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox5ItemIndex',ComboBox5.ItemIndex);
ComboBox6.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox6ItemIndex',ComboBox6.ItemIndex);
ComboBox7.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox7ItemIndex',ComboBox7.ItemIndex);
ComboBox8.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox8ItemIndex',ComboBox8.ItemIndex);
ComboBox9.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox9ItemIndex',ComboBox9.ItemIndex);
ComboBox10.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox10ItemIndex',ComboBox10.ItemIndex);
ComboBox11.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox11ItemIndex',ComboBox11.ItemIndex);
ComboBox12.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox12ItemIndex',ComboBox12.ItemIndex);
ComboBox13.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox13ItemIndex',ComboBox13.ItemIndex);
ComboBox14.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox14ItemIndex',ComboBox14.ItemIndex);
ComboBox15.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox15ItemIndex',ComboBox15.ItemIndex);
ComboBox16.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox16ItemIndex',ComboBox16.ItemIndex);
ComboBox17.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox17ItemIndex',ComboBox17.ItemIndex);
ComboBox18.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox18ItemIndex',ComboBox18.ItemIndex);
ComboBox19.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox19ItemIndex',ComboBox19.ItemIndex);
ComboBox20.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox20ItemIndex',ComboBox20.ItemIndex);
ComboBox21.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox21ItemIndex',ComboBox21.ItemIndex);
ComboBox22.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox22ItemIndex',ComboBox22.ItemIndex);
ComboBox23.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox23ItemIndex',ComboBox23.ItemIndex);
ComboBox24.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox24ItemIndex',ComboBox24.ItemIndex);
ComboBox25.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox25ItemIndex',ComboBox25.ItemIndex);
ComboBox26.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox26ItemIndex',ComboBox26.ItemIndex);
ComboBox27.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox27ItemIndex',ComboBox27.ItemIndex);
ComboBox28.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox28ItemIndex',ComboBox28.ItemIndex);
ComboBox29.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox29ItemIndex',ComboBox29.ItemIndex);
ComboBox30.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox30ItemIndex',ComboBox30.ItemIndex);
ComboBox31.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox31ItemIndex',ComboBox31.ItemIndex);
ComboBox32.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox32ItemIndex',ComboBox32.ItemIndex);
ComboBox33.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox33ItemIndex',ComboBox33.ItemIndex);
ComboBox34.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox34ItemIndex',ComboBox34.ItemIndex);
ComboBox35.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox35ItemIndex',ComboBox35.ItemIndex);
ComboBox36.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox36ItemIndex',ComboBox36.ItemIndex);
ComboBox37.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox37ItemIndex',ComboBox37.ItemIndex);
ComboBox38.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox38ItemIndex',ComboBox38.ItemIndex);
ComboBox39.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox39ItemIndex',ComboBox39.ItemIndex);
ComboBox40.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox40ItemIndex',ComboBox40.ItemIndex);
ComboBox41.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox41ItemIndex',ComboBox41.ItemIndex);
ComboBox42.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox42ItemIndex',ComboBox42.ItemIndex);
ComboBox43.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox43ItemIndex',ComboBox43.ItemIndex);
ComboBox44.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox44ItemIndex',ComboBox44.ItemIndex);
ComboBox45.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox45ItemIndex',ComboBox45.ItemIndex);
ComboBox46.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox46ItemIndex',ComboBox46.ItemIndex);
ComboBox47.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox47ItemIndex',ComboBox47.ItemIndex);
ComboBox48.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox48ItemIndex',ComboBox48.ItemIndex);
ComboBox49.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox49ItemIndex',ComboBox49.ItemIndex);
ComboBox50.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox50ItemIndex',ComboBox50.ItemIndex);
ComboBox51.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox51ItemIndex',ComboBox51.ItemIndex);
ComboBox52.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox52ItemIndex',ComboBox52.ItemIndex);
ComboBox53.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox53ItemIndex',ComboBox53.ItemIndex);
ComboBox54.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox54ItemIndex',ComboBox54.ItemIndex);
ComboBox55.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox55ItemIndex',ComboBox55.ItemIndex);
ComboBox56.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox56ItemIndex',ComboBox56.ItemIndex);
ComboBox57.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox57ItemIndex',ComboBox57.ItemIndex);
ComboBox58.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox58ItemIndex',ComboBox58.ItemIndex);
ComboBox59.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox59ItemIndex',ComboBox59.ItemIndex);
ComboBox60.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox60ItemIndex',ComboBox60.ItemIndex);
ComboBox61.ItemIndex:=IniFile.ReadInteger('FORM1','ComboBox61ItemIndex',ComboBox61.ItemIndex);

CheckBox1.Checked:=IniFile.ReadBool('FORM1','CheckBox1Checked',CheckBox1.Checked);
CheckBox2.Checked:=IniFile.ReadBool('FORM1','CheckBox2Checked',CheckBox2.Checked);
CheckBox3.Checked:=IniFile.ReadBool('FORM1','CheckBox3Checked',CheckBox3.Checked);
CheckBox4.Checked:=IniFile.ReadBool('FORM1','CheckBox4Checked',CheckBox4.Checked);
CheckBox5.Checked:=IniFile.ReadBool('FORM1','CheckBox5Checked',CheckBox5.Checked);
CheckBox6.Checked:=IniFile.ReadBool('FORM1','CheckBox6Checked',CheckBox6.Checked);
CheckBox7.Checked:=IniFile.ReadBool('FORM1','CheckBox7Checked',CheckBox7.Checked);
CheckBox8.Checked:=IniFile.ReadBool('FORM1','CheckBox8Checked',CheckBox8.Checked);
CheckBox9.Checked:=IniFile.ReadBool('FORM1','CheckBox9Checked',CheckBox9.Checked);
CheckBox10.Checked:=IniFile.ReadBool('FORM1','CheckBox10Checked',CheckBox10.Checked);
CheckBox11.Checked:=IniFile.ReadBool('FORM1','CheckBox11Checked',CheckBox11.Checked);
CheckBox12.Checked:=IniFile.ReadBool('FORM1','CheckBox12Checked',CheckBox12.Checked);
CheckBox13.Checked:=IniFile.ReadBool('FORM1','CheckBox13Checked',CheckBox13.Checked);
CheckBox14.Checked:=IniFile.ReadBool('FORM1','CheckBox14Checked',CheckBox14.Checked);
CheckBox15.Checked:=IniFile.ReadBool('FORM1','CheckBox15Checked',CheckBox15.Checked);
CheckBox16.Checked:=IniFile.ReadBool('FORM1','CheckBox16Checked',CheckBox16.Checked);
CheckBox17.Checked:=IniFile.ReadBool('FORM1','CheckBox17Checked',CheckBox17.Checked);
CheckBox18.Checked:=IniFile.ReadBool('FORM1','CheckBox18Checked',CheckBox18.Checked);
CheckBox19.Checked:=IniFile.ReadBool('FORM1','CheckBox19Checked',CheckBox19.Checked);
CheckBox20.Checked:=IniFile.ReadBool('FORM1','CheckBox20Checked',CheckBox20.Checked);
CheckBox21.Checked:=IniFile.ReadBool('FORM1','CheckBox21Checked',CheckBox21.Checked);
CheckBox22.Checked:=IniFile.ReadBool('FORM1','CheckBox22Checked',CheckBox22.Checked);
CheckBox23.Checked:=IniFile.ReadBool('FORM1','CheckBox23Checked',CheckBox23.Checked);
CheckBox24.Checked:=IniFile.ReadBool('FORM1','CheckBox24Checked',CheckBox24.Checked);
CheckBox25.Checked:=IniFile.ReadBool('FORM1','CheckBox25Checked',CheckBox25.Checked);
CheckBox26.Checked:=IniFile.ReadBool('FORM1','CheckBox26Checked',CheckBox26.Checked);
CheckBox27.Checked:=IniFile.ReadBool('FORM1','CheckBox27Checked',CheckBox27.Checked);
CheckBox28.Checked:=IniFile.ReadBool('FORM1','CheckBox28Checked',CheckBox28.Checked);
CheckBox29.Checked:=IniFile.ReadBool('FORM1','CheckBox29Checked',CheckBox29.Checked);
CheckBox30.Checked:=IniFile.ReadBool('FORM1','CheckBox30Checked',CheckBox30.Checked);
CheckBox31.Checked:=IniFile.ReadBool('FORM1','CheckBox31Checked',CheckBox31.Checked);
CheckBox32.Checked:=IniFile.ReadBool('FORM1','CheckBox32Checked',CheckBox32.Checked);
CheckBox33.Checked:=IniFile.ReadBool('FORM1','CheckBox33Checked',CheckBox33.Checked);
CheckBox34.Checked:=IniFile.ReadBool('FORM1','CheckBox34Checked',CheckBox34.Checked);
CheckBox35.Checked:=IniFile.ReadBool('FORM1','CheckBox35Checked',CheckBox35.Checked);
CheckBox36.Checked:=IniFile.ReadBool('FORM1','CheckBox36Checked',CheckBox36.Checked);
CheckBox37.Checked:=IniFile.ReadBool('FORM1','CheckBox37Checked',CheckBox37.Checked);
CheckBox38.Checked:=IniFile.ReadBool('FORM1','CheckBox38Checked',CheckBox38.Checked);
CheckBox39.Checked:=IniFile.ReadBool('FORM1','CheckBox39Checked',CheckBox39.Checked);
CheckBox40.Checked:=IniFile.ReadBool('FORM1','CheckBox40Checked',CheckBox40.Checked);
CheckBox41.Checked:=IniFile.ReadBool('FORM1','CheckBox41Checked',CheckBox41.Checked);
CheckBox42.Checked:=IniFile.ReadBool('FORM1','CheckBox42Checked',CheckBox42.Checked);
CheckBox43.Checked:=IniFile.ReadBool('FORM1','CheckBox43Checked',CheckBox43.Checked);
CheckBox44.Checked:=IniFile.ReadBool('FORM1','CheckBox44Checked',CheckBox44.Checked);
CheckBox45.Checked:=IniFile.ReadBool('FORM1','CheckBox45Checked',CheckBox45.Checked);
CheckBox46.Checked:=IniFile.ReadBool('FORM1','CheckBox46Checked',CheckBox46.Checked);
CheckBox47.Checked:=IniFile.ReadBool('FORM1','CheckBox47Checked',CheckBox47.Checked);
CheckBox48.Checked:=IniFile.ReadBool('FORM1','CheckBox48Checked',CheckBox48.Checked);
CheckBox49.Checked:=IniFile.ReadBool('FORM1','CheckBox49Checked',CheckBox49.Checked);
CheckBox50.Checked:=IniFile.ReadBool('FORM1','CheckBox50Checked',CheckBox50.Checked);
CheckBox51.Checked:=IniFile.ReadBool('FORM1','CheckBox51Checked',CheckBox51.Checked);
CheckBox52.Checked:=IniFile.ReadBool('FORM1','CheckBox52Checked',CheckBox52.Checked);
CheckBox53.Checked:=IniFile.ReadBool('FORM1','CheckBox53Checked',CheckBox53.Checked);
CheckBox54.Checked:=IniFile.ReadBool('FORM1','CheckBox54Checked',CheckBox54.Checked);
CheckBox55.Checked:=IniFile.ReadBool('FORM1','CheckBox55Checked',CheckBox55.Checked);
CheckBox56.Checked:=IniFile.ReadBool('FORM1','CheckBox56Checked',CheckBox56.Checked);
CheckBox57.Checked:=IniFile.ReadBool('FORM1','CheckBox57Checked',CheckBox57.Checked);
CheckBox58.Checked:=IniFile.ReadBool('FORM1','CheckBox58Checked',CheckBox58.Checked);
CheckBox59.Checked:=IniFile.ReadBool('FORM1','CheckBox59Checked',CheckBox59.Checked);
CheckBox60.Checked:=IniFile.ReadBool('FORM1','CheckBox60Checked',CheckBox60.Checked);
IniFile.Free;
end;

procedure TFormSchedule.WriteParams;
begin
Path:=Application.ExeName;
Path:=ExtractFileDir(Path);
if Path[Length(Path)]<>'\' then Path:=Path+'\';
IniFile:=TIniFile.Create(Path+'1.ini');
IniFile.WriteInteger('FORM1','ComboBox1ItemIndex',ComboBox1.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox2ItemIndex',ComboBox2.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox3ItemIndex',ComboBox3.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox4ItemIndex',ComboBox4.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox5ItemIndex',ComboBox5.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox6ItemIndex',ComboBox6.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox7ItemIndex',ComboBox7.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox8ItemIndex',ComboBox8.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox9ItemIndex',ComboBox9.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox10ItemIndex',ComboBox10.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox11ItemIndex',ComboBox11.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox12ItemIndex',ComboBox12.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox13ItemIndex',ComboBox13.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox14ItemIndex',ComboBox14.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox15ItemIndex',ComboBox15.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox16ItemIndex',ComboBox16.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox17ItemIndex',ComboBox17.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox18ItemIndex',ComboBox18.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox19ItemIndex',ComboBox19.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox20ItemIndex',ComboBox20.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox21ItemIndex',ComboBox21.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox22ItemIndex',ComboBox22.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox23ItemIndex',ComboBox23.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox24ItemIndex',ComboBox24.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox25ItemIndex',ComboBox25.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox26ItemIndex',ComboBox26.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox27ItemIndex',ComboBox27.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox28ItemIndex',ComboBox28.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox29ItemIndex',ComboBox29.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox30ItemIndex',ComboBox30.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox31ItemIndex',ComboBox31.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox32ItemIndex',ComboBox32.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox33ItemIndex',ComboBox33.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox34ItemIndex',ComboBox34.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox35ItemIndex',ComboBox35.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox36ItemIndex',ComboBox36.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox37ItemIndex',ComboBox37.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox38ItemIndex',ComboBox38.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox39ItemIndex',ComboBox39.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox40ItemIndex',ComboBox40.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox41ItemIndex',ComboBox41.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox42ItemIndex',ComboBox42.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox43ItemIndex',ComboBox43.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox44ItemIndex',ComboBox44.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox45ItemIndex',ComboBox45.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox46ItemIndex',ComboBox46.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox47ItemIndex',ComboBox47.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox48ItemIndex',ComboBox48.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox49ItemIndex',ComboBox49.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox50ItemIndex',ComboBox50.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox51ItemIndex',ComboBox51.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox52ItemIndex',ComboBox52.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox53ItemIndex',ComboBox53.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox54ItemIndex',ComboBox54.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox55ItemIndex',ComboBox55.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox56ItemIndex',ComboBox56.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox57ItemIndex',ComboBox57.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox58ItemIndex',ComboBox58.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox59ItemIndex',ComboBox59.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox60ItemIndex',ComboBox60.ItemIndex);
IniFile.WriteInteger('FORM1','ComboBox61ItemIndex',ComboBox61.ItemIndex);

IniFile.WriteBool('FORM1','CheckBox1Checked',CheckBox1.Checked);
IniFile.WriteBool('FORM1','CheckBox2Checked',CheckBox2.Checked);
IniFile.WriteBool('FORM1','CheckBox3Checked',CheckBox3.Checked);
IniFile.WriteBool('FORM1','CheckBox4Checked',CheckBox4.Checked);
IniFile.WriteBool('FORM1','CheckBox5Checked',CheckBox5.Checked);
IniFile.WriteBool('FORM1','CheckBox6Checked',CheckBox6.Checked);
IniFile.WriteBool('FORM1','CheckBox7Checked',CheckBox7.Checked);
IniFile.WriteBool('FORM1','CheckBox8Checked',CheckBox8.Checked);
IniFile.WriteBool('FORM1','CheckBox9Checked',CheckBox9.Checked);
IniFile.WriteBool('FORM1','CheckBox10Checked',CheckBox10.Checked);
IniFile.WriteBool('FORM1','CheckBox11Checked',CheckBox11.Checked);
IniFile.WriteBool('FORM1','CheckBox12Checked',CheckBox12.Checked);
IniFile.WriteBool('FORM1','CheckBox13Checked',CheckBox13.Checked);
IniFile.WriteBool('FORM1','CheckBox14Checked',CheckBox14.Checked);
IniFile.WriteBool('FORM1','CheckBox15Checked',CheckBox15.Checked);
IniFile.WriteBool('FORM1','CheckBox16Checked',CheckBox16.Checked);
IniFile.WriteBool('FORM1','CheckBox17Checked',CheckBox17.Checked);
IniFile.WriteBool('FORM1','CheckBox18Checked',CheckBox18.Checked);
IniFile.WriteBool('FORM1','CheckBox19Checked',CheckBox19.Checked);
IniFile.WriteBool('FORM1','CheckBox20Checked',CheckBox20.Checked);
IniFile.WriteBool('FORM1','CheckBox21Checked',CheckBox21.Checked);
IniFile.WriteBool('FORM1','CheckBox22Checked',CheckBox22.Checked);
IniFile.WriteBool('FORM1','CheckBox23Checked',CheckBox23.Checked);
IniFile.WriteBool('FORM1','CheckBox24Checked',CheckBox24.Checked);
IniFile.WriteBool('FORM1','CheckBox25Checked',CheckBox25.Checked);
IniFile.WriteBool('FORM1','CheckBox26Checked',CheckBox26.Checked);
IniFile.WriteBool('FORM1','CheckBox27Checked',CheckBox27.Checked);
IniFile.WriteBool('FORM1','CheckBox28Checked',CheckBox28.Checked);
IniFile.WriteBool('FORM1','CheckBox29Checked',CheckBox29.Checked);
IniFile.WriteBool('FORM1','CheckBox30Checked',CheckBox30.Checked);
IniFile.WriteBool('FORM1','CheckBox31Checked',CheckBox31.Checked);
IniFile.WriteBool('FORM1','CheckBox32Checked',CheckBox32.Checked);
IniFile.WriteBool('FORM1','CheckBox33Checked',CheckBox33.Checked);
IniFile.WriteBool('FORM1','CheckBox34Checked',CheckBox34.Checked);
IniFile.WriteBool('FORM1','CheckBox35Checked',CheckBox35.Checked);
IniFile.WriteBool('FORM1','CheckBox36Checked',CheckBox36.Checked);
IniFile.WriteBool('FORM1','CheckBox37Checked',CheckBox37.Checked);
IniFile.WriteBool('FORM1','CheckBox38Checked',CheckBox38.Checked);
IniFile.WriteBool('FORM1','CheckBox39Checked',CheckBox39.Checked);
IniFile.WriteBool('FORM1','CheckBox40Checked',CheckBox40.Checked);
IniFile.WriteBool('FORM1','CheckBox41Checked',CheckBox41.Checked);
IniFile.WriteBool('FORM1','CheckBox42Checked',CheckBox42.Checked);
IniFile.WriteBool('FORM1','CheckBox43Checked',CheckBox43.Checked);
IniFile.WriteBool('FORM1','CheckBox44Checked',CheckBox44.Checked);
IniFile.WriteBool('FORM1','CheckBox45Checked',CheckBox45.Checked);
IniFile.WriteBool('FORM1','CheckBox46Checked',CheckBox46.Checked);
IniFile.WriteBool('FORM1','CheckBox47Checked',CheckBox47.Checked);
IniFile.WriteBool('FORM1','CheckBox48Checked',CheckBox48.Checked);
IniFile.WriteBool('FORM1','CheckBox49Checked',CheckBox49.Checked);
IniFile.WriteBool('FORM1','CheckBox50Checked',CheckBox50.Checked);
IniFile.WriteBool('FORM1','CheckBox51Checked',CheckBox51.Checked);
IniFile.WriteBool('FORM1','CheckBox52Checked',CheckBox52.Checked);
IniFile.WriteBool('FORM1','CheckBox53Checked',CheckBox53.Checked);
IniFile.WriteBool('FORM1','CheckBox54Checked',CheckBox54.Checked);
IniFile.WriteBool('FORM1','CheckBox55Checked',CheckBox55.Checked);
IniFile.WriteBool('FORM1','CheckBox56Checked',CheckBox56.Checked);
IniFile.WriteBool('FORM1','CheckBox57Checked',CheckBox57.Checked);
IniFile.WriteBool('FORM1','CheckBox58Checked',CheckBox58.Checked);
IniFile.WriteBool('FORM1','CheckBox59Checked',CheckBox59.Checked);
IniFile.WriteBool('FORM1','CheckBox60Checked',CheckBox60.Checked);
IniFile.Free;
end;



procedure TFormSchedule.ComboBox61Click(Sender: TObject);
begin
if ComboBox61.Items[ComboBox61.ItemIndex]= 'Подгруппа А' then
begin
Panel1.Visible:=True;
Panel2.Visible:=False;
end
else
if ComboBox61.Items[ComboBox61.ItemIndex]= 'Подгруппа Б' then
begin
Panel2.Visible:=True;
Panel1.Visible:=False;
end;
end;

procedure TFormSchedule.Timer1Timer(Sender: TObject);
begin
FormSchedule.Width:=FormSchedule.Width+10;
if FormSchedule.Width>=1000 then
begin
Button2.Visible:=True;
Button1.Visible:=False;
Timer1.Enabled:=False;
end;
end;

procedure TFormSchedule.Button1Click(Sender: TObject);
begin
Timer1.Enabled:=True;
end;

procedure TFormSchedule.Timer2Timer(Sender: TObject);
begin
FormSchedule.Width:=FormSchedule.Width-10;
if FormSchedule.Width<=680 then
begin
Button1.Visible:=True;
Button2.Visible:=False;
Timer2.Enabled:=False;
end;
end;

procedure TFormSchedule.Button2Click(Sender: TObject);
begin
Timer2.Enabled:=True;
end;

procedure TFormSchedule.Button3Click(Sender: TObject);
begin
WriteParams;
end;

procedure TFormSchedule.FormCreate(Sender: TObject);
begin
ReadParams;
end;

end.
