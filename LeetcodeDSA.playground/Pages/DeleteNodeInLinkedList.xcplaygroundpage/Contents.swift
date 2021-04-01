import Foundation

class Solution {
  func deleteNode(_ node: ListNode?) {
    var node = node
    var next: ListNode?
    var prev: ListNode?
    var currentNode = node
    
    while currentNode != nil {
      next = currentNode?.next
      if currentNode?.val == node.val {
        if currentNode === node {
          node = next
        } else {
          prev.next = next
        }
      } else {
        prev.next = currentNode
      }
      currentNode = next
    }
  }
}

public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() {self.val = 0; self.next = nil}
  public init(_ val: Int) { self.val = val; self.next = nil }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next}
}
