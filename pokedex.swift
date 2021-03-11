// Pokemon Class
class Pokemon {
    var num = 0
    var name = ""
    var type = [""]
    var ability = [""]

    init(num: Int, name: String, type: [String], ability: [String]) {
        self.num = num
        self.name = name
        self.type = type
        self.ability = ability
    }

    func displayInfo() {
        print("No.         \(self.num)")
        print("Name:       \(self.name)")
        print("Type:       \(self.type)")
        print("Abilities:  \(self.ability)")
        print("================================")
    }
}

// Subclass Gigantamax Pokemon
class GigantamaxPokemon: Pokemon {
    var location = ""

    init(num: Int, name: String, type: [String], ability: [String]) {
        self.location = location
        super.init(num: num, name: name, type: type, ability: ability)
    }

    override func displayInfo() {
        print("No.         \(self.num)")
        print("Name:       \(self.name)")
        print("Type:       \(self.type)")
        print("Abilities:  \(self.ability)")
        print("Location:   \(self.location)")
        print("================================")
    }
}




var bulbasaur = Pokemon(num: 1, name: "Bulbasaur", type: ["Grass 🌱", "Poison ☠️"], ability: ["Overgrow"])


bulbasaur.displayInfo()
