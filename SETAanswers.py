#Question 1

# Writing to the file
with open("Study.txt", "w") as file:
    file.write("This is my test file and I am writing my content.\n")
    file.write("Python and SQL are useful, and I love my work.")

# Reading and counting occurrences of "and" and "my"
with open("Study.txt", "r") as file:
    content = file.read().lower()  # Convert to lowercase for case insensitivity
    and_count = content.count("and")
    my_count = content.count("my")

print(f"Occurrences of 'and': {and_count}")
print(f"Occurrences of 'my': {my_count}")

#Question 2

import pickle

# Creating and storing roll numbers and names in a binary file
students = {101: "Rahul", 102: "Priya", 103: "Aman", 104: "Neha"}

with open("students.dat", "wb") as file:
    pickle.dump(students, file)

# Searching for a roll number
roll_no = int(input("Enter Roll Number to search: "))

with open("students.dat", "rb") as file:
    data = pickle.load(file)

if roll_no in data:
    print(f"Name: {data[roll_no]}")
else:
    print("Rollno not found")

