unit Unit1;
//Программа довольно старая и писал я ее давно, потому просьба не судить строго за кривость исходника... =)
//BlackCash
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, ImgList, ExtDlgs, XPMan,
  Menus, MPlayer, ShellAPI, clsFileType;

//////////////////////////////////////////
//    Data base rec                     //
//////////////////////////////////////////
type
    OTVRec = record
    Answer     : String[100];
    isTrue     : String[6];
    Bals       : String[5];
end;

type
    AnswerRec = record
    Count       : String[5];
    TrueCount   : String[5];
    Name        : String[100];
    Question    : String[255];
    QType       : String[10];
    AnswerPict  : String[255];
    AnswerSound : String[255];
    QInclude    : String[10];
    Answers     : Array [0..50] of OTVRec;
end;

type
PTestRec = ^TTestRec;
TTestRec = record

   TestName    : String[255];

   SaveToFolder: String[255];
   STF         : String[1];

   UseUserINFO : String[1];
   EditNFOText : String[255];

   USENFO1     : String[1];
   NFO1Text    : String[255];
   USENFO2     : String[1];
   NFO2Text    : String[255];
   USENFO3     : String[1];
   NFO3Text    : String[255];
   USENFO4     : String[1];
   NFO4Text    : String[255];
   USENFO5     : String[1];
   NFO5Text    : String[255];
   USENFO6     : String[1];
   NFO6Text    : String[255];
   USENFO7     : String[1];
   NFO7Text    : String[255];
   USENFO8     : String[1];
   NFO8Text    : String[255];

   NOTNFODLG   : String[255];
   FINALDLG    : String[255];
   STARTBTN    : String[100];
   FINALBTN    : String[100];
   PlaySndBTN  : String[100];

   Base    : Array [0..1000] of AnswerRec;
   Count   : String[5];
end;
//////////////////////////////////////////
type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    Bevel1: TBevel;
    Panel4: TPanel;
    Memo1: TMemo;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    ListView1: TListView;
    Edit1: TEdit;
    ImageList1: TImageList;
    Bevel3: TBevel;
    Panel2: TPanel;
    OpenDialog1: TOpenDialog;
    TabSheet2: TTabSheet;
    OpenPictureDialog1: TOpenPictureDialog;
    TabSheet3: TTabSheet;
    Panel6: TPanel;
    Image3: TImage;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Bevel7: TBevel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton3: TSpeedButton;
    RichEdit1: TRichEdit;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Edit3: TEdit;
    SpeedButton7: TSpeedButton;
    CheckBox5: TCheckBox;
    Edit2: TEdit;
    Label13: TLabel;
    Panel5: TPanel;
    SpeedButton6: TSpeedButton;
    CheckBox4: TCheckBox;
    Panel7: TPanel;
    CheckBox6: TCheckBox;
    Edit4: TEdit;
    Edit5: TEdit;
    CheckBox7: TCheckBox;
    Edit6: TEdit;
    CheckBox8: TCheckBox;
    Edit7: TEdit;
    CheckBox9: TCheckBox;
    Edit8: TEdit;
    CheckBox10: TCheckBox;
    Edit9: TEdit;
    CheckBox11: TCheckBox;
    Edit10: TEdit;
    CheckBox12: TCheckBox;
    Edit11: TEdit;
    CheckBox13: TCheckBox;
    Edit12: TEdit;
    Label12: TLabel;
    Edit13: TEdit;
    Label14: TLabel;
    Edit14: TEdit;
    Label15: TLabel;
    Edit15: TEdit;
    Edit16: TEdit;
    Label16: TLabel;
    XPManifest1: TXPManifest;
    Panel8: TPanel;
    Image9: TImage;
    Image10: TImage;
    StylesIMG: TImageList;
    Image11: TImage;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    OpenDialog2: TOpenDialog;
    MediaPlayer1: TMediaPlayer;
    SpeedButton8: TSpeedButton;
    Edit17: TEdit;
    TopPanel: TPanel;
    Image15: TImage;
    Label9: TLabel;
    Label10: TLabel;
    Label22: TLabel;
    Bevel4: TBevel;
    Bevel2: TBevel;
    Bevel5: TBevel;
    SaveDialog1: TSaveDialog;
    Label8: TLabel;
    Label11: TLabel;
    Panel1: TPanel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Image8: TImage;
    Image7: TImage;
    Image6: TImage;
    Image5: TImage;
    Image4: TImage;
    Image2: TImage;
    Image1: TImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure ListView1Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure SpeedButton9Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit12Change(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure CheckBox11Click(Sender: TObject);
    procedure CheckBox12Click(Sender: TObject);
    procedure CheckBox13Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure Edit9Change(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure Edit11Change(Sender: TObject);
    procedure Edit13Change(Sender: TObject);
    procedure Edit14Change(Sender: TObject);
    procedure Edit15Change(Sender: TObject);
    procedure Edit16Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabSheet1Show(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Edit17Change(Sender: TObject);
    Procedure LoadToFileP(FileName: String);
    Procedure SaveToFileP(FileName: String);
    Procedure UpdateControls;
    Procedure UpdateViewers;
    Procedure UpdateAnswerViewer;
    procedure SpeedButton7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
  private
    { Private declarations }
  public
  TESTBase : PTestRec;
  Path: String;
  LogoGen: TStringList;
    { Public declarations }
  end;

var
  Form1: TForm1;
  Created : boolean = False;
implementation

uses Unit2, Unit3, Unit5, Unit6;

Procedure TForm1.UpdateControls;
begin
  try
    Form1.Edit2.Text := Form1.testbase.TestName;
    Form1.CheckBox5.Checked := StrToBool(Form1.testbase.STF);
    Form1.Edit3.Text := Form1.testbase.SaveToFolder;
  except
  end;

  try
    form1.CheckBox4.Checked := StrToBool(Form1.testbase.UseUserINFO);
  except
  end;
  form1.Edit12.Text := Form1.testbase.EditNFOText;

  Form1.CheckBox6.Checked := StrToBool(Form1.testbase.USENFO1);
  Form1.CheckBox7.Checked := StrToBool(Form1.testbase.USENFO2);
  Form1.CheckBox8.Checked := StrToBool(Form1.testbase.USENFO3);
  Form1.CheckBox9.Checked := StrToBool(Form1.testbase.USENFO4);
  Form1.CheckBox10.Checked := StrToBool(Form1.testbase.USENFO5);
  Form1.CheckBox11.Checked := StrToBool(Form1.testbase.USENFO6);
  Form1.CheckBox12.Checked := StrToBool(Form1.testbase.USENFO7);
  Form1.CheckBox13.Checked := StrToBool(Form1.testbase.USENFO8);

  Form1.Edit4.Text := form1.testbase.NFO1Text;
  Form1.Edit5.Text := form1.testbase.NFO2Text;
  Form1.Edit6.Text := form1.testbase.NFO3Text;
  Form1.Edit7.Text := form1.testbase.NFO4Text;
  Form1.Edit8.Text := form1.testbase.NFO5Text;
  Form1.Edit9.Text := form1.testbase.NFO6Text;
  Form1.Edit10.Text := form1.testbase.NFO7Text;
  Form1.Edit11.Text := form1.testbase.NFO8Text;

  form1.Edit13.Text := form1.testbase.NOTNFODLG;
  form1.Edit14.Text := form1.testbase.FINALDLG;
  form1.Edit15.Text := form1.testbase.STARTBTN;
  form1.Edit16.Text := form1.testbase.FINALBTN;

  form1.Edit17.Text := form1.TESTBase.PlaySndBTN;
end;

Procedure AddRep(Str: string; imgind: integer);
begin
  with form5.ListView1.Items.Add do begin
    Caption := Str;
    ImageIndex := imgind;
  end;
end;

Function DevisionPercent(MaxQ, TrueQ : integer): String;
var
  b: string;
  A: real;
  i: integer;
begin
  A := 1 / TrueQ;
  B:='';
  b:=Format('%.1f',[A]);
  i := pos(',',B);
  if i <> 0 then begin
    B[i]:='.';
  end;
  Result := B;
end;

Function DevisionPercentMax(TrueQ : integer): String;
var
  b: string;
  A: real;
  i: integer;
begin
  A := 1 / TrueQ;
  B := '';
  b := Format('%.1f',[A]);
  A := strtofloat(b);
  A := A * TrueQ;
  b:=Format('%.1f',[A]);
  i := pos(',',B);
  if i <> 0 then begin
    B[i]:='.';
  end;
  Result := B;
end;

Procedure TForm1.LoadToFileP(FileName: String);
Var
  i,j:Integer;
  _File : File;
  numWrite:Integer;
  Ar: String;
  cn: integer;
begin
  try
  new(form1.testbase);
  AssignFile(_File,FileName);
  Reset(_File,1);
     BlockRead(_File,Form1.TESTBase.TestName,SizeOf(Form1.TESTBase.TestName),numWrite);

     BlockRead(_File,Form1.TESTBase.SaveToFolder ,SizeOf(Form1.TESTBase.SaveToFolder),numWrite);
     BlockRead(_File,Form1.TESTBase.STF,SizeOf(Form1.TESTBase.STF),numWrite);

     BlockRead(_File,Form1.TESTBase.UseUserINFO,SizeOf(Form1.TESTBase.UseUserINFO),numWrite);
     BlockRead(_File,Form1.TESTBase.EditNFOText,SizeOf(Form1.TESTBase.EditNFOText),numWrite);

     BlockRead(_File,Form1.TESTBase.USENFO1,SizeOf(Form1.TESTBase.USENFO1),numWrite);
     BlockRead(_File,Form1.TESTBase.NFO1Text,SizeOf(Form1.TESTBase.NFO1Text),numWrite);
     BlockRead(_File,Form1.TESTBase.USENFO2,SizeOf(Form1.TESTBase.USENFO2),numWrite);
     BlockRead(_File,Form1.TESTBase.NFO2Text,SizeOf(Form1.TESTBase.NFO2Text),numWrite);
     BlockRead(_File,Form1.TESTBase.USENFO3,SizeOf(Form1.TESTBase.USENFO3),numWrite);
     BlockRead(_File,Form1.TESTBase.NFO3Text,SizeOf(Form1.TESTBase.NFO3Text),numWrite);
     BlockRead(_File,Form1.TESTBase.USENFO4,SizeOf(Form1.TESTBase.USENFO4),numWrite);
     BlockRead(_File,Form1.TESTBase.NFO4Text,SizeOf(Form1.TESTBase.NFO4Text),numWrite);
     BlockRead(_File,Form1.TESTBase.USENFO5,SizeOf(Form1.TESTBase.USENFO5),numWrite);
     BlockRead(_File,Form1.TESTBase.NFO5Text,SizeOf(Form1.TESTBase.NFO5Text),numWrite);
     BlockRead(_File,Form1.TESTBase.USENFO6,SizeOf(Form1.TESTBase.USENFO6),numWrite);
     BlockRead(_File,Form1.TESTBase.NFO6Text,SizeOf(Form1.TESTBase.NFO6Text),numWrite);
     BlockRead(_File,Form1.TESTBase.USENFO7,SizeOf(Form1.TESTBase.USENFO7),numWrite);
     BlockRead(_File,Form1.TESTBase.NFO7Text,SizeOf(Form1.TESTBase.NFO7Text),numWrite);
     BlockRead(_File,Form1.TESTBase.USENFO8,SizeOf(Form1.TESTBase.USENFO8),numWrite);
     BlockRead(_File,Form1.TESTBase.NFO8Text,SizeOf(Form1.TESTBase.NFO8Text),numWrite);

     BlockRead(_File,Form1.TESTBase.NOTNFODLG,SizeOf(Form1.TESTBase.NOTNFODLG),numWrite);
     BlockRead(_File,Form1.TESTBase.FINALDLG,SizeOf(Form1.TESTBase.FINALDLG),numWrite);
     BlockRead(_File,Form1.TESTBase.STARTBTN,SizeOf(Form1.TESTBase.STARTBTN),numWrite);
     BlockRead(_File,Form1.TESTBase.FINALBTN,SizeOf(Form1.TESTBase.FINALBTN),numWrite);
     BlockRead(_File,Form1.TESTBase.PlaySndBTN,SizeOf(Form1.TESTBase.PlaySndBTN),numWrite);

     BlockRead(_File,Form1.TESTBase.Count,SizeOf(Form1.TESTBase.Count),numWrite);

  cn := strtoint(form1.TESTBase.Count)+1;
  for i := 0 to cn do
   begin
     BlockRead(_File,Form1.TESTBase.Base[i].Count,SizeOf(Form1.TESTBase.Base[i].Count),numWrite);
     BlockRead(_File,Form1.TESTBase.Base[i].Name,SizeOf(Form1.TESTBase.Base[i].Name),numWrite);
     BlockRead(_File,Form1.TESTBase.Base[i].Question,SizeOf(Form1.TESTBase.Base[i].Question),numWrite);
     BlockRead(_File,Form1.TESTBase.Base[i].QType,SizeOf(Form1.TESTBase.Base[i].QType),numWrite);
     BlockRead(_File,Form1.TESTBase.Base[i].AnswerPict,SizeOf(Form1.TESTBase.Base[i].AnswerPict),numWrite);
     BlockRead(_File,Form1.TESTBase.Base[i].AnswerSound,SizeOf(Form1.TESTBase.Base[i].AnswerSound),numWrite);

     for j:=0 to strtoint(Form1.TESTBase.Base[i].Count) do
     BlockRead(_File,Form1.TESTBase.Base[i].Answers,SizeOf(Form1.TESTBase.Base[i].Answers),numWrite);

     BlockRead(_File,Form1.TESTBase.Base[i].QInclude,SizeOf(Form1.TESTBase.Base[i].QInclude),numWrite);
     BlockRead(_File,Form1.TESTBase.Base[i].TrueCount,SizeOf(Form1.TESTBase.Base[i].TrueCount),numWrite);
   end;

  CloseFile(_File);
  except
  end;
end;

Procedure TForm1.SaveToFileP(FileName: String);
Var
  i,j:Integer;
  _File : File;
  numWrite:Integer;
  Ar: String;
  cn: integer;
begin
  try
  AssignFile(_File,FileName);
  ReWrite(_File,1);
  cn := strtoint(Form1.TESTBase.Count);
     BlockWrite(_File,Form1.TESTBase.TestName,SizeOf(Form1.TESTBase.TestName),numWrite);

     BlockWrite(_File,Form1.TESTBase.SaveToFolder ,SizeOf(Form1.TESTBase.SaveToFolder),numWrite);
     BlockWrite(_File,Form1.TESTBase.STF,SizeOf(Form1.TESTBase.STF),numWrite);

     BlockWrite(_File,Form1.TESTBase.UseUserINFO,SizeOf(Form1.TESTBase.UseUserINFO),numWrite);
     BlockWrite(_File,Form1.TESTBase.EditNFOText,SizeOf(Form1.TESTBase.EditNFOText),numWrite);
     
     BlockWrite(_File,Form1.TESTBase.USENFO1,SizeOf(Form1.TESTBase.USENFO1),numWrite);
     BlockWrite(_File,Form1.TESTBase.NFO1Text,SizeOf(Form1.TESTBase.NFO1Text),numWrite);
     BlockWrite(_File,Form1.TESTBase.USENFO2,SizeOf(Form1.TESTBase.USENFO2),numWrite);
     BlockWrite(_File,Form1.TESTBase.NFO2Text,SizeOf(Form1.TESTBase.NFO2Text),numWrite);
     BlockWrite(_File,Form1.TESTBase.USENFO3,SizeOf(Form1.TESTBase.USENFO3),numWrite);
     BlockWrite(_File,Form1.TESTBase.NFO3Text,SizeOf(Form1.TESTBase.NFO3Text),numWrite);
     BlockWrite(_File,Form1.TESTBase.USENFO4,SizeOf(Form1.TESTBase.USENFO4),numWrite);
     BlockWrite(_File,Form1.TESTBase.NFO4Text,SizeOf(Form1.TESTBase.NFO4Text),numWrite);
     BlockWrite(_File,Form1.TESTBase.USENFO5,SizeOf(Form1.TESTBase.USENFO5),numWrite);
     BlockWrite(_File,Form1.TESTBase.NFO5Text,SizeOf(Form1.TESTBase.NFO5Text),numWrite);
     BlockWrite(_File,Form1.TESTBase.USENFO6,SizeOf(Form1.TESTBase.USENFO6),numWrite);
     BlockWrite(_File,Form1.TESTBase.NFO6Text,SizeOf(Form1.TESTBase.NFO6Text),numWrite);
     BlockWrite(_File,Form1.TESTBase.USENFO7,SizeOf(Form1.TESTBase.USENFO7),numWrite);
     BlockWrite(_File,Form1.TESTBase.NFO7Text,SizeOf(Form1.TESTBase.NFO7Text),numWrite);
     BlockWrite(_File,Form1.TESTBase.USENFO8,SizeOf(Form1.TESTBase.USENFO8),numWrite);
     BlockWrite(_File,Form1.TESTBase.NFO8Text,SizeOf(Form1.TESTBase.NFO8Text),numWrite);

     BlockWrite(_File,Form1.TESTBase.NOTNFODLG,SizeOf(Form1.TESTBase.NOTNFODLG),numWrite);
     BlockWrite(_File,Form1.TESTBase.FINALDLG,SizeOf(Form1.TESTBase.FINALDLG),numWrite);
     BlockWrite(_File,Form1.TESTBase.STARTBTN,SizeOf(Form1.TESTBase.STARTBTN),numWrite);
     BlockWrite(_File,Form1.TESTBase.FINALBTN,SizeOf(Form1.TESTBase.FINALBTN),numWrite);
     BlockWrite(_File,Form1.TESTBase.PlaySndBTN,SizeOf(Form1.TESTBase.PlaySndBTN),numWrite);

     BlockWrite(_File,Form1.TESTBase.Count,SizeOf(Form1.TESTBase.Count),numWrite);
  For i:=0 to Cn Do
   begin
     BlockWrite(_File,Form1.TESTBase.Base[i].Count,SizeOf(Form1.TESTBase.Base[i].Count),numWrite);
     BlockWrite(_File,Form1.TESTBase.Base[i].Name,SizeOf(Form1.TESTBase.Base[i].Name),numWrite);
     BlockWrite(_File,Form1.TESTBase.Base[i].Question,SizeOf(Form1.TESTBase.Base[i].Question),numWrite);
     BlockWrite(_File,Form1.TESTBase.Base[i].QType,SizeOf(Form1.TESTBase.Base[i].QType),numWrite);
     BlockWrite(_File,Form1.TESTBase.Base[i].AnswerPict,SizeOf(Form1.TESTBase.Base[i].AnswerPict),numWrite);
     BlockWrite(_File,Form1.TESTBase.Base[i].AnswerSound,SizeOf(Form1.TESTBase.Base[i].AnswerSound),numWrite);

     for j := 0 to strtoint(Form1.TESTBase.Base[i].Count) do
     BlockWrite(_File,Form1.TESTBase.Base[i].Answers,SizeOf(Form1.TESTBase.Base[i].Answers),numWrite);

     BlockWrite(_File,Form1.TESTBase.Base[i].QInclude,SizeOf(Form1.TESTBase.Base[i].QInclude),numWrite);
     BlockWrite(_File,Form1.TESTBase.Base[i].TrueCount,SizeOf(Form1.TESTBase.Base[i].TrueCount),numWrite);
   end;
  CloseFile(_File);
  except
  end;
end;

Procedure DelAnswer;
var
  i,j,Cn,Qind,Aind: integer;
begin
  try
    Qind := Form1.ComboBox1.ItemIndex;
    Aind := Form1.ListView1.ItemIndex;
    Cn := strtoint(Form1.TESTBase.base[Qind].count);
    try
    for i := Aind+1 to Cn+1 do begin
      Form1.TESTBase.Base[Qind].Answers[i-1] := Form1.TESTBase.Base[Qind].Answers[i];
    end;
    except
    end;
    Form1.TESTBase.base[Qind].count := inttostr(Cn-1);
  except
  end;
end;

Procedure DelQuestion;
  var
  i,j,Cn,Qind: integer;
begin
  Qind := Form1.ComboBox1.ItemIndex;
  try
  Cn := strtoint(Form1.TESTBase.Count);
  for i := Qind+1 to Cn+1 do begin
    Form1.TESTBase.Base[i-1] := Form1.TESTBase.Base[i];
  end;
  Form1.TESTBase.Count := inttostr(Cn-1);
  except
  end;
end;

Procedure TForm1.UpdateViewers;
var
  i,j : integer;
begin
  try
    Form1.ComboBox1.Clear;
    Form1.ListView1.Clear;
    Sleep(300);
    For i := 0 to strtoint(form1.testbase.Count) do begin
      form1.ComboBox1.Items.Add(form1.testbase.base[i].Name);
      form1.Memo1.Lines.Clear;
    end;
    Form1.ComboBox1.ItemIndex := Form1.ComboBox1.Items.Count-1;
  except
  end;
end;

Procedure TForm1.UpdateAnswerViewer;
var
  i,j : integer;
begin
  try
    Form1.MediaPlayer1.Stop;
    Form1.MediaPlayer1.Enabled := false;
  except
  end;
  try
    Form1.ListView1.Clear;
    j:=Form1.ComboBox1.ItemIndex;
    form1.Memo1.Text := form1.testbase.base[j].Question;
    form1.Edit1.Text := form1.testbase.base[j].Name;
    if form1.testbase.base[j].QInclude = 'T' Then
        form1.CheckBox3.Checked := True
        else
        form1.CheckBox3.Checked := False;

    if form1.testbase.base[j].AnswerPict = 'NONE' then begin
        form1.CheckBox1.Checked := False;
        Form1.SpeedButton4.Enabled := False;
    end else begin
        form1.CheckBox1.Checked := True;
        Form1.SpeedButton4.Enabled := True;
    end;

    if form1.testbase.base[j].AnswerSound = 'NONE' then begin
        form1.CheckBox2.Checked := False;
        Form1.SpeedButton5.Enabled := False;
        Form1.SpeedButton8.Enabled := False;
    end else begin
        form1.CheckBox2.Checked := True;
        Form1.SpeedButton5.Enabled := True;
        Form1.SpeedButton8.Enabled := true;
    end;

    For i := 0 to strtoint(form1.testbase.base[j].Count) do begin
        With form1.ListView1.Items.Add do begin
          Caption := form1.testbase.base[j].answers[i].Answer;
          if form1.testbase.base[j].answers[i].isTrue = 'T' then ImageIndex := 0 else ImageIndex := 1;
          SubItems.Add(form1.testbase.base[j].answers[i].Bals);
        end;
    end;

    if form1.testbase.base[j].AnswerPict <> 'NONE' then begin
    try
      Form1.Image10.Visible := False;
      Form1.Image9.Picture.LoadFromFile(ExtractFilePath(form1.PATH)+'\TSTPict\'+form1.testbase.base[j].AnswerPict);
    except
    end;
    end else begin
    try
      Form1.Image10.Visible := True;
      Form1.Image9.Picture.Bitmap.FreeImage;
    except
    end;
    end;
// q type
    if form1.testbase.base[j].QType = 'CHECK' then begin
      form1.Image3.Visible := True;
      form1.Image11.Visible := False;
    end else
    begin
      form1.Image3.Visible := False;
      form1.Image11.Visible := True;
    end;
    except
    end;
end;

{$R *.dfm}

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  Form2.Memo1.Lines.Clear;
  Form2.RadioButton1.Checked := true;
  Form2.CheckBox1.Checked := true;
  form2.ShowModal;

  UpdateViewers;
  UpdateAnswerViewer;

  if ComboBox1.ItemIndex <> -1 then begin
    CheckBox1.Enabled := true;
    CheckBox2.Enabled := true;
    CheckBox3.Enabled := true;
    Edit1.Enabled := true;
    Memo1.Enabled := true;
    SpeedButton10.Enabled := true;
    SpeedButton3.Enabled := true;
    SpeedButton2.Enabled := true;
  end else begin
    CheckBox1.Enabled := False;
    CheckBox2.Enabled := False;
    CheckBox3.Enabled := False;
    Edit1.Enabled := False;
    Memo1.Enabled := False;
    SpeedButton10.Enabled := False;
    SpeedButton3.Enabled := False;
    SpeedButton2.Enabled := False;
  end;
end;

procedure TForm1.SpeedButton10Click(Sender: TObject);
begin
  form3.Edit1.Clear;
  form3.Edit2.Text := '0';
  Form3.CheckBox1.Checked := false;
  form3.Editable := False;
  form3.showmodal;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  DelQuestion;
  UpdateViewers;
  UpdateAnswerViewer;
  try
    if ComboBox1.ItemIndex <> -1 then begin
      CheckBox1.Enabled := true;
      CheckBox2.Enabled := true;
      CheckBox3.Enabled := true;
      Edit1.Enabled := true;
      Memo1.Enabled := true;
      SpeedButton10.Enabled := true;
      SpeedButton3.Enabled := true;
      SpeedButton2.Enabled := true;
    end else begin
      CheckBox1.Enabled := False;
      CheckBox2.Enabled := False;
      CheckBox3.Enabled := False;
      Edit1.Enabled := False;
      Memo1.Enabled := False;
      ListView1.Clear;
      SpeedButton10.Enabled := False;
      SpeedButton3.Enabled := False;
      SpeedButton2.Enabled := False;
    end;
  except
  end;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  DelAnswer;
  UpdateAnswerViewer;
end;

procedure TForm1.ComboBox1Click(Sender: TObject);
begin
  UpdateAnswerViewer;
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin
  form1.TESTBase.Base[Form1.ComboBox1.ItemIndex].Question := Memo1.Text;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  form1.TESTBase.Base[Form1.ComboBox1.ItemIndex].Name := edit1.Text;
end;

procedure TForm1.ListView1Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  form1.TESTBase.Base[ComboBox1.ItemIndex].Answers[ListView1.ItemIndex].Answer := item.Caption;
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
var
  i,j,a,b,c,r,t,CN,ErrCode : integer;
  Code: TStringList;
  Script: TStringList;
  k,p,tmp,Str: string;
begin
        Str := '';
        Form5.BitBtn1.Enabled := false;
        Form5.ListView1.Clear;
        Form5.Show;
        Form1.Hide;
        AddRep('Генерация теста:',0);
        ErrCode := 0;
        Application.ProcessMessages;
        Sleep(10);

        CN:=ComboBox1.Items.Count-1;

  try
        AddRep('--> Создается заголовок',0);
        ErrCode := 1;
        Application.ProcessMessages;
        Sleep(10);

        Code := TStringList.Create;
        Script := TStringList.Create;
        
        Script.Add('<center><button ID=ResultTEST onclick="clickme()">'+Edit16.Text+'</button></center>');
        Script.Add('<script language="vbscript">');

        if CheckBox5.Checked = true then begin

        AddRep('--> Создается скрипт сохранения',0);
        ErrCode := 2;
        Application.ProcessMessages;
        Sleep(10);

        Script.Add('Function WriteToFile()');
        Script.Add('Const ForReading = 1, ForWriting = 8');
        Script.Add('Dim fso, f');
        Script.Add('Set fso = CreateObject("Scripting.FileSystemObject")');

        Script.Add('Set f = fso.OpenTextFile("'+Edit3.Text+'", ForWriting, True)');
        Script.Add('f.WriteLine "-------------------------------------------------"');

        if CheckBox6.Checked then Script.Add('f.WriteLine '+'NFO1.value'+'');
        if CheckBox7.Checked then Script.Add('f.WriteLine '+'NFO2.value'+'');
        if CheckBox8.Checked then Script.Add('f.WriteLine '+'NFO3.value'+'');
        if CheckBox9.Checked then Script.Add('f.WriteLine '+'NFO4.value'+'');
        if CheckBox10.Checked then Script.Add('f.WriteLine '+'NFO5.value'+'');
        if CheckBox11.Checked then Script.Add('f.WriteLine '+'NFO6.value'+'');
        if CheckBox12.Checked then Script.Add('f.WriteLine '+'NFO7.value'+'');
        if CheckBox13.Checked then Script.Add('f.WriteLine '+'NFO8.value'+'');

        Script.Add('f.WriteLine "-------------------------------------------------"');

        Script.Add('f.WriteLine "'+Format(Edit14.Text,[' "& A']));

        Script.Add('f.WriteLine "-------------------------------------------------"');
        Script.Add('f.Close');

        Script.Add('Set f = fso.OpenTextFile("'+Edit3.Text+'", ForReading)');
        Script.Add('WriteToFile =  f.ReadLine');
        Script.Add('End Function');
        end;
        Script.Add('A=0');

        Code.Add('<HTML> ');
        Code.Add(LogoGen.Text);
        Code.Add('<head><CENTER><title>'+TESTBase.TestName+'</title>'+TESTBase.TestName+'</CENTER></head> <body>');

        if CheckBox4.Checked = true then begin

        Code.Add('<HR><BR>'+Edit12.Text+'<P><P>');

        for i := 0 to CN do begin
        Script.Add('FRM'+IntToStr(i)+'.disabled = True');
        end;

        AddRep('--> Создается поле ввода данных',0);
        ErrCode := 3;
        Application.ProcessMessages;
        Sleep(10);

        if CheckBox6.Checked then
        Code.Add('<p><p>'+Edit4.Text+'<br>'+'<input id=NFO1 type="text" value="" size=30><P>');
        if CheckBox7.Checked then
        Code.Add('<p><p>'+Edit5.Text+'<br>'+'<input id=NFO2 type="text" value="" size=30><P>');
        if CheckBox8.Checked then
        Code.Add('<p><p>'+Edit6.Text+'<br>'+'<input id=NFO3 type="text" value="" size=30><P>');
        if CheckBox9.Checked then
        Code.Add('<p><p>'+Edit7.Text+'<br>'+'<input id=NFO4 type="text" value="" size=30><P>');
        if CheckBox10.Checked then
        Code.Add('<p><p>'+Edit8.Text+'<br>'+'<input id=NFO5 type="text" value="" size=30><P>');
        if CheckBox11.Checked then
        Code.Add('<p><p>'+Edit9.Text+'<br>'+'<input id=NFO6 type="text" value="" size=30><P>');
        if CheckBox12.Checked then
        Code.Add('<p><p>'+Edit10.Text+'<br>'+'<input id=NFO7 type="text" value="" size=30><P>');
        if CheckBox13.Checked then
        Code.Add('<p><p>'+Edit11.Text+'<br>'+'<input id=NFO8 type="text" value="" size=30><P>');

        Code.Add('<p><p>');
        Code.Add('<center><button ID=StartTEST onclick="StartTST()">'+Edit15.Text+'</button></center>');
        Code.Add('<HR><P><P>');
        Script.Add('ResultTEST.disabled = True');

        Script.Add('Sub StartTST()');

        Script.Add('Pravda = 0');
        tmp := '';
        if CheckBox6.Checked then tmp := tmp + 'if NFO1.VALUE <> "" then ';
        if CheckBox7.Checked then tmp := tmp + 'if NFO2.VALUE <> "" then ';
        if CheckBox8.Checked then tmp := tmp + 'if NFO3.VALUE <> "" then ';
        if CheckBox9.Checked then tmp := tmp + 'if NFO4.VALUE <> "" then ';
        if CheckBox10.Checked then tmp := tmp + 'if NFO5.VALUE <> "" then ';
        if CheckBox11.Checked then tmp := tmp + 'if NFO6.VALUE <> "" then ';
        if CheckBox12.Checked then tmp := tmp + 'if NFO7.VALUE <> "" then ';
        if CheckBox13.Checked then tmp := tmp + 'if NFO8.VALUE <> "" then ';
        tmp := tmp + ' pravda = 1';
        Script.Add(TMP);
        Script.Add('if pravda = 1 then');

        for i := 0 to CN do begin
        Script.Add('FRM'+IntToStr(i)+'.disabled = False');
        end;
        Script.Add('ResultTEST.disabled = False');
        Script.Add('StartTEST.disabled = True');
        Script.Add('end if');

        Script.Add('if pravda = 0 then MsgBox'+'"'+Edit13.Text+'", 48, "'+Form1.testbase.TestName+'"');
        Script.Add('pravda = 0');
        Script.Add('End Sub');
        end;

        Script.Add('Sub clickme()');

        AddRep('--> Создается основной скрипт:',0);
        ErrCode := 4;
        Application.ProcessMessages;
        Sleep(10);


      for i := 0 to CN do begin

        AddRep('     Создается Вопрос №'+inttostr(i),0);
        Application.ProcessMessages;
        Sleep(10);

        if Form1.testbase.base[i].QInclude = 'T' then begin
        Code.Add('<br><br>'+ Form1.testbase.base[i].Question +'<br>');

        if Form1.testbase.base[i].AnswerPict <> 'NONE' then begin
        Code.Add('<img src="TSTRes/'+Form1.testbase.base[i].AnswerPict+'" vspace=10 GALLERYIMG="yes">');
        Code.Add('');
        end;

        if Form1.testbase.base[i].AnswerSound <> 'NONE' then begin
        Code.Add('<p><a href="TSTRes/'+Form1.testbase.base[i].AnswerSound+'">'+Edit17.Text+'</a></p>');
        Code.Add('');
        end;

        Code.Add('<Form id='+'FRM'+IntToStr(i)+'>');

        if Form1.testbase.base[i].QType = 'RADIO' then
        for j := 0 to strtoint(Form1.testbase.base[i].Count) do begin
        Code.Add('<input ID=OTV'+inttostr(j)+' type="radio" name="sample">'+Form1.testbase.base[i].Answers[j].Answer +'<br>');

        if Form1.testbase.base[i].Answers[j].isTrue = 'T' then begin
        Script.Add('if FRM'+IntToStr(i)+'.OTV'+IntToStr(j)+'.checked = True then A=A+('+Form1.testbase.base[i].Answers[j].Bals+')');
        end;

        if Form1.testbase.base[i].Answers[j].isTrue = 'F' then begin
        Script.Add('if FRM'+IntToStr(i)+'.OTV'+IntToStr(j)+'.checked = True then A=A+('+Form1.testbase.base[i].Answers[j].Bals+')');
        end;
        end;

        if Form1.testbase.base[i].QType = 'CHECK' then begin
        Script.Add('B=0');
        Script.Add('Pr=0');
        t:=0;
        for j := 0 to strtoint(Form1.testbase.base[i].Count) do begin
        Code.Add('<input ID=OTV'+inttostr(j)+' type="checkbox" name="sample">'+Form1.testbase.base[i].Answers[j].Answer +'<br>');
        if Form1.testbase.base[i].Answers[j].isTrue = 'T' then begin

        Script.Add('if FRM'+IntToStr(i)+'.OTV'+IntToStr(j)+'.checked = True then A=A+('+Form1.testbase.base[i].Answers[j].Bals+')');
        end else begin

        Script.Add('if FRM'+IntToStr(i)+'.OTV'+IntToStr(j)+'.checked = True then A=A+('+Form1.testbase.base[i].Answers[j].Bals+')');
        end;
        end;
        end;
        Code.Add('</Form>');
        Code.Add('<HR>');
    end;
    end;

        AddRep('     Создается скрипт проверки',0);
        ErrCode := 5;
        Application.ProcessMessages;
        Sleep(10);
        Script.Add('if A < 0 then A = 0');
        Script.Add('MsgBox "'+Format(Edit14.Text+'"',['"& A &"'])+', 48, "'+TESTBase.TestName+'"');

        if CheckBox5.Checked = true then begin
        Script.Add('WriteToFile()');
        end;

        if CheckBox4.Checked = true then begin
        Script.Add('ResultTEST.disabled = true');
        Script.Add('StartTEST.disabled = False');

        for i := 0 to CN do begin
        Script.Add('FRM'+IntToStr(i)+'.disabled = True');
        end;
        end;

        Script.Add('A=0');
        Script.Add('End Sub');
        Script.Add('</script>');

        Code.Add(Script.Text);

        Code.Add('</BODY></HTML>');

        AddRep('--> Сохранение сгенерировванного файла',0);
        ErrCode := 6;
        Application.ProcessMessages;
        Sleep(10);

    CreateDir(ExtractFileDir(Path)+'\Generated\');
    if DirectoryExists(ExtractFileDir(Path)+'\Generated\') = True then begin
        Code.SaveToFile(ExtractFileDir(Path)+'\Generated\'+'Index.htm');
        AddRep('--> Сохранение ресурсов',0);
        ErrCode := 7;
        Sleep(100);
        Application.ProcessMessages;

        CreateDir(ExtractFileDir(Path)+'\Generated\TSTRes\');
        if DirectoryExists(ExtractFileDir(Path)+'\Generated\TSTRes\') = True then begin
        for i := 0 to ComboBox1.Items.Count-1 do begin
        if Form1.testbase.base[i].AnswerPict <> 'NONE' then begin
                CopyFile(PChar(ExtractFilePath(Path)+'\TSTPict\'+Form1.testbase.base[i].AnswerPict),PChar(ExtractFileDir(Path)+'\Generated\TSTRes\'+Form1.testbase.base[i].AnswerPict),True);
        end;
        if Form1.testbase.base[i].AnswerSound <> 'NONE' then begin
                CopyFile(PChar(ExtractFilePath(Path)+'\TSTPict\'+Form1.testbase.base[i].AnswerSound),PChar(ExtractFileDir(Path)+'\Generated\TSTRes\'+Form1.testbase.base[i].AnswerSound),True);
        end;
        end;
        end else AddRep('--> Ошибка сохранения ресурсов',1);
    end;
        AddRep('--> Генерироание успешно завершено',0);
        AddRep('--> Файл теста: '+ExtractFileDir(Path)+'\Generated\'+'Index.htm',-1);
    except
        Case ErrCode of
          0:  Str := 'Генерации теста';
          1:  Str := 'Создании заголовка';
          2:  Str := 'Создании скрипта сохранения';
          3:  Str := 'Создании полей ввода данных';
          4:  Str := 'Создании Вопроса №'+inttostr(i);
          5:  Str := 'Создании скрипта проверки';
          6:  Str := 'Сохранении сгенерировванного файла';
          7:  Str := 'Сохранении ресурсов';
         end;
        AddRep('--> Произошла ошибка при: '+Str,1);
  end;

  Script.Free;
  Code.Free;
  Form5.BitBtn1.Enabled := true;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
  if CheckBox3.Checked = true then
    form1.TESTBase.Base[Form1.ComboBox1.ItemIndex].QInclude := 'T'
  else
    form1.TESTBase.Base[Form1.ComboBox1.ItemIndex].QInclude := 'F';
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
  Form6.ShowModal;
  if Form6.ModalResult = mrOk then
    if CreateDir(Form6.ShellTreeView1.Path +'\'+Form6.Edit1.Text+'\') = true then begin
    Path := Form6.ShellTreeView1.Path +'\'+Form6.Edit1.Text+'\'+Form6.Edit1.Text+'.hts';
    New(testbase);
    testbase.Count := '0';
    testbase.TestName := 'Новый проект';
    testbase.SaveToFolder := '';
    testbase.STF := '0';
    testbase.UseUserINFO := '0';
    testbase.EditNFOText := 'Для начала тестирования заполните следующую информацию:';
    testbase.USENFO1 := '0';
    testbase.NFO1Text := '';
    testbase.USENFO2 := '0';
    testbase.NFO2Text := '';
    testbase.USENFO3 := '0';
    testbase.NFO3Text := '';
    testbase.USENFO4 := '0';
    testbase.NFO4Text := '';
    testbase.USENFO5 := '0';
    testbase.NFO5Text := '';
    testbase.USENFO6 := '0';
    testbase.NFO6Text := '';
    testbase.USENFO7 := '0';
    testbase.NFO7Text := '';
    testbase.USENFO8 := '0';
    testbase.NFO8Text := '';
    testbase.NOTNFODLG := 'Вы не полностью заполнили регистрационную форму!';
    testbase.FINALDLG  := 'Ваш результат : %s ';
    testbase.STARTBTN  := 'Начать тест';
    testbase.FINALBTN  := 'Завершить тест';
    testbase.PlaySndBTN:= 'Проиграть звук >>';
    SaveToFileP(Path);
    UpdateControls;
    ///////////////
    ComboBox1.Clear;
    ListView1.Items.Clear;
    Created := true;
    TabSheet2.Show;
  end else ShowMessage('Ошибка создания проекта!');
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
  if Created = true then
    SaveToFileP(Path);
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then begin
    LoadToFileP(OpenDialog1.FileName);
    Created := true;
    UpdateControls;
    UpdateViewers;
    UpdateAnswerViewer;
    TabSheet2.Show;
    Path := OpenDialog1.FileName;
  end;
end;

procedure TForm1.Image5Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
AF : TFileType;
begin
{// associate
try
AF := TFileType.Create;
AF.FileExtension := 'hts';
AF.OpenWith := ParamStr(0);
AF.Register;
except
end;       }

LogoGen := TStringList.Create;

LogoGen.Add('<div class=Section1>');
LogoGen.Add('<table class=MsoTableGrid border=1 cellspacing=0 cellpadding=0');
LogoGen.Add('style=''background:#333333;border-collapse:collapse;border:none''>');
LogoGen.Add('<tr style=''height:15.15pt''>');
LogoGen.Add('<td width=982 valign=top style=''width:736.15pt;border:solid windowtext 1.0pt;');
LogoGen.Add('padding:0cm 5.4pt 0cm 5.4pt;height:15.15pt''>');
LogoGen.Add('<font color="White"> ');
LogoGen.Add('<p class=MsoNormal align=right style=''text-align:right''><span');
LogoGen.Add('lang=EN-US>Powered');
LogoGen.Add('by HTML Test Creator </span></p>');
LogoGen.Add('</tr>');
LogoGen.Add('</table>');
LogoGen.Add('</div>');
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then begin
        form1.TESTBase.Base[ComboBox1.ItemIndex].AnswerPict := ExtractFileName(OpenPictureDialog1.FileName);
        if DirectoryExists(ExtractFilePath(Path)+'TSTPict\') = false then CreateDir(ExtractFilePath(Path)+'TSTPict\');
        CopyFile(PChar(OpenPictureDialog1.FileName),PChar(ExtractFilePath(Path)+'TSTPict\'+ExtractFileName(OpenPictureDialog1.FileName)),true)
  end;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  try
    if CheckBox1.Checked = false then begin
      SpeedButton4.Enabled := false;
      form1.TESTBase.Base[ComboBox1.ItemIndex].AnswerPict := 'NONE';
    end else begin
      SpeedButton4.Enabled := True;
    end;
  except
  end;
end;

procedure TForm1.Image6Click(Sender: TObject);
begin
  if Created = True then
    TabSheet2.Show;
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
  TESTBase.TestName := Edit2.Text;
  TabSheet1.Show;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
  TESTBase.TestName := Edit2.Text;
end;

procedure TForm1.CheckBox5Click(Sender: TObject);
begin
  Edit3.Enabled := CheckBox5.Checked;
  SpeedButton7.Enabled := CheckBox5.Checked;

  if CheckBox5.Checked = true then
  testbase.STF := '1' else testbase.STF := '0';
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
  TESTBase.SaveToFolder := Edit3.Text;
end;

procedure TForm1.Edit12Change(Sender: TObject);
begin
  TESTBase.EditNFOText := Edit12.Text;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
  if CheckBox4.Checked = true then
    testbase.UseUserINFO := '1' else testbase.UseUserINFO := '0';
end;

procedure TForm1.CheckBox6Click(Sender: TObject);
begin
  if CheckBox6.Checked = true then
    testbase.USENFO1 := '1' else testbase.USENFO1 := '0';
end;

procedure TForm1.CheckBox7Click(Sender: TObject);
begin
  if CheckBox7.Checked = true then
    testbase.USENFO2 := '1' else testbase.USENFO2 := '0';
end;

procedure TForm1.CheckBox8Click(Sender: TObject);
begin
  if CheckBox8.Checked = true then
    testbase.USENFO3 := '1' else testbase.USENFO3 := '0';
end;

procedure TForm1.CheckBox9Click(Sender: TObject);
begin
  if CheckBox9.Checked = true then
    testbase.USENFO4 := '1' else testbase.USENFO4 := '0';
end;

procedure TForm1.CheckBox10Click(Sender: TObject);
begin
  if CheckBox10.Checked = true then
    testbase.USENFO5 := '1' else testbase.USENFO5 := '0';
end;

procedure TForm1.CheckBox11Click(Sender: TObject);
begin
  if CheckBox11.Checked = true then
    testbase.USENFO6 := '1' else testbase.USENFO6 := '0';
end;

procedure TForm1.CheckBox12Click(Sender: TObject);
begin
  if CheckBox12.Checked = true then
    testbase.USENFO7 := '1' else testbase.USENFO7 := '0';
end;

procedure TForm1.CheckBox13Click(Sender: TObject);
begin
  if CheckBox13.Checked = true then
    testbase.USENFO8 := '1' else testbase.USENFO8 := '0';
end;

procedure TForm1.Edit4Change(Sender: TObject);
begin
  TESTBase.NFO1Text := Edit4.Text;
end;

procedure TForm1.Edit5Change(Sender: TObject);
begin
  TESTBase.NFO2Text := Edit5.Text;
end;

procedure TForm1.Edit6Change(Sender: TObject);
begin
  TESTBase.NFO3Text := Edit6.Text;
end;

procedure TForm1.Edit7Change(Sender: TObject);
begin
  TESTBase.NFO4Text := Edit7.Text;
end;

procedure TForm1.Edit8Change(Sender: TObject);
begin
  TESTBase.NFO5Text := Edit8.Text;
end;

procedure TForm1.Edit9Change(Sender: TObject);
begin
  TESTBase.NFO6Text := Edit9.Text;
end;

procedure TForm1.Edit10Change(Sender: TObject);
begin
  TESTBase.NFO7Text := Edit10.Text;
end;

procedure TForm1.Edit11Change(Sender: TObject);
begin
  TESTBase.NFO8Text := Edit11.Text;
end;

procedure TForm1.Edit13Change(Sender: TObject);
begin
  TESTBase.NOTNFODLG := Edit13.Text;
end;

procedure TForm1.Edit14Change(Sender: TObject);
begin
  TESTBase.FINALDLG := Edit14.Text;
end;

procedure TForm1.Edit15Change(Sender: TObject);
begin
  TESTBase.STARTBTN := Edit15.Text;
end;

procedure TForm1.Edit16Change(Sender: TObject);
begin
  TESTBase.FINALBTN := Edit16.Text;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: integer;
begin
  i:=0;
  if Created = true then begin
    i := MessageDlg('Сохранить проект перед закрытием?',mtInformation,mbYesNoCancel ,1);
    if Created = True then
    if i = 6 then SaveToFileP(Path);
    if i = 2 then Action := caNone;
  end;
end;

procedure TForm1.TabSheet1Show(Sender: TObject);
begin
  if ComboBox1.ItemIndex <> -1 then begin
    CheckBox1.Enabled := true;
    CheckBox2.Enabled := true;
    CheckBox3.Enabled := true;
    Edit1.Enabled := true;
    Memo1.Enabled := true;
    SpeedButton10.Enabled := true;
    SpeedButton3.Enabled := true;
    SpeedButton2.Enabled := true;
  end else begin
    CheckBox1.Enabled := False;
    CheckBox2.Enabled := False;
    CheckBox3.Enabled := False;
    Edit1.Enabled := False;
    Memo1.Enabled := False;
    SpeedButton10.Enabled := False;
    SpeedButton3.Enabled := False;
    SpeedButton2.Enabled := False;
  end;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  if ListView1.ItemIndex <> -1 then begin
        ListView1.Selected.ImageIndex := 0;
        form1.TESTBase.Base[ComboBox1.ItemIndex].Answers[ListView1.ItemIndex].isTrue := 'T';
  end;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  if ListView1.ItemIndex <> -1 then begin
        ListView1.Selected.ImageIndex := 1;
        form1.TESTBase.Base[ComboBox1.ItemIndex].Answers[ListView1.ItemIndex].isTrue := 'F';
  end;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
  if ListView1.ItemIndex <> -1 then begin
    form3.Edit1.Text := form1.TESTBase.Base[ComboBox1.ItemIndex].Answers[ListView1.ItemIndex].Answer;
    form3.Edit2.Text := form1.TESTBase.Base[ComboBox1.ItemIndex].Answers[ListView1.ItemIndex].Bals;

    if Form1.TESTBase.Base[ComboBox1.ItemIndex].Answers[ListView1.ItemIndex].isTrue = 'T' then
    Form3.CheckBox1.Checked := True else Form3.CheckBox1.Checked := false;

    form3.Editable := True;
    form3.showmodal;
  end;
end;

procedure TForm1.PopupMenu1Popup(Sender: TObject);
begin
  if ListView1.ItemIndex <> -1 then begin
    N1.Enabled := True;
    N3.Enabled := True;
    N4.Enabled := True;
    N7.Enabled := True;
    end else begin
    N1.Enabled := False;
    N3.Enabled := False;
    N4.Enabled := False;
    N7.Enabled := False;
  end;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  try
  if CheckBox2.Checked = false then begin
    SpeedButton5.Enabled := false;
    form1.TESTBase.Base[ComboBox1.ItemIndex].AnswerSound := 'NONE';
    end else begin
    SpeedButton5.Enabled := True;
  end;
  except
  end;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
  if OpenDialog2.Execute then begin
        form1.TESTBase.Base[ComboBox1.ItemIndex].AnswerSound := ExtractFileName(OpenDialog2.FileName);
        if DirectoryExists(ExtractFilePath(Path)+'TSTPict\') = false then CreateDir(ExtractFilePath(Path)+'TSTPict\');
        CopyFile(PChar(OpenDialog2.FileName),PChar(ExtractFilePath(Path)+'TSTPict\'+ExtractFileName(OpenDialog2.FileName)),true)
  end;
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
  try
    if MediaPlayer1.Enabled = false then begin
    MediaPlayer1.FileName := ExtractFilePath(Path)+'TSTPict\'+form1.TESTBase.Base[ComboBox1.ItemIndex].AnswerSound;
    MediaPlayer1.Open;
    MediaPlayer1.Play;
    MediaPlayer1.Enabled := true;
    end else begin
    MediaPlayer1.Enabled := false;
    MediaPlayer1.Stop;
  end;
  except
  end;
end;

procedure TForm1.Edit17Change(Sender: TObject);
begin
TESTBase.PlaySndBTN := Edit17.Text;
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
if SaveDialog1.Execute then
  Edit3.Text := SaveDialog1.FileName;
end;

procedure TForm1.Image8Click(Sender: TObject);
begin
  MessageDlg('html Test Creator'+#13#10+#13#10+'Author: BlackCash'+#13#10+'eMail: BlackCash2006@Yandex.ru',mtInformation,[mbOk],0);
end;

end.









