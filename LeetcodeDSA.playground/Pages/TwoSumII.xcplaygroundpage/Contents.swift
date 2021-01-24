// TWO SUM II
// Problem 167

/*
 Given an array of integers that is already sorted in ascending order, find two numbers such that they add up to a specific target number.

 The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2.

 Note:

 Your returned answers (both index1 and index2) are not zero-based.
 You may assume that each input would have exactly one solution and you may not use the same element twice.
  

 Example 1:

 Input: numbers = [2,7,11,15], target = 9
 Output: [1,2]
 Explanation: The sum of 2 and 7 is 9. Therefore index1 = 1, index2 = 2.
 Example 2:

 Input: numbers = [2,3,4], target = 6
 Output: [1,3]
 Example 3:

 Input: numbers = [-1,0], target = -1
 Output: [1,2]
  

 Constraints:

 2 <= nums.length <= 3 * 104
 -1000 <= nums[i] <= 1000
 nums is sorted in increasing order.
 -1000 <= target <= 1000

 */

func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
  var lowIndex = 0
  var highIndex = numbers.count - 1
  
  while lowIndex < highIndex {
    if (numbers[lowIndex] + numbers[highIndex]) == target {
      // answer must return non-zero indices
      return [lowIndex + 1, highIndex + 1]
    } else if (numbers[lowIndex] + numbers[highIndex]) < target {
      lowIndex += 1
    } else if (numbers[lowIndex] + numbers[highIndex]) > target {
      highIndex -= 1
    }
  }
  
  return []
}

let test1 = [2,7,11,15]
print(twoSum(test1, 9))
