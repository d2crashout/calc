function calculate() {
    const num1 = document.getElementById("num1");
    const num2 = document.getElementById("num2");
    const operation = document.getElementById("operation").value;
    const resultDiv = document.getElementById("result");

    let result;

    switch (operation) {
        case "addition":
            result = Number(num1.value) + Number(num2.value);
            break;
        case "subtraction":
            result = Number(num1.value) - Number(num2.value);
            break;
        case "multiplication":
            result = Number(num1.value) * Number(num2.value);
            break;
        case "division":
            result = Number(num1.value) / Number(num2.value);
            break;
        default:
            result = "Invalid operation";
    }

    resultDiv.innerHTML = "<h1>Result: " + result + "</h1>";
}
