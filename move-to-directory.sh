#!/bin/bash
# Create the directory if it doesn't exist
if [ ! -d "negpod_id-q1" ]; then
    mkdir negpod_id-q1
fi

# Move the files to the directory
mv main.sh students-list_0923.txt select-emails.sh student-emails.txt negpod_id-q1/

echo "Files moved to negpod_id-q1 directory."
