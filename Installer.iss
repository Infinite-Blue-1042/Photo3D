#define MyAppName "Photo3D"
#define MyAppVersion "1.0.1"
#define MyAppPublisher "Intel; VihaanM242"
#define MyAppURL "https://www.intelrealsense.com"
#define MyAppExeName "Photo3D.exe"

[Setup]
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{CEDD5823-3D1D-4995-84C1-E23749DA5FCE}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=C:\Photo3D\Photo3DLicense.txt
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=C:\Program Files\Intel\Photo3D
OutputBaseFilename=Photo3D
SetupIconFile=C:\Photo3D\Assets\icon.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checked

[Files]
Source: "C:\Photo3D\Build\Photo3D.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Photo3D\Build\MonoBleedingEdge\*"; DestDir: "{app}\MonoBleedingEdge"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Photo3D\Build\UnityCrashHandler64.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Photo3D\Build\UnityPlayer.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Photo3D\LUTs\*"; DestDir: "{app}\Photo3D_Data\LUTs"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Photo3D\Build\Photo3D_Data\*"; DestDir: "{app}\Photo3D_Data"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
