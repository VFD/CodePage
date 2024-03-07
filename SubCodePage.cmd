
:: use as you wish in your's scrits.


CALL :saveActualCodePage

:: ----------------------------------------------------------------------
:: Subroutine for backup initial CHCP
:: ----------------------------------------------------------------------
:saveActualCodePage
FOR /F "tokens=1-6 delims= " %%A IN ('chcp') DO (
	SET codePageSaved=%%E
	CHCP 65001 > NUL
)
EXIT /B


:: ----------------------------------------------------------------------
:: END
:: ----------------------------------------------------------------------
:END
CHCP %codePageSaved% > NUL
SET codePageSaved=



