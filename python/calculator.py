# get the numbers
num1 = float(input("Choose a number: "))
num2 = float(input("Choose another number: "))

# get an operation(there is probably a simpler way to do this)
print("Choose an operation: ")
print("1.Addition")
print("2.Subtraction")
print("3.Multiplication")
print("4.Division")
operation = int(input("Choose: "))

# calculate the result (again, there is probably a simpler way to do this)

if (operation == 1):
    result = float(num1 + num2)
elif (operation == 2):
    result = float(num1 - num2)
elif (operation == 3):
    result = float(num1 * num2)
elif (operation == 4):
    result = float(num1 / num2)
else: 
    print("Whatever you picked, it was not an option!")

print(result)