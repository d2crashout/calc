function calculate() {
    const num1 = document.getElementById("num1");
    const num2 = document.getElementById("num2");
    const resultDiv = document.getElementById("result");

    const result = Number(num1.value) + Number(num2.value);

    resultDiv.innerHTML += "<h2>" + result + "</h2>";
}