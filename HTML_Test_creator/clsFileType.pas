{
  Author: Mike Smit
  Email: mike@alphapos.co.za

  TFileType may be used how you like. It has been tested in my applications and
  works. However, you may find bugs and I would like to know about them. If you
  improve on this class in any way I would like a copy.
  As per the usual bullshit, if this code damages your system in ANY way, don't
  blame me, use it at your own risk.

  This class is used to associate file types with applications.
  It includes the option to use DDE.
  If a user opens multiple files at once in explorer, DDE is the way to go.
  Explorer will start your app if it is not running and establish a DDE connection.
  It will then pass on the messages defined in the file association.

  If you do not want to use DDE then simply do not set the UseDDE property. This
  will perform a 'simple' association then.

  To use DDE follow the steps outlined below to create a DDE server in your app.
  1..Add a TDdeServerItem component to your form.
      Set it's name property to whatever you like.
  2..Add a TDdeServerConv component to your form.
      Set it's name property to the 'Topic' of the server converstion.
      The value of this name will be used in the following example by
        TFileType.DdeTopic.
      Basically TDdeServerConv.Name and TFileType.DdeTopic must be EXACTLY the
        same.
  3..Set the TDdeServerItem.ServerConv property to point to the TDdeServerConv
      component
  4..Read the messages sent from explorer in TDdeServerConc.OnExecuteMacro.

  That's it to implement a DdeServer in your app. Now use my class as follows
    to register the file types you want (:

  Usage:
uses
  clsFileType;

procedure TfrmPlayer.Register;
var
  a: TFileType;
begin
  a := TFileType.Create;

  try
    try
      a.FileExtension := '.mp3';

      a.UnRegister; // Remove any previous associations with this file type

      a.FileDescription := 'Xtreme!Player File';
      a.OpenWith := Application.ExeName;

      // Associate with 'Open'. No need to set OpenAction and OpenActionDescription
      // as the default is 'Open'
      a.UseDDE := True;
      a.DDEMessage := '[Open(%1)]';
      a.DDETopic := 'XtremePlayer';
      a.Register;

      // Associate with 'Enqueue'
      a.OpenAction := 'Enqueue';
      a.OpenActionDescription := '&Enqueue in Xtreme!Player';
      a.DDEMessage := '[Enqueue(%1)]';
      a.Register;

      // Associate with 'Play' - alias for 'Open'
      a.OpenAction := 'Play';
      a.OpenActionDescription := '&Play in Xtreme!Player';
      a.DDEMessage := '[Open(%1)]';
      a.Register;

      MessageDlg('Xtreme!Player was successfully registered with MP3 files', mtInformation, [mbOK], 0);
    except
      on e: Exception do
      begin
        MessageDlg('Failed to register Xtreme!Player with MP3 files' + #13 +
                    'Reason: ' + e.Message + #13#13 +
                    'Exception Raised In: TfrmPlayer.Register',
                    mtError, [mbOK], 0);
        Exit;
      end;
    end;
  finally
    a.Free;
  end;
end;
}
unit clsFileType;

interface
uses
  Registry, Windows, ShlObj, SysUtils, Dialogs;

type TFileType = class
  private
    FFileExtension: string;
    FFileDescription: string;
    FOpenWith: string;
    FUseDDE: Boolean;
    FDdeMessage: string;
    FDDEApplicationNotRunning: string;
    FDDEApplication: string;
    FDDETopic: string;
    FOpenActionDescription: string;
    FOpenAction: string;
    procedure SetFileExtension(const Value: string);

    function AllValuesSet: Boolean;
  public
    function Register: Boolean;
    function UnRegister: Boolean;

    property FileExtension: string read FFileExtension write SetFileExtension;
    property FileDescription: string read FFileDescription write FFileDescription;
    property OpenAction: string read FOpenAction write FOpenAction;
    property OpenActionDescription: string read FOpenActionDescription write FOpenActionDescription;
    property OpenWith: string read FOpenWith write FOpenWith;
    property UseDDE: Boolean read FUseDDE write FUseDDE;
    property DDEMessage: string read FDdeMessage write FDdeMessage;
    property DDEApplication: string read FDDEApplication write FDDEApplication;
    property DDEApplicationNotRunning: string read FDDEApplicationNotRunning write FDDEApplicationNotRunning;
    property DDETopic: string read FDDETopic write FDDETopic;
end;

implementation

{ TFileType }
// *****************************************************************************
function TFileType.AllValuesSet: Boolean;
var
  sFile: string;
begin
  if FFileExtension = '' then
    raise Exception.Create('TFileType.FileExtension has not been set');

  if FFileDescription = '' then
    FFileDescription := Copy(FFileExtension, 2, Length(FFileExtension)) + ' File';

  if FOpenWith = '' then
    raise Exception.Create('TFileType.OpenWith has not been set');

  if FOpenAction = '' then
    FOpenAction := 'Open';

  if FOpenActionDescription = '' then
    FOpenActionDescription := '&' + FOpenAction;

  if FUseDDE then
  begin
    if FDDEMessage = '' then
      FDDEMessage := '[Open(%1)]';
      
    if FDDEApplication = '' then
    begin
      sFile := ExtractFileName(FOpenWith);
      FDDEApplication := Copy(sFile, 1, Length(sFile) - Length(ExtractFileExt(sFile)));
    end;

    if FDDETopic = '' then
      FDDETopic := 'Server';
  end;

  Result := True;
end;
// *****************************************************************************
function TFileType.Register: Boolean;
var
  Reg: TRegistry;
begin
  Result := False;

  if not AllValuesSet then
    Exit;

  Reg := TRegistry.Create;

  try
    // Set the root key to HKEY_CLASSES_ROOT
    Reg.RootKey := HKEY_CLASSES_ROOT;

    // Now open the key, with the possibility to create
    // the key if it doesn't exist.
    Reg.OpenKey(FFileExtension, True);

    // Write my file type to it.
    // This adds HKEY_CLASSES_ROOT\.abc\(Default) = 'Project1.FileType'
    Reg.WriteString('', FFileDescription);
    Reg.CloseKey;

    // Now create an association for that file type
    Reg.OpenKey(FFileDescription, True);

    // This adds HKEY_CLASSES_ROOT\Project1.FileType\(Default)
    //   = 'Project1 File'
    // This is what you see in the file type description for
    // the a file's properties.
    Reg.WriteString('', FFileDescription);
    Reg.CloseKey;

    // Now write the default icon for my file type
    // This adds HKEY_CLASSES_ROOT\Project1.FileType\DefaultIcon
    //  \(Default) = 'Application Dir\Project1.exe,0'
    Reg.OpenKey(FFileDescription + '\DefaultIcon', True);
    Reg.WriteString('', FOpenWith + ',0');
    Reg.CloseKey;

    // Now write the open action in explorer
    Reg.OpenKey(FFileDescription + '\Shell\' + FOpenAction, True);
    Reg.WriteString('', FOpenActionDescription);
    Reg.CloseKey;

    // Write what application to open it with
    // This adds HKEY_CLASSES_ROOT\Project1.FileType\Shell\Open\Command
    // Your application must scan the command line parameters
    // to see what file was passed to it.
    Reg.OpenKey(FFileDescription + '\Shell\' + FOpenAction + '\Command', True);
    Reg.WriteString('', '"' + FOpenWith + '" "%1"');
    Reg.CloseKey;

    // If the user wants DDE then write the additional reg entries
    if FUseDDE then
    begin
      Reg.OpenKey(FFileDescription + '\Shell\' + FOpenAction + '\ddeexec', True);
      Reg.WriteString('', FDDEMessage);
      Reg.CloseKey;

      Reg.OpenKey(FFileDescription + '\Shell\' + FOpenAction + '\ddeexec\Application', True);
      Reg.WriteString('', FDDEApplication);
      Reg.CloseKey;

      Reg.OpenKey(FFileDescription + '\Shell\' + FOpenAction + '\ddeexec\IfExec', True);
      Reg.WriteString('', FDDEApplicationNotRunning);
      Reg.CloseKey;

      Reg.OpenKey(FFileDescription + '\Shell\' + FOpenAction + '\ddeexec\Topic', True);
      Reg.WriteString('', FDDETopic);
      Reg.CloseKey;
    end;


    // Finally, we want the Windows Explorer to realize we added
    // our file type by using the SHChangeNotify API.
    SHChangeNotify(SHCNE_ASSOCCHANGED, SHCNF_IDLIST, nil, nil);
  finally
    Reg.Free;
  end;

  Result := True;
end;
// *****************************************************************************
procedure TFileType.SetFileExtension(const Value: string);
begin
  if not (Value[1] = '.') then
    FFileExtension := '.' + Value
  else
    FFileExtension := Value;
end;
// *****************************************************************************
function TFileType.UnRegister: Boolean;
var
  reg: TRegistry;
  sClassName: string;
begin
  reg := TRegistry.Create;

  if FFileExtension = '' then
    raise Exception.Create('TFileType.FileExtension property has not been set');

  try
    reg.RootKey := HKEY_CLASSES_ROOT;

    if not reg.KeyExists(FFileExtension) then
    begin
      Result := True;
      Exit;
    end;

    reg.OpenKey(FFileExtension, True);
    sClassName := reg.ReadString('');
    reg.CloseKey;
    reg.DeleteKey(FFileExtension);

    if not reg.KeyExists(sClassName) then
    begin
      Result := True;
      Exit;
    end;

    reg.DeleteKey(sClassName);
  finally
    reg.Free;
  end;

  Result := True;
end;
// *****************************************************************************
end.
