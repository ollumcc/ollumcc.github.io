@Echo Off
for /r %%i in (*.vtx *.mdl *.vvd *.phy *.mp3 *.wav *.vtf *.bsp *.ztmp *.vmt *.nav) do (
    del "%%i"
)
