import UIKit

//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//  var answer = [Int]()
//  for (i, num) in nums.enumerated() {
//    if (num + nums[i + 1]) == target {
//      answer.append(i)
//      answer.append(i + 1)
//      return answer
//    }
//  }
//  return answer
//}

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
  var dict = [Int: Int]()
  
  for index in 0..<nums.count {
    
    if let found = dict[target - nums[index]] {
      return [found, index]
      
    } else {
      dict[nums[index]] = index
    }
    print(dict)
  }
  
  return []
}

let test1 = [17, 5, 4, 34, 20, 2, 3, 13, 1]
let test2 = [1, 2, 3, 4, 5]
//print(twoSum(test2, 9))


//func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
//  var dict = [Int: Int]()
//
//  // each index from 0 ... last index
//  for index in 0..<nums.count {
//    if let found = dict[target - nums[index]] {
//      return [found, index]
//    }
//  }
//
//  return []
//}

/*
 My answer failed because there was no case for if the array didnt have any matches for target or for returning empty
 
 More optimized - using a dictuionary - cycle through once mapping all nibmers into dictionary
 
 */

func twoSum3(_ nums: [Int], _ target: Int) -> [Int] {
  var lowerIndex = 0
  var upperIndex = nums.count - 1
  var answer: [Int] = []
  
  while lowerIndex < upperIndex {
    let total = nums[lowerIndex] + nums[upperIndex]
    
    if total == target {
      answer.append(nums[lowerIndex])
      answer.append(nums[upperIndex])
    } else if total < target {
      lowerIndex += 1
    } else if total > target {
      upperIndex -= 1
    }
  }
  return answer
}

//twoSum3(test2, 9)


func twoSumOfficial(_ nums: [Int], _ target: Int) -> [Int] {
  var low = 0
  var high = nums.count - 1
  
  while low < high {
    let total = nums[low] + nums[high]
    
    if total == target {
      print("target: \(target), total:\(total)")
      print([high, low])
      return [high, low]
    } else if total < target {
      print("target: \(target), total:\(total)")
      low += 1
    } else if total > target {
      print("target: \(target), total:\(total)")
      high -= 1
    }
  }
  return []
}


let test2a = [3, 2, 3]

//twoSumOfficial(test2a, 6)


func twoSumBroke(_ nums: [Int], _ target: Int) -> [Int] {
  for (index, num) in nums.enumerated() {
    for (index2, num2) in nums.enumerated() where index != index2 {
      if num + num2 == target {
        return [index, index2]
      }
    }
  }
  return []
}
twoSumBroke(test2a, 6)
