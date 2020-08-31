@echo off
set path=


set mcu=attiny85

set hex=micronucleus_booloader2.04_t85_aggressive_16.5MHz
set ac=C:\WinAVR-20100110

lfuse=0xe1

:: // RESET pin set as IO, no ISP is capable, need HV programmer to reset, be caution
::::hfuse=0x5d  

:: // pin1, RESET is still available for ISP
hfuse=0xdd  

efuse=0xfe

::2020-08-30 xiaolaba

path %ac%\bin;%ac%\utils\bin;%path%;

:::: burn hex and fuses
::avrdude -c usbtiny -p %mcu% -U flash:w:%hex%.hex:a -U lfuse:w:%lfuse%:m -U hfuse:w:%hfuse%:m -U efuse:w:%efuse%:m


:::: burn hex only
avrdude -c usbtiny -p %mcu% -U flash:w:%hex%.hex:a
pause
:end