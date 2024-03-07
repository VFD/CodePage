# Code Page on Windows Command

Windows Command is not necessary with UTF-8 CP, so many problems with special char, like french accents and for other tongues that use them.

<hr>

# How to

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

use this as you wish.

<hr>