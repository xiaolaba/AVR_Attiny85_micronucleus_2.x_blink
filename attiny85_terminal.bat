@echo off
set path=


set mcu=attiny85

set main=main
set lcd=lcd
set out=AVR_lcd_%mcu%
set ac=C:\WinAVR-20100110

path %ac%\bin;%ac%\utils\bin;%path%;

avrdude -c usbtiny -p %mcu% -t
pause
:end