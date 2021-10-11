program Project1;
  //Html Test Creation programm
  //Author: BlackCash
  //eMail: BlackCash2006@Yandex.ru
uses
  Forms,
  Sysutils,
  Classes,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  Unit5 in 'Unit5.pas' {Form5},
  Unit6 in 'Unit6.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'HTML Test Creator';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);

  form1.Path := '';
  try
    form1.RichEdit1.Lines.LoadFromFile(ExtractFilePath(ParamStr(0))+'info.rtf');
  except
  end;
  if paramstr(1) <> '' then begin
  Form1.Path := paramstr(1);
  form1.LoadToFileP(Form1.Path);
  Created := true;
  Form1.UpdateControls;
  Form1.UpdateViewers;
  Form1.UpdateAnswerViewer;
  Form1.TabSheet2.Show;
  
end;

  Application.Run;
end.
