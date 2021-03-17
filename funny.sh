#!/bin/bash

#========================================================================================
#
# Description: Checks whether the argument is provided or not to the script
#
# Usage      : ./funny.sh [arg1 arg2 ...]
#
#========================================================================================

# Argument is not provided
if [ "$#" -eq 0 ]
then
    echo "This is NOT funny"
else
    echo "This is funny"
fi

exit 0
