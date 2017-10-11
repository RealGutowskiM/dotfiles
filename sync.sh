#!/bin/bash

dir=~/.dotfiles
olddir=~/.dotfiles_old

echo "Syncing dotfiles with system..."
echo "Creating $olddir directory for storage"

mkdir -p $olddir

for filepath in "$dir"/*
do
    file=$(basename $filepath)

    if [[ "$file" == "sync.sh" ]]
    then
        continue
    fi

    echo "Moving ~/.$file to $olddir/$file"

    mv ~/.$file $olddir

    echo "Creating symlink from $file to ~/.$file"

    ln -s $filepath ~/.$file
done

echo -e "\nDone syncing. Have a nice day."
