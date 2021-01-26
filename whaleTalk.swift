// Create your Whale Talk program below:
var input = "How do I sound talking whale?"
var output = ""

for char in input {
  let lowerChar = char.lowercased()

  switch lowerChar {
    case "a", "i", "o":
    output += lowerChar.uppercased()
    // case "e":
    // output += "EE"
    // case "u":
    // output += "UU"
    // We can combine the previous two cases this way:
    case "e", "u": 
    output += lowerChar == "e" ? "EE" : "UU"
    default:
    continue
    }
}

print(output)

