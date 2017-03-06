call _presetvars.bat

docker run -ti --rm --hostname=NAVSERVER -e 7045-7048 -e 80-89 -e 8080-8089 -e 443 -v %cd%\content\scripts:c:\scripts %host%/%ImageName% powershell