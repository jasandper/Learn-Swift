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

// Exercise Instances
var pushUps = Exercise(name: "Push up", muscleGroups: ["chest", "triceps", "shoulders"], reps: 25, sets: 4)
var sitUps = Exercise(name: "Sit up", muscleGroups: ["abdominals", "chest", "lower back", "obliques"], reps: 30, sets: 3)
var squats = Exercise(name: "Squat", muscleGroups: ["quadraceps", "hamstrings", "glutes"], reps: 20, sets: 4)

// Regimen Structure
struct Regimen {
    var dayOfWeek: String
    var exercises: [Exercise]

    init(dayOfWeek: String, exercises: [Exercise]) {
        self.dayOfWeek = dayOfWeek
        self.exercises = exercises
    }

    func printExercisePlan() {
        print("Today is \(self.dayOfWeek) and for today's workout we will do:")
        for exercise in exercises {
            print("\(exercise.sets) sets of \(exercise.reps) \(exercise.name)s")
            print("This is a total of \(exercise.totalReps) \(exercise.name)s")
        }
    }
}

var mondayRegimen = Regimen(dayOfWeek: "Monday", exercises: [pushUps])
mondayRegimen.printExercisePlan()
