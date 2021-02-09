//MARK: Problem 747
// Largest Number At least twice

import Foundation
/*
 In a given integer array nums, there is always exactly one largest element.
 
 Find whether the largest element in the array is at least twice as much as every other number in the array.
 
 If it is, return the index of the largest element, otherwise return -1.
 
 Example 1:
 Input: nums = [3, 6, 1, 0]
 Output: 1
 Explanation: 6 is the largest integer, and for every other number in the array x,
 6 is more than twice as big as x.  The index of value 6 is 1, so we return 1.
 
 
 Example 2:
 Input: nums = [1, 2, 3, 4]
 Output: -1
 Explanation: 4 isn't at least as big as twice the value of 3, so we return -1.
 
 
 Note:
 nums will have a length in the range [1, 50].
 Every nums[i] will be an integer in the range [0, 99].
 
 */

/*
 self talk
 input: [Int}
 output: Int -> The index of element -> not the value inside of array[index]
 always one largest element -> can isolate this
 isolatedElement > array[index + 1...] * 2 --->>>> REQUIRED
 if all values are undex -> return element index
 else return -1
 */

func dominantIndex(_ nums: [Int]) -> Int {
  var largest = 0
  var returnIndex = -1
  
  for (index, num) in nums.enumerated() {
    if num > largest {
      largest = num
      returnIndex = index
    }
  }
  print("largest: \(largest)")
  print("index: \(returnIndex)")
  
  for num in nums {
    // check if largest is greater than num times two
    print("num:\(num)")
    if largest != num && largest < (num * 2) {
      return -1
    }
  }
  
  
  return returnIndex
}

let set1 = [1, 2, 3, 8, 2, 3, 4]

print(dominantIndex(set1))
