#!/bin/bash

RSYNC=/usr/bin/rsync
SSH=/usr/bin/ssh
KEY=/home/cameron/cron/athena-rsync-key

RUSER=cameron
RHOST=adamanteus
RPATH=/Users/cameron/Books/

LPATH=/home/cameron/Books/

# can later add physics medicine biology chemistry

LIBS=(
        ebooks 
        programming 
        mathematics
     )

for lib in ${LIBS[@]};
do
    $RSYNC -avu --delete -e "$SSH -i $KEY" $LPATH$lib $RUSER@$RHOST:$RPATH$index
done

exit 0
