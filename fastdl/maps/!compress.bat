@Echo Off
rem Recursively search for all files
for /r %%i in (*) do (
    rem Skip if the file itself is a .bz2 file
    if /i not "%%~xi"==".bz2" (
        rem Skip if the file is a .bat file
        if not "%%~xi"==".bat" (
            rem Skip if the file is a .sh file
            if not "%%~xi"==".sh" (
                rem Skip if the file is a .php file
                if not "%%~xi"==".php" (
                    rem Skip if a .bz2 version already exists for this file
                    if not exist "%%~dpi%%~ni.bz2" (
                        PushD "%%~dpi"
                        "C:\Program Files\7-Zip\7z.exe" u -tbzip2 -mx9 "%%~nxi.bz2" "%%~fi"
                        PopD
                    )
                )
            )
        )
    )
)