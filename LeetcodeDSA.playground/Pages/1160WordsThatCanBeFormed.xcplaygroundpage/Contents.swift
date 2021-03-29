import Foundation

/*
 You are given an array of strings words and a string chars.
 A string is good if it can be formed by characters from chars (each character can only be used once).
 Return the sum of lengths of all good strings in words.
 
 Example 1:
 Input: words = ["cat","bt","hat","tree"], chars = "atach"
 Output: 6
 Explanation:
 The strings that can be formed are "cat" and "hat" so the answer is 3 + 3 = 6.
 
 Example 2:
 Input: words = ["hello","world","leetcode"], chars = "welldonehoneyr"
 Output: 10
 Explanation:
 The strings that can be formed are "hello" and "world" so the answer is 5 + 5 = 10.
 
 
 Note:
 1 <= words.length <= 1000
 1 <= words[i].length, chars.length <= 100
 All strings contain lowercase English letters only.
 */

//func countCharacters(_ words: [String], _ chars: String) -> Int {
//  var count = 0
//  var chars = chars
//  var temp = ""
//
//  for word in words {
//    // if word count is greater than given characters
//    if word.count > chars.count {
//      continue
//    }
//    print(word)
//
//    for (index, letter) in word.enumerated() {
//      if chars.contains(letter) {
//        temp.append(letter)
//      }
//    }
//    print(temp)
//  }
//  return count
//}

func countCharacters(_ words: [String], _ chars: String) -> Int {
  var dict = [Character:Int]()
  for char in chars {
    dict[char] = (dict[char] ?? 0) + 1
  }
  print(dict)
  return -1
}

let test = ["eric", "snap", "chat", "two", "a", "cooling", "chilling", ]
countCharacters(test, "smas")

/*
 input: words: [String], chars: String
 output: Int
 given one String -> that the Strings in words array must use the etters from to spells itself
 words[0] = hello
 chars = hjokllpde
 within chars -> i can spell hello
 so i need to keep track of the amount of characters in the word i spelled
 while itersating through the array words
 return the sum on all words letter count addded together
 
 example
 in out hello good bye
 shodtuni
 in + out
 2 +  3
 5
 */
