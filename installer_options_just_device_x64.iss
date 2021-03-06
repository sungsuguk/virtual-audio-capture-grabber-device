#define AppVer "0.2.8"
#define AppName "virtual audio capture grabber device only x64"

[UninstallRun]
Filename: regsvr32; WorkingDir: {app}; Parameters: /s /u audio_sniffer.ax
[Run]
Filename: regsvr32; WorkingDir: {app}; Parameters: /s audio_sniffer.ax
[Files]
Source: source_code\x64\Release\audio_sniffer.ax; DestDir: {app}
Source: README.TXT; DestDir: {app}; Flags: isreadme

[Setup]
MinVersion=,6.0.6000
AppName={#AppName}
AppVerName={#AppVer}
DefaultDirName={pf}\virtual audio capturer
DefaultGroupName=virtual audio capturer
UninstallDisplayName={#AppName} uninstall
OutputBaseFilename=setup {#AppName} v{#AppVer}

[Icons]
Name: {group}\Readme; Filename: {app}\README.TXT
Name: {group}\Uninstall it; Filename: {uninstallexe}
