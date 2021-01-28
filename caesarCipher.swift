// // My initial attempt

// let alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

// var message = "xyz"
// var codeMessage = ""
// var alphabetLength = alphabet.count - 1


// for char in message {
//   if char == " " {
//     codeMessage.append(" ")
//   } else if char == "x" {
//     codeMessage.append("a")
//   } else if char == "y" {
//     codeMessage.append("b")
//   } else if char == "z" {
//     codeMessage.append("c")
//   } else {
//   for i in 0...alphabetLength {
//     if char == alphabet[i] {
//       codeMessage.append(alphabet[i + 3])
//       break
//     } 
//   }
//   }
//   }


// print(message)
// print(codeMessage)


// The solution

var alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
var message = "Codecademy".lowercased()
var cipher = Array(message)

for i in 0 ..< cipher.count {
    for j in 0 ..< alphabet.count {
        if cipher[i] == alphabet[j] {
            cipher[i] = alphabet[(j+3) % 26] // the % 26 allows for the 'wrap' and allows for much more dynaic and cleaner code witout the need for the if-else statements in initial attempt
            break
        }
    }
}

print(cipher)

// To convert array back to a string
print(String(cipher))


