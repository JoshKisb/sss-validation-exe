!include "MUI2.nsh"

!define AppName "Simon Validators"
!define AppVersion "1.0"
!define DockerInstallURL "https://desktop.docker.com/win/stable/Docker%20Desktop%20Installer.exe"

Name "${AppName} ${AppVersion}"
OutFile "SimonValidatorsInstaller.exe"
InstallDir "$PROGRAMFILES\SimonValidators"

Page directory
Page instfiles

Section "MainSection" SEC01
  SetOutPath "$INSTDIR"

  ; Install Docker if not already installed
  File "check_and_install_docker.bat"
  ExecWait '"$INSTDIR\check_and_install_docker.bat"'

  ; Run the application
  File "run_docker.bat"
  ExecWait '"$INSTDIR\run_docker.bat"'
SectionEnd

Section -AdditionalIcons
  CreateShortCut "$DESKTOP\SimonValidators.lnk" "$INSTDIR\run_docker.bat"
SectionEnd

Function .onInit
  MessageBox MB_YESNO|MB_ICONQUESTION "This will install Simon Validators. Continue?" IDYES +2
  Abort
FunctionEnd

Function .onInstSuccess
  MessageBox MB_OK "Installation complete. You can run Simon Validators from the desktop shortcut."
FunctionEnd

Function .onInstFailed
  MessageBox MB_OK "Installation failed."
FunctionEnd
