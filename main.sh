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
# Deleting a student record by ID
delete_student() {
    read -p "Enter student ID to delete: " delete_id

    grep -v "$delete_id" students-list_0923.txt > temp.txt
    mv temp.txt students-list_0923.txt
    echo "Student with ID $delete_id deleted."
}
