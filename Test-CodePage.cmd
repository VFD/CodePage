@ECHO OFF
:: ----------------------------------------------------------------------
:: Example to change the default CP to UTF-8 and return back
:: ----------------------------------------------------------------------
SETLOCAL
:: ----------------------------------------------------------------------
:: ----------------------------------------------------------------------
FOR /F "TOKENS=2 DELIMS=:." %%I IN ('CHCP') DO SET "CP=%%I"
:: Change the code page to UTF-8
CHCP 65001 >NUL
:: ----------------------------------------------------------------------
:: Your code here (French sentences with special char)
:: ----------------------------------------------------------------------
ECHO.
ECHO.┌──────────────────────────────┐
ECHO.│     This is a box drawing    │
ECHO.└──────────────────────────────┘
ECHO Je me présente avec l'affichage d'accent à ë ï ö ü ç è é
ECHO car j'ai basculé en UTF-8 (65001)
ECHO et en fin de script je reviens au code page original.
ECHO.
:: ----------------------------------------------------------------------
:: Restore the original code page
:: ----------------------------------------------------------------------
:END
CHCP %CP% >NUL
ENDLOCAL
:: -----[EOF]------------------------------------------------------------