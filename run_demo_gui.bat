@echo off
set startDir=%cd%
call envir.bat
echo =======================================
python -m pip install dearpygui
echo =======================================
md webui
copy test_not_delete.py %startDir%\webui\*.* /Y
cd %startDir%\webui
python test_not_delete.py
echo =======================================
cd %startDir%
rmdir %startDir%\webui /S /Q
python -m pip uninstall dearpygui -y
