#!/bin/bash

# Extract emails from the student records file and save them to student-emails.txt
cut -d' ' -f1 students-list_0923.txt > student-emails.txt

echo "Student emails have been extracted and saved to student-emails.txt."
