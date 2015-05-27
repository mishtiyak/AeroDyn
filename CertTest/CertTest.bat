ECHO OFF

:: SET PROG_EXE=..\bin\WT_Perf_gwin32.exe
SET PROG_EXE=..\bin\WT_Perf.exe
SET COMPARE=FC
SET OLD_RESULTS=.\Results
@SET  POUNDS=#############################################################################################

@IF EXIST CertTest.out  DEL CertTest.out

echo %pounds% >> CertTest.out
echo %pounds%

SET TEST=Test01_UAE
%PROG_EXE% %TEST%.wtp

rem %COMPARE% %TEST%.IfW.sum          %OLD_RESULTS%\%TEST%.IfW.sum      >> CertTest.out
echo %pounds% >> CertTest.out
echo %pounds%


SET TEST=ccBlade_UAE
%PROG_EXE% %TEST%.wtp
echo %pounds%

SET TEST=ccBlade_UAE2
%PROG_EXE% %TEST%.wtp
echo %pounds%

SET TEST=ccBlade_UAE4444
%PROG_EXE% %TEST%.wtp
echo %pounds%

SET TEST=ccBlade_UAE_base
%PROG_EXE% %TEST%.wtp
echo %pounds%

SET TEST=skewWakeCorr
%PROG_EXE% %TEST%.wtp
echo %pounds%



echo %pounds%