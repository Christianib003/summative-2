#!/bin/bash
# creatig a student 
create_student() {
    read -p "Enter student email: " email
    read -p "Enter student age: " age
    read -p "Enter student ID: " student_id

    # Saving the created student  to a file
    echo "$student_id, $email, $age" >> students-list_0923.txt
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
# Main menu loop
while true; do
    echo "Main Menu:"
    echo "1. Create Student"
    echo "2. View Students"
    echo "3. Delete Student"
    echo "4. Update Student"
    echo "5. Exit"
    read -p "Enter your choice: " choice

    case $choice in
        1)
            create_student
            ;;
        2)
            view_students
            ;;
        3)
            delete_student
            ;;
        4)
            update_student
            ;;
        5)
            exit 0
            ;;
        *)
            echo "Invalid input. Choose between 1 - 5."
            ;;
    esac
done 
