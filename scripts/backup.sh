#!/bin/bash
#============================
# Simple Backup Script
# Author: Wiktor Wroblewski
# Lab: Linux Fundamentals Lab - Task 4
#============================
# Zmienne
SOURCE_FILE="data/notes.txt"
BACKUP_DIR="data/archive"

# Tworzenie timestampu
TIMESTAMP=$(date +"%Y%m%d-%H%M%S")
BACKUP_FILE="$BACKUP_DIR/notes-$TIMESTAMP.bak"

# Sprawdzanie czy plik zrodlowy istnieje
if [ ! -f "$SOURCE_FILE" ]; then
	echo "[ERROR] Souroce file not found: $SOURCE_FILE"
	exit 1
fi

mkdir -p "$BACKUP_DIR"
cp "$SOURCE_FILE" "$BACKUP_FILE"
if [ $? -eq 0 ]; then 
	echo "[+] Backup created successfully: $BACKUP_FILE"
else
	echo "[ERROR] Backup failed!"
	exit 1
fi

echo "Current backups in $BACKUP_DIR"
exit 0





