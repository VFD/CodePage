# Code Page on Windows Command

Windows Command is not necessary with UTF-8 CP, so many problems with special char, like french accents and for other tongues that use them.

<hr>

# How to

## Test-CodePage.cmd

This script can be use when you need to use UTF-8 char.
Like French Accent or for example box drawing : 

```
┌──────────────────────────────┐
│     This is a box drawing    │
└──────────────────────────────┘
```

This can be an issue if your not in UTF-8.
At the begining, the script save the current Code Page.
At the end, the initial code page is restored.
Use this as you wish.

## With a subroutine 

### Sub routine ?

With Command in windows you can call a subroutine in your code.

This is very simple, you have juste to use the command CALL.

Example:

``` cmd
@ECHO OFF
:: ----------------------------------------------------------------------
CALL :HelloWorld
:: ----------------------------------------------------------------------
GOTO:END
:: ----------------------------------------------------------------------
:: Sub routine
:: ----------------------------------------------------------------------
:HelloWorld
ECHO.
ECHO Hello World!
EXIT /B
:: ----------------------------------------------------------------------
:: END
:: ----------------------------------------------------------------------
:END
```

The "EXIT /B" just exit from the sub routine, not the script.

So far so good we can tranform our test in subroutine.

SubCodePage.cmd

Call the subroutine.

``` cmd
CALL :saveActualCodePage
``` 

The subroutine for code page.

``` cmd
:: ----------------------------------------------------------------------
:: Subroutine for backup initial CHCP
:: ----------------------------------------------------------------------
:saveActualCodePage
FOR /F "tokens=1-6 delims= " %%A IN ('chcp') DO (
	SET codePageSaved=%%E
	CHCP 65001 > NUL
)
EXIT /B
``` 

At the end of the script, restore the code page wich was saved.

``` cmd
:: ----------------------------------------------------------------------
:: END
:: ----------------------------------------------------------------------
:END
CHCP %codePageSaved% > NUL
SET codePageSaved=
```

have a nice dev.
<hr>
