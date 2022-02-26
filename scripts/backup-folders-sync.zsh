#!/usr/bin/env zsh

BACKUP_PATH=/Volumes/LaCie-3TB/Backup

LACIE_2TB=/Volumes/LaCie-2TB/
LACIE_2TB_BACKUP=$BACKUP_PATH/LaCie-2TB/

syncFolders()
{
    SRC=$1
    DEST=$2

    if [ -d $SRC ]
    then
        if [ -d $DEST ]
        then
            echo "Syncing files from $SRC to $DEST."
            rsync --archive --delete --prune-empty-dirs --verbose --stats  \
            --exclude=".DS_Store" \
            --exclude=".*" \
            $SRC $DEST
        else
            echo "Error: Directory $DEST does not exists. Sync cancelled."
        fi
    else
        echo "Error: Directory $SRC does not exists. Sync cancelled."
    fi
    
}

syncFolders $LACIE_2TB $LACIE_2TB_BACKUP