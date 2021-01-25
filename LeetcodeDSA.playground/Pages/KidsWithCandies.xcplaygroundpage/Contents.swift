// Problem 1431

/*
 Given the array candies and the integer extraCandies, where candies[i] represents the number of candies that the ith kid has.

 For each kid check if there is a way to distribute extraCandies among the kids such that he or she can have the greatest number of candies among them. Notice that multiple kids can have the greatest number of candies.

  

 Example 1:

 Input: candies = [2,3,5,1,3], extraCandies = 3
 Output: [true,true,true,false,true]
 Explanation:
 Kid 1 has 2 candies and if he or she receives all extra candies (3) will have 5 candies --- the greatest number of candies among the kids.
 Kid 2 has 3 candies and if he or she receives at least 2 extra candies will have the greatest number of candies among the kids.
 Kid 3 has 5 candies and this is already the greatest number of candies among the kids.
 Kid 4 has 1 candy and even if he or she receives all extra candies will only have 4 candies.
 Kid 5 has 3 candies and if he or she receives at least 2 extra candies will have the greatest number of candies among the kids.
 Example 2:

 Input: candies = [4,2,1,1,2], extraCandies = 1
 Output: [true,false,false,false,false]
 Explanation: There is only 1 extra candy, therefore only kid 1 will have the greatest number of candies among the kids regardless of who takes the extra candy.
 Example 3:

 Input: candies = [12,1,12], extraCandies = 10
 Output: [true,false,true]
  

 Constraints:

 2 <= candies.length <= 100
 1 <= candies[i] <= 100
 1 <= extraCandies <= 50

 */

/*
 input -> array of int , single int
 output -> array of Bool
 
 check greatest candies number
 set that aside
 check each kid if adding extracandies will put the at or above the greatest
 */

func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
  var greatestCandies = 0
  var result = [Bool]()
  
  for kid in candies {
    if kid > greatestCandies {
      greatestCandies = kid
    }
  }
  
  for kid in candies {
    if kid + extraCandies >= greatestCandies {
      print("kidCandies: \(kid), extraCandies:\(extraCandies), greatesCandies: \(greatestCandies)")
      result.append(true)
    }
    else if kid + extraCandies < greatestCandies {
      result.append(false)
    }
  }
  
  return result
}


let test1 = [2,3,5,1,3]
let test2 = [4,2,1,1,2]
let test3 = [12,1,12]

kidsWithCandies(test1, 3)
kidsWithCandies(test2, 1)
kidsWithCandies(test3, 10)
