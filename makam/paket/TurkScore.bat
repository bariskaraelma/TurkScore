@echo off
rem TurkScore baslatici: derin klasorlerde aramadan programi acar.
cd /d "%~dp0"
if not exist "App\MuseScore\bin\MuseScore4.exe" (
  echo TurkScore programi bulunamadi.
  echo Zip dosyasini once tamamen cikarin ^(zipin icinden acmayin^), sonra bu dosyayi cikarilan klasorden calistirin.
  pause
  exit /b 1
)
start "" "App\MuseScore\bin\MuseScore4.exe"
