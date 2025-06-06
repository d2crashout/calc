import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Pick a number: ");
        Float num1 = Float.parseFloat(input.nextLine());

        System.out.print("Pick another number: ");
        Float num2 = Float.parseFloat(input.nextLine());

        System.out.println("Pick an operation: ");
        System.out.println("1. Addition");
        System.out.println("2. Subtraction");
        System.out.println("3. Multiplication");
        System.out.println("4. Division");       
        System.out.print("Choose one: "); 

        int operation = Integer.parseInt(input.nextLine());
        input.close();
        if (operation == 1) {
            Float result = num1 + num2;
            System.out.println(result);
        } else if (operation == 2) {
            Float result = num1 - num2;
            System.out.println(result);
        } else if (operation == 3) {
            Float result = num1 * num2;
            System.out.println(result);
        } else if (operation == 4) {
            Float result = num1 / num2;
            System.out.println(result);
        } else {
            System.out.println("Invaid operation!!!");
        }
    }
}