var englishText = "this is a secret message"

var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-."

// Add your code below 🤫
var letterToMorse = [
  "a" : ".-",
  "b" : "-...",
  "c" : "-.-.",
  "d" : "-..",
  "e" : ".",
  "f" : "..-.",
  "g" : "--.",
  "h" : "....",
  "i" : "..",
  "j" : ".---",
  "k" : "-.-",
  "l" : ".-..",
  "m" : "--",
  "n" : "-.",
  "o" : "---",
  "p" : ".--.",
  "q" : "--.-",
  "r" : ".-.",
  "s" : "...",
  "t" : "-",
  "u" : "..-",
  "v" : "...-",
  "w" : ".--",
  "x" : "-..-",
  "y" : "-.--",
  "z" : "--.."
]

var decodedMessage = ""

for i in secretMessage {
  var morseChar = ""
  
  if i == " " {
      for (key, value) in letterToMorse {
          if value == morseChar {
              decodedMessage.append(key)
              morseChar = ""
              break
              
          } 
      }
  } else if {
      i == "   " {
          decodedMessage.append(" ")
          
      }
  } else {
      morseChar.append(i)
  }
  
}

print(decodedMessage)