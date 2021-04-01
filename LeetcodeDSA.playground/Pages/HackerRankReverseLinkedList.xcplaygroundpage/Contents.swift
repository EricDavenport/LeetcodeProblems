import Foundation

/*
 /**
  * Definition for singly-linked list.
  * public class ListNode {
  *     public var val: Int
  *     public var next: ListNode?
  *     public init() { self.val = 0; self.next = nil; }
  *     public init(_ val: Int) { self.val = val; self.next = nil; }
  *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  * }
  */
 */

func reverseList(_ head: ListNode?) -> ListNode? {
  // create a copy of optional head given
  var head = head
  // create a previousNode variable
  var previousNode: ListNode?
  // create a nextNode variable
  var nextNode: ListNode?
  
  // while the node we are viewing (currentNode) equals the head
  while let currentNode = head {
    // the nextNode variable is the currentNode's next property(ListNode)
    nextNode = currentNode.next
    // change the currentNode next variable to the previous node var created
    currentNode.next = previousNode
    // set the previous node to the currentnode
    previousNode = currentNode
    // change head so we can move forward -> set to the next noxe which the currentNode.next
    head = nextNode
  }
  return previousNode
}
