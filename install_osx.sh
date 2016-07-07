#!/bin/bash
################################
# install_osx.sh
################################

########## Vars

FILES=files/

##########

cd $FILES

find . ! -path . -type d -exec sh -c '
    for dir do
        echo "\n*** Making directory $HOME/$dir\n"
#        mkdir -v $HOME/$dir
    done
' sh {} +

find . ! -path . -type f -exec sh -c '
    for file do
        echo "\n*** Creating symlink to $file in home directory.\n"
        ln -s -i -v $(pwd)/$file $HOME/$file 
    done
' sh {} +
