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


func determineWinner (_ userChoice: String, _ compChoice: String) -> String {
    let decision = "It's a tie"

    switch userChoice {
        case "rock":
            if compChoice == "paper" {
                return "The computer won"
            } else if compChoice == "scissors" {
                return "The user won"
            }

        case "paper":
            if compChoice == "rock" {
                return "The user won"
            } else if compChoice == "scissors" {
                return "The computer won"
            }

        case "scissors":
            if compChoice == "rock" {
                return "The computer won"
            } else if compChoice == "paper" {
                return "The user won"
            }

        default: 
            return "Something went wrong"
    }
    return decision
}





