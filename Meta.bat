@echo off
echo Leggo metadati da PAF...
exiftool -json "meta.json" > laCie_meta.json
echo Fatto.
