// Problem 203

// Remove LinkedListElements

/**
 Definition for singly-linked list.
 public class ListNode {
 public var val: Int
 public var next: ListNode?
 public init() { self.val = 0; self.next = nil; }
 public init(_ val: Int) { self.val = val; self.next = nil; }
 public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }
 */
public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() {
    self.val = 0
    self.next = nil}
  public init(_ val: Int, _ next: ListNode?) {
    self.val = val
    self.next = next}
  
  
}

func printNodeValues(_ node: ListNode?) {
    // node is optional
    var node = node
    
    // looking at current node ->
    while let currentNode = node {
      // if exist print value
      print(currentNode.val, separator: "")
      // point to the next node so print statement can continue
      node = currentNode.next
    }
  }


//func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
//  var head = head
//  var next: ListNode? = nil
//  var saved: ListNode? = nil
//
//  while let currentNode = head {
//    if currentNode.val == val {
//      print("same value")
//      head = currentNode.next
//    }
//  }
//  return ListNode(1, nil)
//}
func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
   var currentNode = head

   while currentNode != nil && currentNode.val == val {
     currentNode = currentNode.next
   }
   
   
   while currentNode != nil && currentNode.next != nil {
     if currentNode.next.val == val {
       currentNode.next = currentNode.next.next
     } else {
       currentNode = currentNode.next
     }
   }
   
   return currentNode
 }

let node1 = ListNode(6, nil)
let node2 = ListNode(5, node1)
let node3 = ListNode(4, node2)
let node4 = ListNode(3, node3)
let node5 = ListNode(6, node4)
let node6 = ListNode(2, node5)
let node7 = ListNode(1, node6)

removeElements(node7, 6)
printNodeValues(node1)
/*
 Remove all elements from a linked list of integers that have value val.

 Example:

 Input:  1->2->6->3->4->5->6, val = 6
 Output: 1->2->3->4->5

 */
