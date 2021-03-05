//MARK: HackerRank Test Page

import Foundation


var test = [1, -2, 3, 4, 5, 0]

//for num in test {
//  print(String(format: "%.5f", num))
//}

func plusMinus(_ arr: [Int]) -> Void {
  
  var positive = 0.0
  var negative = 0.0
  var zeroes = 0.0
  let count = Double(arr.count)
  
  for num in arr {
    if num == 0 {
      zeroes += 1.0
    } else if num > 0 {
      positive += 1.0
    } else {
      negative += 1.0
    }
  }
  
  let positivePercentage = positive / count
  let negativePrecentage = negative / count
  let zeroPercentage = zeroes / count
  
  print("Positive:\(positive) percentage:\(String(format: "%.6f", positivePercentage))")
  print("Negative:\(negative) percentage:\(String(format: "%.6f", negativePrecentage))")
  print("Zeros:\(zeroes) percentage:\(String(format: "%.6f", zeroPercentage))")
  
}
plusMinus(test)
