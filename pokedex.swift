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

var bulbasaur = Pokemon(num: 1, name: "Bulbasaur", type: ["Grass 🌱", "Poison ☠️"], ability: ["Overgrow"])

bulbasaur.displayInfo()
