unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    Bevel1: TBevel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Bevel2: TBevel;
    Label2: TLabel;
    Edit2: TEdit;
    Bevel3: TBevel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    Editable : Boolean;
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1, ComCtrls;

{$R *.dfm}
Function Drobi(Val : String): String;
var
b: string;
i: integer;
begin
B:=Val;
i := pos(',',B);
if i <> 0 then begin
B[i]:='.';
end;
Result := B;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
///////////////////////////////////////////////
///     Add MODE                            ///
///////////////////////////////////////////////
if Editable = False then begin

with form1.ListView1.Items.Add do begin
        Caption := Edit1.Text;
        ImageIndex := 1;
        if CheckBox1.Checked then ImageIndex := 0;

        SubItems.Add(Drobi(Edit2.Text));
end;
{}
Form1.TESTBase.Base[Form1.ComboBox1.ItemIndex].Count := Inttostr(Form1.ListView1.Items.Count-1);
Form1.TESTBase.Base[Form1.ComboBox1.ItemIndex].Answers[Form1.ListView1.Items.Count-1].Answer := Edit1.Text;

if CheckBox1.Checked then
Form1.TESTBase.Base[Form1.ComboBox1.ItemIndex].Answers[Form1.ListView1.Items.Count-1].isTrue := 'T' else
Form1.TESTBase.Base[Form1.ComboBox1.ItemIndex].Answers[Form1.ListView1.Items.Count-1].isTrue := 'F';
try
Form1.TESTBase.Base[Form1.ComboBox1.ItemIndex].Answers[Form1.ListView1.Items.Count-1].Bals := Drobi(Edit2.Text);
except
end;
{}
Close;
///////////////////////////////////////////////
///       Edit Mode                         ///
///////////////////////////////////////////////
end else begin
{}
Form1.TESTBase.Base[Form1.ComboBox1.ItemIndex].Answers[Form1.ListView1.ItemIndex].Answer := Edit1.Text;
if CheckBox1.Checked then
Form1.TESTBase.Base[Form1.ComboBox1.ItemIndex].Answers[Form1.ListView1.ItemIndex].isTrue := 'T' else
Form1.TESTBase.Base[Form1.ComboBox1.ItemIndex].Answers[Form1.ListView1.ItemIndex].isTrue := 'F';
try
Form1.TESTBase.Base[Form1.ComboBox1.ItemIndex].Answers[Form1.ListView1.ItemIndex].Bals := Drobi(Edit2.Text);
except
end;

Form1.ListView1.Items[Form1.ListView1.ItemIndex].Caption := Edit1.Text;
Form1.ListView1.Items[Form1.ListView1.ItemIndex].SubItems[0] := Drobi(Edit2.Text);

if CheckBox1.Checked = true then
Form1.ListView1.Items[Form1.ListView1.ItemIndex].ImageIndex := 0
else Form1.ListView1.Items[Form1.ListView1.ItemIndex].ImageIndex := 1;

Close;
{}
end;

end;

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
Form3.Edit1.SetFocus;
end;

procedure TForm3.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then edit2.Text := '1' else edit2.Text := '0';
end;

end.
