@echo off
echo Creazione del file system in corso...
:: Richiama i metadati del file system
    call "Meta.bat"    
:: Controlla e crea la cartella 'icons'
if not exist "icons" (
    mkdir "icons"
    echo La cartella 'icons' e' stata creata.
) else (
    echo La cartella 'icons' esiste gia'.
)

:: Controlla e crea la cartella 'storage'
if not exist "storage" (
    mkdir "storage"
    echo La cartella 'storage' e' stata creata.
) else (
    echo La cartella 'storage' esiste gia'.

    :: Crea la cartella 'app'  all'interno  di storage(senza controllare se già esiste)
    if not exist "app" (
        cd "storage\"
        mkdir "app"
        echo La cartella 'app' e' stata creata in 'storage'.
    ) else (
        echo La cartella 'app' esiste gia' in 'storage'.
    )

    :: Visualizza il contenuto della cartella corrente
    dir

    :: Controlla se ci sono file .exe nella directory corrente
    dir /b *.exe >nul 2>&1
    if errorlevel 1 (
        echo La cartella non contiene file .exe
    )
)

:: Verifica se esiste una cartella 'PAF' nel percorso corrente
if not exist "PAF" (
    echo La cartella 'PAF' non e' stata trovata.
    echo Creazione cartella 'PAF' in corso...
    cd "storage\app\"
    mkdir "PAF"
) else (
    echo La cartella 'PAF' esiste gia'.
)
:: altri script da chiamare ad esempio backup.bat
:: call non va per qualche strano motivo che non so
    start "backup.bat"
::  cmd per usare oltre a backup.bat la shell attuale per muoversi nell'harddisk
cmd
pause >nul
