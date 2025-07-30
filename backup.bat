
cd ..
:: cerca se ci sono file .ico
:: cd "..\icons" 
dir /b *.ico 
 if errorlevel 1 (
        echo La cartella non contiene file .ico
        :: cd ""%USERPROFIE%\%Desktop%"
        mkdir "backup_drive"
        cd "backup_drive"
        mkdir "icons"
        dir 
    ) else (
        copy /v "icons" "backup_drive" 
    )
:: cd "storage\app\PAF"
dir /b *.exe 
 if errorlevel 1 (
        echo La cartella non contiene file .ico
        :: cd ""%USERPROFIE%\%Desktop%"
        mkdir "storage"
        cd "storage"
        mkdir "app"
        cd "app"
        mkdir "PAF"
        dir 
    ) else (
        copy /v "storage\app\PAF" "backup_drive" 
    )
cd ..
:: non trova i percorsi 
echo Creazione copia di backup completata.
echo
echo trascina sul desktop o da altra parte la cartella backup_drive
echo o usa comando copy per completare backup
   