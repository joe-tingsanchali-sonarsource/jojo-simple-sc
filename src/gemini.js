// Global pollution
var globalCount = 0;
function update() { ... } 

// Formatting problems + magic numbers
function doSomething(data) {
for(let i=0;i < data.length; i++) {
  if (data[i] > 25) {
    // ... some logic
  } 
}}

// Complex function, nesting, DOM issues
function processAndDisplay(input) {
  let result = 0;
  for (let i = 0; i < input.length; i++) {
    if (input[i] % 2 === 0) {
      // More calculations
      for (let j = 0; j < 5; j++) { result += j * 2; } 
    } 
  }
  document.getElementById('resultArea').innerHTML = result + input; 
}

// Security vulnerabilities
function calculate(expr) {
  return eval(expr); 
}
function search(name) {
  db.query("SELECT * FROM users WHERE username = '" + name + "'");
}

// Unused code
var oldVariable = 10; 
// function notUsedAnywhere() { ... }
