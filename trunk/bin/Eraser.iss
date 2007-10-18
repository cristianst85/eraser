; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#include "../version.h"
#define EraserSafeVerString "Eraser" + SAFE_FULL_VERSION_NUMBER_STRING
#define EraserAppVerString "Eraser " + FULL_VERSION_NUMBER_STRING

[Setup]
AppName=Eraser
AppVerName={#EraserAppVerString}
AppVersion={#EraserAppVerString}
AppPublisher=The Eraser Project
AppPublisherURL=http://eraser.sourceforge.net/
AppSupportURL=http://sourceforge.net/projects/eraser/
AppUpdatesURL=http://sourceforge.net/projects/eraser/
OutputBaseFilename={#EraserSafeVerString}_setup
DefaultDirName={pf}\Eraser
DefaultGroupName=Eraser
DisableStartupPrompt=true
PrivilegesRequired=admin
InfoBeforeFile=..\README.txt
LicenseFile=..\COPYING.txt
WizardImageFile=C:\Program Files\Inno Setup 5\Inno Setup Wizard Images\Modern\SecurityModern13.bmp
WizardSmallImageFile=C:\Program Files\Inno Setup 5\Inno Setup Wizard Images\Modern\Small\SecurityModernSmall16.bmp
InternalCompressLevel=ultra
SolidCompression=true
VersionInfoVersion={#VERSION_NUMBER_STRING}
VersionInfoCompany=The Eraser Project
VersionInfoDescription=Eraser - Secure Information Removal Tool
VersionInfoCopyright=The Eraser Project
TimeStampsInUTC=true
AppCopyright=� The Eraser Project
AppID={{B80CC46C-5839-4A48-B051-3CACF23A2718}
UninstallDisplayIcon={app}\eraser.exe
UninstallDisplayName={#EraserAppVerString}
ShowLanguageDialog=yes
SetupLogging=false
MinVersion=4.1.1998,4.0.1381
ChangesAssociations=true
AllowUNCPath=false
Compression=lzma/ultra
OutputDir=./

[_ISTool]
EnableISX=true:

[Files]
;Source: Eraser\eraser.url; DestDir: {app}; Flags: overwritereadonly ignoreversion
Source: ..\README.txt; DestDir: {app}; Flags: overwritereadonly
Source: ..\COPYING.txt; DestDir: {app}; Flags: overwritereadonly

Source: win32\release\Eraser.exe; DestDir: {app}; Flags: ignoreversion restartreplace uninsrestartdelete 32bit; Components: arch32Bit
Source: win32\release\Eraserl.exe; DestDir: {sys}; Flags: ignoreversion restartreplace uninsrestartdelete 32bit; Components: arch32Bit
Source: win32\release\Eraser.dll; DestDir: {sys}; Flags: ignoreversion restartreplace uninsrestartdelete 32bit; Components: arch32Bit
Source: win32\release\Erasext.dll; DestDir: {sys}; Flags: ignoreversion restartreplace uninsrestartdelete 32bit; Components: arch32Bit
Source: win32\release\Verify.exe; DestDir: {app}; Flags: ignoreversion restartreplace uninsrestartdelete 32bit; Components: Verify; Check: IsWin32
Source: vcredist_x86.exe; DestDir: {tmp}; DestName: vcredist.exe; Flags: deleteafterinstall; Components: arch32Bit

Source: x64\release\Eraser.exe; DestDir: {app}; Flags: ignoreversion restartreplace uninsrestartdelete 64bit; Components: arch64Bit
Source: x64\release\Eraserl.exe; DestDir: {sys}; Flags: ignoreversion restartreplace uninsrestartdelete 64bit; Components: arch64Bit
Source: x64\release\Eraser.dll; DestDir: {sys}; Flags: ignoreversion restartreplace uninsrestartdelete 64bit; Components: arch64Bit
Source: x64\release\Erasext.dll; DestDir: {sys}; Flags: ignoreversion restartreplace uninsrestartdelete 64bit; Components: arch64Bit
Source: x64\release\Verify.exe; DestDir: {app}; Flags: ignoreversion restartreplace uninsrestartdelete 64bit; Components: Verify; Check: IsWin64
Source: vcredist_x64.exe; DestDir: {tmp}; DestName: vcredist.exe; Flags: deleteafterinstall; Components: arch64Bit

[Components]
Name: arch32Bit; Description: Eraser Core Program Files; Types: full custom compact; Flags: fixed checkablealone; Check: IsWin32
Name: arch32Bit\RecycleBin; Description: Add Eraser to the Recycle Bin Context Menu; Types: full compact
Name: arch64Bit; Description: Eraser Core Program Files; Types: full custom compact; Flags: fixed checkablealone; Check: IsWin64
Name: arch64Bit\RecycleBin; Description: Add Eraser to the Recycle Bin Context Menu; Types: full compact
Name: Verify; Description: Eraser Verifier; Types: full

[Icons]
Name: {group}\Eraser; Filename: {app}\eraser.exe
Name: {group}\Eraser Verify; Filename: {app}\verify.exe; Components: Verify
Name: {group}\Eraser Website; Filename: http://heidi.ie/eraser/; Components: 

[Registry]
Root: HKCR; SubKey: *\shellex\ContextMenuHandlers\Erasext; ValueType: string; ValueData: {{8BE13461-936F-11D1-A87D-444553540000}; Flags: uninsdeletekey
Root: HKCR; SubKey: lnkfile\shellex\ContextMenuHandlers\Erasext; ValueType: string; ValueData: {{8BE13461-936F-11D1-A87D-444553540000}; Flags: uninsdeletekey
Root: HKCR; SubKey: .ers; ValueType: string; ValueName: ; ValueData: Eraser.Document; Flags: uninsdeletekey
Root: HKCR; SubKey: .ers\ShellNew; ValueType: string; ValueName: NullFile; ValueData: ; Flags: uninsdeletekey

Root: HKCR; SubKey: Eraser Scheduler; ValueType: string; ValueName: ; ValueData: Eraser Scheduler File; Flags: uninsdeletekey
Root: HKCR; SubKey: Eraser Scheduler\Shell\Open\Command; ValueType: string; ValueData: "{app}\eraser.exe  \""%1\"""; Flags: uninsdeletekey
Root: HKCR; SubKey: Eraser Scheduler\DefaultIcon; ValueType: string; ValueData: {app}\eraser.exe,2; Flags: uninsdeletekey
Root: HKCR; SubKey: Eraser.Document; ValueType: string; ValueName: ; ValueData: Eraser Task Document; Flags: uninsdeletekey
Root: HKCR; SubKey: Eraser.Document\DefaultIcon; ValueType: string; ValueData: {app}\eraser.exe,1; Flags: uninsdeletekey
Root: HKCR; SubKey: Eraser.Document\shell\open\command; ValueType: string; ValueData: "{app}\eraser.exe \""%1\"""; Flags: uninsdeletekey
Root: HKCR; SubKey: Eraser.Document\shell\open\ddeexec; ValueType: string; ValueData: "\\\open(\\""\"""; Flags: uninsdeletekey
Root: HKCR; SubKey: Eraser.Document\shell\print\command; ValueType: string; ValueData: "{app}\eraser.exe /p \""%1\"""; Flags: uninsdeletekey
Root: HKCR; SubKey: Eraser.Document\shell\printto\command; ValueType: string; ValueData: "{app}\eraser.exe /pt \""%1\"" \""%2\"" \""%3\"" \""%4\"""; Flags: uninsdeletekey
Root: HKCR; SubKey: ErasextMenu; ValueType: string; ValueName: ; ValueData: ErasextMenu; Flags: uninsdeletekey
Root: HKCR; SubKey: ErasextMenu\CLSID; ValueType: string; ValueName: ; ValueData: {{8BE13461-936F-11D1-A87D-444553540000}; Flags: uninsdeletekey

Root: HKCR; SubKey: CLSID\{{645FF040-5081-101B-9F08-00AA002F954E}\Shell\Erasext; ValueType: string; ValueData: Erase Recycle Bin; Flags: uninsdeletekey; Components: arch32bit\RecycleBin arch64bit\RecycleBin
Root: HKCR; SubKey: CLSID\{{645FF040-5081-101B-9F08-00AA002F954E}\Shell\Erasext\command; ValueType: string; ValueData: """{sys}\eraserl.exe"" -recycled"; Flags: uninsdeletekey; Components: arch32bit\RecycleBin arch64bit\RecycleBin
Root: HKCR; SubKey: CLSID\{{645FF040-5081-101B-9F08-00AA002F954E}\Shell\Erasext1; ValueType: string; ValueData: Erase Recycle Bin (35-Pass &Gutmann); Flags: uninsdeletekey; Components: arch32bit\RecycleBin arch64bit\RecycleBin
Root: HKCR; SubKey: CLSID\{{645FF040-5081-101B-9F08-00AA002F954E}\Shell\Erasext1\command; ValueType: string; ValueData: """{sys}\eraserl.exe"" -recycled -method Gutmann"; Flags: uninsdeletekey; Components: arch32bit\RecycleBin arch64bit\RecycleBin
Root: HKCR; SubKey: CLSID\{{645FF040-5081-101B-9F08-00AA002F954E}\Shell\Erasext2; ValueType: string; ValueData: Erase Recycle Bin (7-Pass &Schneier); Flags: uninsdeletekey; Components: arch32bit\RecycleBin arch64bit\RecycleBin
Root: HKCR; SubKey: CLSID\{{645FF040-5081-101B-9F08-00AA002F954E}\Shell\Erasext2\command; ValueType: string; ValueData: """{sys}\eraserl.exe"" -recycled -method Schneier"; Flags: uninsdeletekey; Components: arch32bit\RecycleBin arch64bit\RecycleBin
Root: HKCR; SubKey: CLSID\{{645FF040-5081-101B-9F08-00AA002F954E}\Shell\Erasext3; ValueType: string; ValueData: Erase Recycle Bin (7-Pass &DoD); Flags: uninsdeletekey; Components: arch32bit\RecycleBin arch64bit\RecycleBin
Root: HKCR; SubKey: CLSID\{{645FF040-5081-101B-9F08-00AA002F954E}\Shell\Erasext3\command; ValueType: string; ValueData: """{sys}\eraserl.exe"" -recycled -method DoD"; Flags: uninsdeletekey; Components: arch32bit\RecycleBin arch64bit\RecycleBin
Root: HKCR; SubKey: CLSID\{{645FF040-5081-101B-9F08-00AA002F954E}\Shell\Erasext4; ValueType: string; ValueData: Erase Recycle Bin (3-Pass DoD &E); Flags: uninsdeletekey; Components: arch32bit\RecycleBin arch64bit\RecycleBin
Root: HKCR; SubKey: CLSID\{{645FF040-5081-101B-9F08-00AA002F954E}\Shell\Erasext4\command; ValueType: string; ValueData: """{sys}\eraserl.exe"" -recycled -method DoD_E"; Flags: uninsdeletekey; Components: arch32bit\RecycleBin arch64bit\RecycleBin
Root: HKCR; SubKey: CLSID\{{645FF040-5081-101B-9F08-00AA002F954E}\Shell\Erasext5; ValueType: string; ValueData: Erase Recycle Bin (1-Pass First-last &2k); Flags: uninsdeletekey; Components: arch32bit\RecycleBin arch64bit\RecycleBin
Root: HKCR; SubKey: CLSID\{{645FF040-5081-101B-9F08-00AA002F954E}\Shell\Erasext5\command; ValueType: string; ValueData: """{sys}\eraserl.exe"" -recycled -method First_Last2k"; Flags: uninsdeletekey; Components: arch32bit\RecycleBin arch64bit\RecycleBin
Root: HKCR; SubKey: CLSID\{{645FF040-5081-101B-9F08-00AA002F954E}\Shell\Erasext6; ValueType: string; ValueData: Erase Recycle Bin (1-Pass &Pseudorandom Data); Flags: uninsdeletekey; Components: arch32bit\RecycleBin arch64bit\RecycleBin
Root: HKCR; SubKey: CLSID\{{645FF040-5081-101B-9F08-00AA002F954E}\Shell\Erasext6\command; ValueType: string; ValueData: """{sys}\eraserl.exe"" -recycled -method Random 1"; Flags: uninsdeletekey; Components: arch32bit\RecycleBin arch64bit\RecycleBin
Root: HKCR; SubKey: CLSID\{{645FF040-5081-101B-9F08-00AA002F954E}\Shell\Erasext7; ValueType: string; ValueData: Erase Recycle Bin (&Library); Flags: uninsdeletekey; Components: arch32bit\RecycleBin arch64bit\RecycleBin
Root: HKCR; SubKey: CLSID\{{645FF040-5081-101B-9F08-00AA002F954E}\Shell\Erasext7\command; ValueType: string; ValueData: """{sys}\eraserl.exe"" -recycled -method Library"; Flags: uninsdeletekey; Components: arch32bit\RecycleBin arch64bit\RecycleBin

Root: HKCR; SubKey: CLSID\{{8BE13461-936F-11D1-A87D-444553540000}; ValueType: string; ValueName: ; ValueData: Eraser Shell Extension; Flags: uninsdeletekey
Root: HKCR; SubKey: CLSID\{{8BE13461-936F-11D1-A87D-444553540000}\InProcServer32; ValueType: string; ValueData: {sys}\erasext.dll; Flags: uninsdeletekey
Root: HKCR; SubKey: CLSID\{{8BE13461-936F-11D1-A87D-444553540000}\InProcServer32; ValueType: string; ValueName: ThreadingModel; ValueData: Apartment; Flags: uninsdeletekey
Root: HKCR; SubKey: CLSID\{{8BE13461-936F-11D1-A87D-444553540000}\ProgID; ValueType: string; ValueName: ; ValueData: ErasextMenu; Flags: uninsdeletekey

Root: HKCR; SubKey: Drive\shellex\ContextMenuHandlers\Erasext; ValueType: string; ValueName: ; ValueData: {{8BE13461-936F-11D1-A87D-444553540000}; Flags: uninsdeletekey
Root: HKCR; SubKey: Drive\shellex\DragDropHandlers\Erasext; ValueType: string; ValueName: ; ValueData: {{8BE13461-936F-11D1-A87D-444553540000}; Flags: uninsdeletekey
Root: HKCR; SubKey: Folder\shellex\ContextMenuHandlers\Erasext; ValueType: string; ValueName: ; ValueData: {{8BE13461-936F-11D1-A87D-444553540000}; Flags: uninsdeletekey
Root: HKCR; SubKey: Folder\shellex\DragDropHandlers\Erasext; ValueType: string; ValueName: ; ValueData: {{8BE13461-936F-11D1-A87D-444553540000}; Flags: uninsdeletekey

Root: HKCU; SubKey: Software\Microsoft\Windows\CurrentVersion\Run; ValueType: string; ValueName: Eraser; ValueData: {app}\eraser.exe -hide; Flags: dontcreatekey uninsdeletevalue
Root: HKLM; SubKey: Software\Microsoft\Windows\CurrentVersion\Shell Extensions\Approved; ValueType: string; ValueName: {{8BE13461-936F-11D1-A87D-444553540000}; ValueData: Eraser Shell Extension; Flags: uninsdeletekey

[UninstallDelete]
Name: {app}\*.*; Type: filesandordirs

[Run]
Filename: {app}\eraser.exe; WorkingDir: {app}; Flags: postinstall nowait skipifsilent; Description: Run Eraser
Filename: {tmp}\vcredist.exe; StatusMsg: Installing Visual C++ 2005 Runtime...

[Code]
function IsWin32: Boolean;
begin
  Result := not IsWin64;
end;
