// Exercise Structure
struct Exercise {
    var name: String
    var muscleGroups: [String]
    var reps: Int
    var sets: Int
    var totalReps: Int

    init(name: String, muscleGroups: [String], reps: Int, sets: Int) {
        self.name = name
        self.muscleGroups = muscleGroups
        self.reps = reps
        self.sets = sets
        self.totalReps = reps * sets
    }
}

var pushUps = Exercise(name: "Push up", muscleGroups: ["chest", "triceps", "shoulders"], reps: 25, sets: 4)
var sitUps = Exercise(name: "Sit up", muscleGroups: ["abdominals", "chest", "lower back", "obliques"], reps: 30, sets: 3)
var squats = Exercise(name: "Squat", muscleGroups: ["quadraceps", "hamstrings", "glutes"], reps: 20, sets: 4)
