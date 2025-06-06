function calculate() {
    const num1 = document.getElementById("num1").value;
    const num2 = document.getElementById("num2").value;
    const operation = document.getElementById("operation").value;
    const resultDiv = document.getElementById("result");

    if (num1 === "" || num2 === "") {
        resultDiv.innerHTML = "<h1>Please enter both numbers</h1>";
        return;
    }

    let n1 = Number(num1);
    let n2 = Number(num2);
    let result;

    switch (operation) {
        case "addition":
            result = n1 + n2;
            break;
        case "subtraction":
            result = n1 - n2;
            break;
        case "multiplication":
            result = n1 * n2;
            break;
        case "division":
            if (n2 === 0) {
                resultDiv.innerHTML = "<h1>Cannot divide by zero</h1>";
                return;
            }
            result = n1 / n2;
            break;
        default:
            result = "Invalid operation";
    }

    resultDiv.innerHTML = "<h1>Result: " + result + "</h1>";
}
