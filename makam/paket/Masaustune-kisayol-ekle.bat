@echo off
rem Masaustune "TurkScore" kisayolu olusturur.
cd /d "%~dp0"
if not exist "App\MuseScore\bin\MuseScore4.exe" (
  echo TurkScore programi bulunamadi. Zip dosyasini once tamamen cikarin.
  pause
  exit /b 1
)
powershell -NoProfile -ExecutionPolicy Bypass -Command "$exe = Join-Path (Get-Location) 'App\MuseScore\bin\MuseScore4.exe'; $lnk = Join-Path ([Environment]::GetFolderPath('Desktop')) 'TurkScore.lnk'; $s = (New-Object -ComObject WScript.Shell).CreateShortcut($lnk); $s.TargetPath = $exe; $s.WorkingDirectory = Split-Path $exe; $s.IconLocation = $exe + ',0'; $s.Save()"
if errorlevel 1 (echo Kisayol olusturulamadi.) else (echo Masaustune "TurkScore" kisayolu eklendi.)
pause
