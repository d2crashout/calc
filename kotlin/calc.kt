fun main() {
    // get the numbers
    print("Choose a number: ")
    val num1 = readln().toFloat()
    print("Choose another number: ")
    val num2 = readln().toFloat()

    // get operation
    print("\nOperations:\n1. Addition\n2. Subtraction\n3. Multiplication\n4. Division")
    print("\nChoose an operation: ")
    val operation = readln().toInt()

    var result: String = ""

    // parse operation and do the math
    if (operation == 1) {
        // addition
        result = (num1 + num2).toString()
    } else if (operation == 2) {
        // subtraction
        result = (num1 - num2).toString()
    } else if (operation == 3) {
        // multiplication
        result = (num1 * num2).toString()
    } else if (operation == 4) {
        // division
        // avoid division by zero
        result = if (num2 != 0f) (num1 / num2).toString() else "Error: division by zero"
    } else {
        // invalid operation
        result = "Invalid operation!!!"
    }

    // print the result
    println("Result: $result")
}
