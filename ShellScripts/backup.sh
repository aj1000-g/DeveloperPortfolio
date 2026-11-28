#!/bin/bash
# Author: Aman Jha (Roll Number: 2601730058)
# Description: Automated Folder Backup Script (CSE103 Capstone Q2B)

if [ $# -eq 0 ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

SOURCE_FOLDER="$1"

# Expand leading ~ if passed quoted
if [[ "$SOURCE_FOLDER" == ~* ]]; then
    SOURCE_FOLDER="${SOURCE_FOLDER/#\~/$HOME}"
fi

if [ ! -d "$SOURCE_FOLDER" ]; then
    echo "Error: Folder '$1' does not exist."
    exit 1
fi

BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"
mkdir -p "$BACKUP_DIR"
LOG_FILE="$BACKUP_DIR/backup.log"

TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
ARCHIVE_NAME="backup_${TIMESTAMP}.tar.gz"
ARCHIVE_PATH="$BACKUP_DIR/$ARCHIVE_NAME"

tar -czf "$ARCHIVE_PATH" -C "$(dirname "$SOURCE_FOLDER")" "$(basename "$SOURCE_FOLDER")" 2>/dev/null

if [ $? -eq 0 ]; then
    SIZE=$(du -sh "$ARCHIVE_PATH" | awk '{print $1}')
    echo "Backup created successfully: $ARCHIVE_NAME (Size: $SIZE)"
    echo "Saved to: $ARCHIVE_PATH"
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] SUCCESS: Created $ARCHIVE_NAME (Size: $SIZE) from $SOURCE_FOLDER" >> "$LOG_FILE"
else
    echo "Error: Failed to create backup archive for '$SOURCE_FOLDER'."
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] FAILED: Backup error for $SOURCE_FOLDER" >> "$LOG_FILE"
    exit 1
fi
