var list = [2, 4, 3, 6, 1, 9]


var evenNum = 0
var oddNum = 1

for num in list {
  if num % 2 == 0 {
  evenNum += num 
  } else { 
      oddNum *= num
    }
}

print("Sum of even numbers is \(evenNum)") 
print("Product of odd numbers is \(oddNum)")

