#!/bin/bash

dir=~/.dotfiles
olddir=~/.dotfiles_old

echo "Syncing dotfiles with system..."
echo -e "Creating $olddir directory for storage\n"

mkdir -p $olddir

for filepath in $(find $dir -type f)
do
    file=$(realpath --relative-to=$dir $filepath)

    if [[ $file == "sync.sh" ]] || [[ $file == .git* ]]
    then
        continue
    fi

    echo "Processing: $file..."

    if [ -e ~/$file ]
    then
      echo "Moving ~/$file to $olddir/$file"

      mv ~/$file $olddir
    else
      mkdir `dirname ~/$filename`
    fi

    echo "Creating symlink from $file to ~/$file"

    ln -s $filepath ~/$file
done

echo -e "\nDone syncing. Have a nice day."
