// Teddy is 4 years old
var dogAge = 20
// The first two years of a dogs life count as 21 human years
var earlyYears = 21
// Each following year counts as 4 human years
var laterYears = (dogAge - 2)*4
// Add earlyYears and laterYears to get humanYears
var humanYears = earlyYears + laterYears

print("My name is Teddy!  Ruff ruff, I am \(humanYears) years old in human years")