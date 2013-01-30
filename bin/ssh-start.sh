#!/bin/bash

if [ -z $SSH_AGENT_FILENAME ]; then
  SSH_AGENT_FILENAME="$HOME/.ssh-vars.$HOSTNAME.sh"
fi;

touch $SSH_AGENT_FILENAME;
ssh-agent -s > $SSH_AGENT_FILENAME
chmod a+x $SSH_AGENT_FILENAME
perl -i -n -e 'print $_ unless /^echo/' $SSH_AGENT_FILENAME
source $SSH_AGENT_FILENAME

#ssh-add

KEYS="$HOME/.ssh/*.pub"
TOADD=""
for pubkey in $KEYS
do
    #FILENAME=$(basename ${pubkey})
    #EXTENSION=${pubkey##*.}
    PRIV_KEY=${pubkey%.*}
    #echo ${EXTENSION}
    #echo ${PRIV_KEY}
    if [ -e ${PRIV_KEY} ]
        then
        echo Adding to keychain: ${PRIV_KEY}
        ssh-add -K ${PRIV_KEY}
	#keychain -q ${PRIV_KEY}
    fi
done