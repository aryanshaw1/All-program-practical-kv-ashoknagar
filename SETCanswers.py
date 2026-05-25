#question 2 

def count_v(str_input):
    return str_input.count('v') + str_input.count('V')

# Example usage
input_string = input("Enter a string: ")
print(f"Number of 'v' and 'V' in the string: {count_v(input_string)}")


