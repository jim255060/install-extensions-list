@echo off
setlocal

:: 檢查 VS Code 是否已安裝
where code >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo VS Code 未安裝，請先安裝 VS Code。
    exit /b
)

:: 讀取擴展模組並逐一安裝
for /f %%i in (extensions-list.txt) do (
    echo 正在安裝擴展模組：%%i
    code --install-extension %%i
)

echo 所有擴展模組安裝完成！
pause