var spanish101: Set = ["Angela", "Declan", "Aldany", "Alex", "Sonny", "Alif", "Skyla"]
var german101: Set = ["Angela", "Alex", "Declan", "Kenny", "Cynara", "Adam"]
var advancedCalculus: Set = ["Cynara", "Gabby", "Angela", "Samantha", "Ana", "Aldany", "Galina", "Jasmine"]
var artHistory: Set = ["Samantha", "Vanessa", "Aldrian", "Cynara", "Kenny", "Declan", "Skyla"]
var englishLiterature: Set = ["Gabby", "Jasmine", "Alex", "Alif", "Aldrian", "Adam", "Angela"]
var computerScience: Set = ["Galina", "Kenny", "Sonny", "Alex", "Skyla"]

// Write your code below 🍎

// Create a set with students from all classes
var allStudents = spanish101.union(german101).union(advancedCalculus).union(artHistory).union(englishLiterature).union(computerScience)

// Print the name of each student and output total number
for student in allStudents {
  print(student)
}
print("Total number of students: \(allStudents.count)")

// Students not taking any language classes
var language = spanish101.union(german101)
var noLanguage = allStudents.subtracting(language)
print(noLanguage)
/* This also seems to prouduce same result

var noLanguage = allStudents.subtracting    (spanish101).subtracting(german101)
print(noLanguage)

*/

// Students taking german or spanish but not both
var spanishOrGerman = spanish101.symmetricDifference(german101)
print(spanishOrGerman)

// Students who take spanish, german, and englishLit
var languageAwardWinners = spanish101.intersection(german101).intersection(englishLiterature)
print(languageAwardWinners)

// Classes with 7 or more students
var sevenPlus = 0
var classSet: Set = [spanish101, german101, advancedCalculus, artHistory, englishLiterature, computerScience ]

for students in classSet {
  if students.count >= 7 {
    sevenPlus += 1
  }
}
print("\(sevenPlus) classes have 7 or more students.")

// Bonus: remove "Skyla" from any classes shes currently enrolled in
// for x in classSet {
//   if x.contains("Skyla") {
//     x.remove("Skyla")
//   }
// }

// Bonus: combine students from computerScience and advancedCalculs
var fieldTrip = computerScience.union(advancedCalculus)
print(fieldTrip)

// Remove any students in fieldTrip who are also in german101
var nonGerman = fieldTrip.subtracting(german101)
print(nonGerman)
