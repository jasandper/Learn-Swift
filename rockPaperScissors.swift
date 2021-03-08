func getUserChoice (userInput: String) -> String {
    if userInput == "rock" || userInput == "paper" || userInput == "scissors" {
        return userInput
    } else {
        return "You must choose rock, paper, or scissors.  Try again."
    }
}

print(getUserChoice(userInput: "rock"))