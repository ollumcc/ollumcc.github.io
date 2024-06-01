@Echo Off
for /r %%i in (*) do (
    if /i not "%%~xi"==".bz2" (
        if not "%%~xi"==".bat" (
            if not exist "%%~dpi%%~ni.bz2" (
                PushD "%%~dpi"
                "C:\Program Files\7-Zip\7z.exe" u -tbzip2 -mx9 "%%~nxi.bz2" "%%~fi"
                PopD
            )
        )
    )
)
