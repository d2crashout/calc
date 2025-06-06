#include <stdio.h>

// declare variables
float num1;
float num2;
int operation;
float result;

int main() {
    // define/get the numbers
    printf("Choose a number: ");
    scanf("%f", &num1);
    printf("Choose another number: ");
    scanf("%f", &num2);
    
    // get the operation
    printf("Choose an operation");
    printf("\n 1. Addition \n 2. Subtraction \n 3. Multiplication \n 4. Division \n");
    printf("Choose an operation: ");
    scanf("%d", &operation);

    // parse the operation and actually do math
    if (operation == 1) {
        // addition
        result = num1 + num2;
    } else if (operation == 2) {
        // subtraction
        result = num1 - num2;
    } else if (operation == 3) {
        // multiplication
        result = num1 * num2;
    } else if (operation == 4) {
        // division
        result = num1 / num2;
    } else {
        printf("Invalid operation!!!");
        return 0;
    }
    
    printf("\n");
    printf("Result: %f\n", result);
    
    return 0;
}