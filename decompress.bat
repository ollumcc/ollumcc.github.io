@Echo Off
for /r %%i in (*.bz2) do (
    "C:\Program Files\7-Zip\7z.exe" e "%%i" -o"%%~dpi"
)