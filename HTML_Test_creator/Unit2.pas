unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm2 = class(TForm)
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    CheckBox1: TCheckBox;
    Bevel1: TBevel;
    Label1: TLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label2: TLabel;
    Button1: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
form1.ComboBox1.Items.Add(Memo1.Text);
{}
Form1.TESTBase.Count := inttostr(Form1.ComboBox1.Items.Count-1);
Form1.TESTBase.Base[Form1.ComboBox1.Items.Count-1].Name := 'Question' + inttostr(Form1.ComboBox1.Items.Count);
Form1.TESTBase.Base[Form1.ComboBox1.Items.Count-1].Question := Memo1.Text;
Form1.TESTBase.Base[Form1.ComboBox1.Items.Count-1].Count := '-1';

form1.TESTBase.Base[Form1.ComboBox1.Items.Count-1].AnswerPict := 'NONE';
form1.TESTBase.Base[Form1.ComboBox1.Items.Count-1].AnswerSound := 'NONE';

form1.TESTBase.Base[Form1.ComboBox1.Items.Count-1].TrueCount := '0';

if RadioButton1.Checked = true then
Form1.TESTBase.Base[Form1.ComboBox1.Items.Count-1].QType := 'RADIO';

if RadioButton2.Checked = true then
Form1.TESTBase.Base[Form1.ComboBox1.Items.Count-1].QType := 'CHECK';

if CheckBox1.Checked then
Form1.TESTBase.Base[Form1.ComboBox1.Items.Count-1].QInclude := 'T'
else
Form1.TESTBase.Base[Form1.ComboBox1.Items.Count-1].QInclude := 'F';
{}
Close;

end;

procedure TForm2.Button1Click(Sender: TObject);
begin
close;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
form2.Memo1.SetFocus;
end;

end.
