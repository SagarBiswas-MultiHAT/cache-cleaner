
# Cache Cleaner

A batch script designed to delete temporary files and clean Windows cache directories. This tool helps in freeing up disk space and enhancing system performance by removing unnecessary files.

## Features
- Deletes temporary files from the `%temp%` directory.
- Cleans the `Temp` directory within the Windows folder.
- Removes files from the `Prefetch` directory to optimize system startup.

## How to Use
1. **Download** the `cache_cleaner.bat` script.
2. **Run the script** by double-clicking it. 
3. Follow the prompts to confirm the deletion of temporary files.

## Script Details
```batch
          @echo off 
          @echo 
          @echo.
          @echo Cache Cleaner by Sagar_Biswas
          set /p confirm=Delete All Temporary Files? (Y/n) 
          if /I "%confirm%"=="" set confirm=Y
          if /I "%confirm%" NEQ "Y" goto end
          
          color 2
          
          echo Deleting temporary files...
          Del /S /F /Q %temp% 2>nul
          Del /S /F /Q %Windir%\Temp 2>nul
          Del /S /F /Q C:\WINDOWS\Prefetch 2>nul
          Del /S /F /Q "%USERPROFILE%\AppData\Local\Temp" 2>nul
          
          @echo.
          @echo All Temporary Files Successfully Deleted!
          @echo. 
          
          :end
          pause
```

### Commands Breakdown
- `@echo off`: Hides command execution in the script.
- `pause`: Waits for user input before proceeding.
- `color 2`: Changes the text color to green.
- `Del /S /F /Q`: Deletes files forcefully and quietly from specified directories.

## Note
- Run this script with **administrative privileges** to ensure it has the necessary permissions to delete system files.
- Be cautious when running scripts that delete system files to avoid unintentional data loss.

## License
This project is open-source and available under the MIT License. See the `LICENSE` file for more details.

## Author
[SagarBiswas-MultiHAT](https://github.com/SagarBiswas-MultiHAT)

