#!/bin/bash

echo 'Copying scripts to ~/bin/'
mkdir -p ~/bin
cp -R bin/* ~/bin/

echo 'Installing .bash_profile'
cp .bash_profile ~/

echo 'Install dotemacs as well? (y/n)'
read -n 1 INSTALL_DOTEMACS

if [ ${INSTALL_DOTEMACS} == 'y' ]
then
    git clone git://github.com/jontsai/dotemacs.git
    cd dotemacs
    make
fi
