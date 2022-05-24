#define MyAppName "XMachOViewer"
#define MyAppVersion "0.04"
#define MyAppPublisher "NTInfo"
#define MyAppURL "ntinfo.biz"
#define MyAppExeName "xmachoviewer.exe"

[Setup]
AppId={{401a099e-2713-4626-a16f-e119205721d6}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={userpf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir=release
OutputBaseFilename=install
Compression=lzma
SolidCompression=yes
LicenseFile=LICENSE
PrivilegesRequired=lowest

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; 

[Files]
Source: "release\xmachoviewer\*"; DestDir: "{app}\"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\Uninstall"; Filename: "{app}\unins000.exe"
Name: "{userdesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[InstallDelete]
Type: filesandordirs; Name: {app}\*;

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall

