func getUserChoice (userInput: String) -> String {
    if userInput == "rock" || userInput == "paper" || userInput == "scissors" {
        return userInput
    } else {
        return "You must choose rock, paper, or scissors.  Try again."
    }
}


func getComputerChoice () -> String {
    let randomNum = Int.random(in: 0...2)

    switch randomNum {
        case 0: return "rock"
        case 1: return "paper"
        case 2: return "scissors"
        default: return "Something went wrong"
    }
}



