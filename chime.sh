#!/bin/bash

#==============================================================================
#
# Description: This scripts:
#              1. Does not produce chime if the time lies between 0 minute and
#                 20 minutes past the hour
#              2. Chimes oncd if the time lies between 20 minutes and
#                 40 minutes past the hour
#              3. Chimes twice if the time lies between 40 minutes and
#                 60 minutes past the hour
#                 Between the two chimes, sleeps for 1 second
#
#==============================================================================

# Check the time and chime accrodingly
minute=$(date +%M)

# Chime once
if [ "$minute" -ge 20 ] && [ "$minute" -le 40 ]
then
    tput bel
# Chime twice
elif [ "$minute" -ge 40 ] && [ "$minute" -le 60 ]
then
    tput bel
    sleep 1
    tput bel
fi

exit 0
