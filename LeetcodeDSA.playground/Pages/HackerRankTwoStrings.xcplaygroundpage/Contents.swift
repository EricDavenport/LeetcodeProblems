import Foundation
/*
 Given two strings, determine if they share a common substring. A substring may be as small as one character.
 
 Example
 These share the common substring .
 These do not share a substring.
 Function Description
 Complete the function twoStrings in the editor below.
 
 twoStrings has the following parameter(s):
 string s1: a string
 string s2: another string
 
 Returns
 string: either YES or NO
 
 Input Format
 The first line contains a single integer , the number of test cases.
 The following  pairs of lines are as follows:
 The first line contains string .
 The second line contains string .
 
 Constraints
 and  consist of characters in the range ascii[a-z].
 Output Format
 
 For each pair of strings, return YES or NO.
 Sample Input
 2
 hello
 world
 hi
 world
 Sample Output
 
 YES
 NO
 Explanation
 
 We have  pairs to check:
 
 , . The substrings  and  are common to both strings.
 , .  and  share no common substrings.
 */


func twoStrings(s1: String, s2: String) -> String {
  /*
   does this string share a substring with the next string
   check current string against the next string
   to do that point at letter see if the match
   */
  var contains = "NO"
  for letter in s1 {
    if s2.contains(letter) {
      contains = "YES"
      break
    }
  }
  return contains
  
}
