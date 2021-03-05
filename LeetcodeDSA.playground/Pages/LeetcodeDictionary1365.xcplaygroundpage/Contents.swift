import Foundation

/*
 Given the array nums, for each nums[i] find out how many numbers in the array are smaller than it. That is, for each nums[i] you have to count the number of valid j's such that j != i and nums[j] < nums[i].
 
 Return the answer in an array.
 
 
 
 Example 1:
 
 Input: nums = [8,1,2,2,3]
 Output: [4,0,1,1,3]
 Explanation:
 For nums[0]=8 there exist four smaller numbers than it (1, 2, 2 and 3).
 For nums[1]=1 does not exist any smaller number than it.
 For nums[2]=2 there exist one smaller number than it (1).
 For nums[3]=2 there exist one smaller number than it (1).
 For nums[4]=3 there exist three smaller numbers than it (1, 2 and 2).
 Example 2:
 
 Input: nums = [6,5,4,8]
 Output: [2,1,0,3]
 Example 3:
 
 Input: nums = [7,7,7,7]
 Output: [0,0,0,0]
 
 
 Constraints:
 
 2 <= nums.length <= 500
 0 <= nums[i] <= 100
 
 */

/*
 input: array on ints
 output: array on ints -> these are in respcetive spots -> how many numbers in the array are less than this number
 
 [8, 1, 2, 5, 0]
 [4, 1, 2, 3, 0]
 
 
 */


func lessThanDictionary(_ arr: [Int]) -> [Int] {
  var ans = [Int]()
  var dictAns: [Int: Int] = [:]
  
  for (outIndex, num1) in arr.enumerated() {
    for (innerIndex, num2) in arr.enumerated() where outIndex != innerIndex {
      if num1 > num2 {
        if let count = dictAns[num1] {
          dictAns[num1] = count + 1
        } else {
          dictAns[num1] = 1
        }
      } else if num1 <= num2 {
        if let count = dictAns[num1] {
          dictAns[num1] = count
        } else {
          dictAns[num1] = 0
        }
      }
    }
  }
  
  for key in dictAns {
    ans.append(key.value)
  }
  
  return ans
}


let test = [8, 1, 2, 5, 10]

let test2 = [8, 1, 2, 2, 3]
//print(lessThanDictionary(test2))

func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
  var answer = Array(repeating: 0, count: nums.count)
  
  for (i, num1) in nums.enumerated() {
    for (j, num2) in nums.enumerated() where i != j {
      if num1 > num2 {
        answer[i] += 1
      }
    }
  }
  
  print(answer)
  
  
  return answer
}

print(smallerNumbersThanCurrent(test))
/*
 iterate through array - num1
 iterate second time - num2
 compare the elements
  index/enumerated() (i, j)
 where i and j != each other
 num1 -> first loop element
 num2 -> second loop element
 check if element is second array (they are the same array) compare to 1st array element
 if second element is less than first
  go back in to created array (answer) -> increase value at the same index - this should allow me to return in the correcct order
 */
