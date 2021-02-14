var englishText = "this is a secret message"
var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-."
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

//// Convert englishText to a string of morse code
var englishToMorse = ""

for char in englishText {
    if let morseChar = letterToMorse["\(char)"] {
        englishToMorse += morseChar + " "
    } else {
        englishToMorse += "   "
    }
}
print(englishToMorse)

//// Decode secretMessage

var decodedMessage = ""
var morseCodeArray = [String]()
var currMorse = ""

// convert secretMessage to an array of strings containing each morse char
for char in secretMessage {
    if char != " " {
        currMorse.append(char)
    } else {
        switch currMorse {
            case "": 
            currMorse += " "
            case " ":
            morseCodeArray.append(" ")
            currMorse = ""
            default:
            morseCodeArray.append(currMorse)
            currMorse = ""
        }
    }
}
morseCodeArray.append(currMorse)
print(morseCodeArray)

// Decode morseCodeArray

// create a new dictionary with morse code as key and english letter as value
var morseToLetter: [String : String] = [:]

for (letter, morse) in letterToMorse {
    morseToLetter[morse] = letter
}

// decode 
for morse in morseCodeArray {
    if let englishLetter = morseToLetter[morse] {
        decodedMessage += englishLetter
    } else {
        decodedMessage += " "
    }
}
print(decodedMessage)



