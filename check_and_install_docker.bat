@echo off
docker --version
IF %ERRORLEVEL% NEQ 0 (
    echo Docker is not installed. Installing Docker...
    powershell -Command "Invoke-WebRequest -Uri https://desktop.docker.com/win/stable/Docker%20Desktop%20Installer.exe -OutFile DockerDesktopInstaller.exe"
    start /wait DockerDesktopInstaller.exe install
    echo Docker installed successfully.
) ELSE (
    echo Docker is already installed.
)
