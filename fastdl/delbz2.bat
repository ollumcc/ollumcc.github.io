@Echo Off
for /r %%i in (*.bz2) do (
    del "%%i"
)