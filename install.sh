#!/bin/bash

echo 'Making ~/code directory'
mkdir -p ~/code

echo 'Copying scripts to ~/bin/'
mkdir -p ~/bin
cp -R bin/* ~/bin/

echo 'Installing bash-ftw? (y/n)'
read -n 1 INSTALL_BASH_FTW

if [ ${INSTALL_BASH_FTW} == 'y' ]
then
    git clone git://github.com/jontsai/bash-ftw.git
    cd bash-ftw && make
fi

echo 'Install dotemacs as well? (y/n)'
read -n 1 INSTALL_DOTEMACS

if [ ${INSTALL_DOTEMACS} == 'y' ]
then
    git clone git://github.com/jontsai/dotemacs.git
    cd dotemacs && make
fi
