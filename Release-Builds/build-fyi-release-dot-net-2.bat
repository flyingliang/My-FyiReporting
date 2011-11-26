REM Platform options: "x86", "x64", "Any CPU"
REM /p:Configuration="Debug" or "Release"


REM ************* Begin ANY CPU *********************************************

"C:\Windows\Microsoft.NET\Framework\v3.5\MSBuild.exe" "%CD%\..\DataProviders\DataProviders.sln" /toolsversion:2.0 /p:Configuration="Release";Platform="Any CPU" /t:clean;rebuild /m:4

REM "C:\Windows\Microsoft.NET\Framework\v3.5\MSBuild.exe" "..\%CD%\..\OracleSP\OracleSp.sln" /toolsversion:2.0 /p:Configuration="Release";Platform="Any CPU" /t:clean;rebuild /m:4

"C:\Windows\Microsoft.NET\Framework\v3.5\MSBuild.exe" "%CD%\..\RdlAsp\RdlAsp.sln" /toolsversion:2.0 /p:Configuration="Release";Platform="Any CPU" /t:clean;rebuild /m:4

"C:\Windows\Microsoft.NET\Framework\v3.5\MSBuild.exe" "%CD%\..\RdlCmd\RdlCmd.sln" /toolsversion:2.0 /p:Configuration="Release";Platform="Any CPU" /t:clean;rebuild /m:4

"C:\Windows\Microsoft.NET\Framework\v3.5\MSBuild.exe" "%CD%\..\RdlCri\RdlCri.sln" /toolsversion:2.0 /p:Configuration="Release";Platform="Any CPU" /t:clean;rebuild /m:4

"C:\Windows\Microsoft.NET\Framework\v3.5\MSBuild.exe" "%CD%\..\RdlDesign\RdlDesign.sln" /toolsversion:2.0 /p:Configuration="Release";Platform="Any CPU" /t:clean;rebuild /m:4

"C:\Windows\Microsoft.NET\Framework\v3.5\MSBuild.exe" "%CD%\..\RdlDesktop\RdlDesktop.sln" /toolsversion:2.0 /p:Configuration="Release";Platform="Any CPU" /t:clean;rebuild /m:4

"C:\Windows\Microsoft.NET\Framework\v3.5\MSBuild.exe" "%CD%\..\RdlEngine\RdlEngine.sln" /toolsversion:2.0 /p:Configuration="Release";Platform="Any CPU" /t:clean;rebuild /m:4

"C:\Windows\Microsoft.NET\Framework\v3.5\MSBuild.exe" "%CD%\..\RdlMapFile\RdlMapFile.sln" /toolsversion:2.0 /p:Configuration="Release";Platform="Any CPU" /t:clean;rebuild /m:4

"C:\Windows\Microsoft.NET\Framework\v3.5\MSBuild.exe" "%CD%\..\RdlViewer\RdlViewer.sln" /toolsversion:2.0 /p:Configuration="Release";Platform="Any CPU" /t:clean;rebuild /m:4

REM ************* End ANY CPU *********************************************


del .\my-fyi-build-dot-net-2 /Q
mkdir .\my-fyi-build-dot-net-2

copy ..\DataProviders\bin\Release\DataProviders.dll .\my-fyi-build-dot-net-2\DataProviders.dll /Y
REM copy ..\OracleSp\bin\Release\OracleSp.dll .\my-fyi-build-dot-net-2\OracleSp.dll /Y
copy ..\RdlAsp\bin\Release\RdlAsp.dll .\my-fyi-build-dot-net-2\RdlAsp.dll /Y
copy ..\RdlCmd\bin\Release\RdlCmd.exe .\my-fyi-build-dot-net-2\RdlCmd.exe /Y
copy ..\RdlCri\bin\Release\RdlCri.dll .\my-fyi-build-dot-net-2\RdlCri.dll /Y
copy ..\RdlDesign\bin\Release\RdlDesigner.exe .\my-fyi-build-dot-net-2\RdlDesigner.exe /Y
copy ..\RdlDesktop\bin\Release\RdlDesktop.exe .\my-fyi-build-dot-net-2\RdlDesktop.exe /Y
copy ..\RdlDesktop\bin\Release\config.xml .\my-fyi-build-dot-net-2\config.xml /Y
copy ..\RdlEngine\bin\Release\RdlEngine.dll .\my-fyi-build-dot-net-2\RdlEngine.dll /Y
copy ..\RdlEngine\bin\Release\RdlEngineConfig.xml .\my-fyi-build-dot-net-2\RdlEngineConfig.xml /Y
copy ..\RdlMapFile\bin\Release\RdlMapFile.exe .\my-fyi-build-dot-net-2\RdlMapFile.exe /Y
copy ..\RdlViewer\bin\Release\RdlViewer.dll .\my-fyi-build-dot-net-2\RdlViewer.dll /Y
copy ..\RdlViewer\RdlReader\bin\Release\RdlReader.exe .\my-fyi-build-dot-net-2\RdlReader.exe /Y

7za.exe a my-fyi-build-dot-net-2.zip my-fyi-build-dot-net-2\

