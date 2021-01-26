var a: Double = 3
var b: Double = -11
var c: Double = -4

var root1: Double = b*b - 4*a*c
root1 = root1.squareRoot()
root1 += -b
root1 /= 2*a
// The negative root using just one line
var root2: Double = (-b - (b*b - 4*a*c).squareRoot()) / (2*a)

print("Root 1 is \(root1)")
print("Root 2 is \(root2)")