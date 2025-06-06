# Get the numbers
print "Choose a number: "
num1 = gets.chomp.to_f
print "Choose another number: "
num2 = gets.chomp.to_f

# Get the operation
print "\nOperations:\n1. Addition\n2. Subtraction\n3. Multiplication\n4. Division\n"
print "Choose an operation: "
operation = gets.chomp.to_i

# Parse operation and do the math
if (operation == 1) 
  # addition
  result = num1 + num2
elsif (operation == 2)
  # subtraction
  result = num1 - num2
elsif (operation == 3)
  # multiplication
  result = num1 * num2
elsif (operation == 4)
  # division
  if (num2 == 0)
    puts "You cannot divide by 0!!!"
    exit
  end
  result = num1 / num2
else
  result = "Invalid operation!!!"
end

puts "\nResult: #{result}\n"