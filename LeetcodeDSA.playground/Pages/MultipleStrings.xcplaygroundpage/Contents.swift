// Problem 43
// Multiple Strings

/*
 Given two non-negative integers num1 and num2 represented as strings, return the product of num1 and num2, also represented as a string.

 Note: You must not use any built-in BigInteger library or convert the inputs to integer directly.

 Example 1:
 Input: num1 = "2", num2 = "3"
 Output: "6"
 
 Example 2:
 Input: num1 = "123", num2 = "456"
 Output: "56088"

 Constraints:
 1 <= num1.length, num2.length <= 200
 num1 and num2 consist of digits only.
 Both num1 and num2 do not contain any leading zero, except the number 0 itself.
 */
/*
 input num1 and num2
 both are string
 cast both to int, multiple snd return product as string
 */


func multiply(_ num1: String, _ num2: String) -> String {
  var product = 0
  if let int1 = Int(num1), let int2 = Int(num2) {
    product = int1 * int2
  }
  return product.description
}

//print(multiply("498828660196", "840477629533"))
