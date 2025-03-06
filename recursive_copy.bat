@echo off
setlocal enabledelayedexpansion

REM Set the source and target directories
set "source_directory=C:\Github\Workshop\Workshop"
set /p "expected_folder=Enter folder name: "
set "target_directory=%source_directory%\%expected_folder%\_REPACK"

REM Ensure the target directory exists
if not exist "%target_directory%" mkdir "%target_directory%"

REM Function to copy subdirectories of each folder
:process_directory
for /D %%i in ("%source_directory%\%expected_folder%\*") do (
    set "folder_name=%%~nxi"
    
    REM Check if the target subdirectory already exists
    if not exist "%target_directory%\!folder_name!" (
        echo Copying subdirectories of "!folder_name!" to "%target_directory%\!folder_name!"
        
        REM Copy subdirectories to the target directory
        xcopy "%%i\*" "%target_directory%\" /E /Y /S
    )
)

endlocal