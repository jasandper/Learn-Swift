var text = ["l", "e", "v", "e", "l"]
var reversed = [String]()

var counter = text.count - 1

// loop using while loop
while counter >= 0 {
  reversed.append(text[counter])
  counter -= 1
}

// loop using for-in with stride
// for _ in stride(from:4, to: -1, by: -1) {
//   reversed.append(text[counter])
//   counter -= 1
// }

print(reversed)

if text == reversed {
  print("We have a palindrome!")
} else {
  print("We do NOT have a palindrome.")
}
