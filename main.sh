#!/bin/bash

# creatig a student 
create_student() {
    read -p "Enter student email: " email
    read -p "Enter student age: " age
    read -p "Enter student ID: " student_id

    # Saving the created student  to a file
    echo "$email $age $student_id" >> students-list_0923.txt
    echo "Student record created and saved."
}
# Viewing all student records
view_students() {
    echo "List of students:"
    cat students-list_0923.txt
}
