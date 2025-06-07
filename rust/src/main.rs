use std::io;

fn main() {
    let mut input = String::new();

    println!("Please enter a number: ");
    io::stdin().read_line(&mut input).expect("Failed to read line");

    // Remove whitespace and convert to a number
    let number = input.trim().parse::<i32>().expect("Please enter a valid number");

    println!("You entered: {}", number);
}
