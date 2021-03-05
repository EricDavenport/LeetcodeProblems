import Foundation

var freq: [String: Int] = [:]

let names = ["New York", "Queens", "Winston Salem", "High Point", "Elmont", "Queens", "Winston Salem"]

for city in names {
  if var count = freq[city] {
    freq[city] = count + 1
  } else {
    freq[city] = 1
  }
}
print(freq)

// Challenge
/*
 Write a function that takes in an array of integers (arr) and a number (n) You function should return an array with only numbers appearing n or more times. Your solution must work in O(n) time.

 Example: Input: [1,3,4,1,9,1,3,4,3,1,2], 3 Output: [1,3]
 */
/*
 input: array of ints and a number arr:[Int] and n: Int
 output: array of int -> [Int]
 array should only consist of numbers that appear n (givven number) times or more
 solution must O(n)

 create a return object
 write return line
 create dictionary to keep count
 iterate through array and add values to dict counting the number of appearences
 iterate through dictionary
 if value greater than given number ->
 add to return array
 */



func dictionaryChallenge(_ arr: [Int],_ target: Int) -> [Int] {
  var ans = [Int]()
  var freqDict = [Int: Int]()

  for number in arr {
    if let count = freqDict[number] {
      freqDict[number] = count + 1
    } else {
      freqDict[number] = 1
    }
  }
  
  for pair in freqDict {
    if pair.value >= target {
      ans.append(pair.key)
    }
  }
  
  
  return ans
}


let test = [1, 3, 4, 1, 9, 1, 3, 4, 3, 1, 2, 1, 3, 1]
print(dictionaryChallenge(test, 6))
