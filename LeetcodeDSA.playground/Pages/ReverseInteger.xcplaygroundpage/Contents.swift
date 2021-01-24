import Foundation

// REVERSE INTEGER
// Problem 7
/*
 Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

 Example 1:
 Input: x = 123
 Output: 321
 
 Example 2:
 Input: x = -123
 Output: -321
 
 Example 3:
 Input: x = 120
 Output: 21
 
 Example 4:
 Input: x = 0
 Output: 0
 */

func reverse(_ x: Int) -> Int {
  let isNegative: Bool = x < 0
  var y = Int()
  var reversed = 0
  
  
  if isNegative {
    y = x * -1
  } else {
    y = x
  }
  
  while y > 0 {
    reversed = (reversed * 10)  + (y % 10)
    y = Int(y / 10)
  }
  
  if isNegative {
    reversed = reversed * -1
  }
  
  // number can not be greater than 32-bit integer
  guard reversed < INT32_MAX else {
    return 0
  }

  return reversed
  }

print(reverse(-987))

/*
 check for positive / negatives
 separate digits
 reverse the digits
 join back
 return to positive or negative value
 
 -214
 determine positive/negative with saved var
 make number positive
 separate first digit mod (%) full digit
 try int first - round after
 repeat cycle??
 */


