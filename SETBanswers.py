#QUESTION 1

# Stack implementation using list
employee = [(101, "Kamal"), (102, "Rajesh"), (103, "Kush")]

# Pushing a new employee to the stack
new_employee = (104, "Rohan")
employee.append(new_employee)

# Display the updated stack
print("Updated Employee Stack:", employee)


#Question 2 

import pickle

# Creating and storing roll numbers, names, and marks in a binary file
students = [
    (101, "Rahul", 45),
    (102, "Priya", 38),
    (103, "Aman", 50),
    (104, "Neha", 30)
]

# Writing data to binary file
with open("students.dat", "wb") as file:
    pickle.dump(students, file)

# Reading from the binary file and displaying students with marks > 40
with open("students.dat", "rb") as file:
    data = pickle.load(file)

print("Students with marks greater than 40:")
for rollno, name, marks in data:
    if marks > 40:
        print(name)



