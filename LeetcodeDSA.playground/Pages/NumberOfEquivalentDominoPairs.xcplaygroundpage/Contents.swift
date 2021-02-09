//MARK: Question 1128
//MARK: Number of Equivalent Domino Pairs

/*
 Given a list of dominoes, dominoes[i] = [a, b] is equivalent to dominoes[j] = [c, d] if and only if either (a==c and b==d), or (a==d and b==c) - that is, one domino can be rotated to be equal to another domino.
 
 Return the number of pairs (i, j) for which 0 <= i < j < dominoes.length, and dominoes[i] is equivalent to dominoes[j].
 
 
 
 Example 1:
 Input: dominoes = [[1,2],[2,1],[3,4],[5,6]]
 Output: 1
 
 */

/*
 inout: [[Int]]]
 [[1, 2], [2, 3], [2, 1]]
 OutPut: Int
 1 -> [1, 2] and [2, 1] are pairs
 */

/*
 What needs to happen
 look at each domimo as they come in
 tally the domino
 return which ever value is highest
 */

func numEquivDominoPairs(_ dominoes: [[Int]]) -> Int {
  var dict: [[Int]: Int] = [:]
  var returnValue = 0
  
  for domino in dominoes {
    let sortedDomino = domino.sorted()
    if let count = dict[sortedDomino] {
      dict[sortedDomino] = count + 1
    } else {
      dict[domino] = 1
    }
  }
  print(dict)
  
  for pair in dict {
    print(pair)
    if pair.value >= 2 {
      returnValue = pair.value
    }
  }
  
  
  
//  guard returnValue > 1 else {
//    return 0
//  }
//
//  if returnValue == 2 {
//    return 1
//  }
  
  return returnValue
}

let test2 = [[1,1],[2,2],[1,1],[1,2],[1,2],[1,1]]
let test = [[1,2],[1,2],[1,1],[1,2],[2,2]]
let test3 = [[1,2], [2,3], [4,5]]
let test4 = [[1,2],[2,1],[3,4],[5,6]]
let test5 = [[1,1],[2,2],[1,1],[1,2],[1,2],[1,1]]
//print(numEquivDominoPairs(test))
//print(numEquivDominoPairs(test2))
//print(numEquivDominoPairs(test3))
//print(numEquivDominoPairs(test4))
print(numEquivDominoPairs(test5))
