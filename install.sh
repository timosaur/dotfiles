#!/bin/bash
################################
# install.sh
################################

########## Vars

FILES=files/

##########

cd $FILES

find . ! -path . -type d -exec sh -c '
    for dir do
        echo "\n*** Making directory $HOME/$dir\n"
        mkdir -v $HOME/$dir
    done
' sh {} +

find . ! -path . -type f -printf '%P\n' -exec sh -c '
    for file do
        echo "\n*** Creating symlink to $file in home directory.\n"
        ln -s --backup=existing --interactive --relative -v $file $HOME/$file
    done
' sh {} +
