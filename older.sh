#!/bin/bash

#========================================================================================
#
# Description: Displays the oldest file in the list
#
# Usage      : ./older.sh file1 file2 file3 ...
#
#========================================================================================

# Check the number of arguments
if [ "$#" -lt 2 ]
then
    echo "Usage: $0 file1 file2 file3 ..."
    exit 1
fi

# Check the existence of the files
for file in "$@"
do
    if [ ! -f "$file" ]
    then
        echo "$file: No such file exists"
    else
        if [ -z $oldest ] || [ "$file" -ot "$oldest" ]
        then
            oldest="$file"
        fi
    fi
done

# Display the name of the oldest file
echo "The oldest file: $oldest"

exit 0
