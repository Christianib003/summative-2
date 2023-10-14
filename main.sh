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
# Function to update a student record by ID
update_student() {
    read -p "Enter student ID to update: " update_id

    read -p "Enter updated student email: " email
    read -p "Enter updated student age: " age

    awk -v id="$update_id" -v new_email="$email" -v new_age="$age" 'BEGIN { OFS=" " } $3==id { $1=new_email; $2=new_age; } 1' students-list_0923.txt > temp.txt

    mv temp.txt students-list_0923.txt

    echo "Student with ID $update_id updated."
}
