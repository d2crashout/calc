const readline = require("readline");

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question("Choose a number: ", (num1Input) => {
  const num1 = parseFloat(num1Input);

  rl.question("Choose another number: ", (num2Input) => {
    const num2 = parseFloat(num2Input);

    console.log("Pick an operation:");
    console.log("1. Addition");
    console.log("2. Subtraction");
    console.log("3. Multiplication");
    console.log("4. Division");

    rl.question("Pick an operation: ", (operationInput) => {
      const operation = parseInt(operationInput);
      let result;

      if (operation === 1) {
        result = num1 + num2;
      } else if (operation === 2) {
        result = num1 - num2;
      } else if (operation === 3) {
        result = num1 * num2;
      } else if (operation === 4) {
        result = num1 / num2;
      } else {
        console.log("Invalid Operation!!!");
        rl.close();
        return;
      }

      console.log("Result:", result);
      rl.close();
    });
  });
});
