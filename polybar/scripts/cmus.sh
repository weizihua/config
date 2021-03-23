#!/bin/bash

prepend_zero () {
        seq -f "%02g" $1 $1
}

filename=$(echo -n $(cmus-remote -C status | grep "file"))

if [[ $filename = *[!\ ]* ]]; then
        # song=$(echo -n $(cmus-remote -C status | grep title | cut -c 11-))
        position=$(cmus-remote -C status | grep position | cut -c 10-)
        minutes1=$(prepend_zero $(($position / 60)))
        seconds1=$(prepend_zero $(($position % 60)))
        duration=$(cmus-remote -C status | grep duration | cut -c 10-)
        minutes2=$(prepend_zero $(($duration / 60)))
        seconds2=$(prepend_zero $(($duration % 60)))
        echo -n "♬ [$minutes1:$seconds1/$minutes2:$seconds2]"
else
        echo
fi
