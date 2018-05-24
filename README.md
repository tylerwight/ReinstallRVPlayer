# reinstallrv
These scripts will fully uninstall Rise Player and start a new install. This is to fix issues where an old rvplayer install prevents Rise Player from running properly.

Note: the "uninstall" is acheived by renaming the rvplayer folder. This way we can keep the whole install directory of an old file incase there is a bug, which allows the appropriate team to look at the old files to see what caused the issue.

## To install on Linux:


### 64 bit:

1. open up the terminal and enter this command:

```
wget -O - https://raw.githubusercontent.com/tylermwight/reinstallrv/master/lnx_reinstall_64.sh | bash
```

### 32 bit:

1. open up the terminal and enter this command:

```
wget -O - https://raw.githubusercontent.com/tylermwight/reinstallrv/master/lnx_reinstall_32.sh | bash
```


## To install on Windows:

### 64 bit:

1. Download this file: https://cdn.rawgit.com/tylermwight/reinstallrv/79ab4a05/win_reinstall_64.ps1
2. Browse to it's location, right click, "run with powershell"

### 32 bit:

1. Download this file: https://cdn.rawgit.com/tylermwight/reinstallrv/79ab4a05/win_reinstall_32.ps1
2. Browse to it's location, right click, "run with powershell"


## To install on Raspberry Pi:

1. open up the terminal and enter this command:

```
wget -O - https://raw.githubusercontent.com/tylermwight/reinstallrv/master/pi_reinstall.sh | bash
```
