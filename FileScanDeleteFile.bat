
setlocal enabledelayedexpansion
set days=90
rem set basepath="D:\Apps\Common-DI\APP_HOME\DIDATA"

for /d %%a in (*) do (

pushd %%a
rem Forfiles /p "." /d -%days% /c "cmd /c echo @path"
Forfiles /p "." /d -%days% /c "cmd /c echo @path && rd /q /s @path"
popd
)