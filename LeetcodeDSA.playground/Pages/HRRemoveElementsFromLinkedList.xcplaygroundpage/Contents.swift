import Foundation

/*
 Given the head of a linked list and an integer val, remove all the nodes of the linked list that has Node.val == val, and return the new head.
 
 input:  LL  [1] -> [2] -> [6] -> [3] -> [4] -> [5] -> [6]  val: 6
 | |
 [X] | |                     [X]
 | |
 V V
 output: LL   [1] -> [2] -> [3] -> [4] -> [5]
 
 Example 1:
 
 Input: head = [1,2,6,3,4,5,6], val = 6
 Output: [1,2,3,4,5]
 Example 2:
 
 Input: head = [], val = 1
 Output: []
 Example 3:
 
 Input: head = [7,7,7,7], val = 7
 Output: []
 */

func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
  var head = head
  var prev: ListNode? = nil
  var next: ListNode? = nil
  var currentNode = head
  
  while currentNode != nil {
    next = currentNode?.next
    if currentNode?.val == val {
      // check if the currentNode is the head -> if so remove
      if currentNode === head {
        head = next
      } else {
        // im looking at the non-head node
        prev?.next = next
      }
    } else {
      // the current node is not the node we are looking for
      // set it to the previous node
      prev = currentNode
    }
    // move forward in while loop
    currentNode = next
  }
  
  
  return head
}

public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() {self.val = 0; self.next = nil}
  public init(_ val: Int) { self.val = val; self.next = nil }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next}
}

class LinkedList {
  var head: ListNode?
  var tail: ListNode?
  
  var isEmpty: Bool {
    return head == nil
  }
}


 function to add to linked list
extension LinkedList {
  func append(_ val: Int) {
    let newNode = ListNode(val)

    guard !isEmpty else {
      head = newNode
      tail = newNode
      return
    }
    // if there are additional values we need to have the vary last node point to the new node
    guard let lastNode = tail else {
      return
    }
    lastNode.next = newNode
    tail = newNode
  }


  // write a function that prints the nodes of a linked list
  func printList() {
    // need to use self to avoid confusion between own initializer
    var head = self.head

    // while pointer exist
    while let currentNode = head {
      print(currentNode.val)
      head = currentNode.next
    }
  }
}

var sixNode2 = ListNode(6, nil)
var fiveNode = ListNode(5, sixNode2)
var fourNode = ListNode(4, fiveNode)
var threeNode = ListNode(3, fourNode)
var sixNode1 = ListNode(6, threeNode)
var twoNode = ListNode(2, sixNode1)
var oneNode = ListNode(1, twoNode)

//var list = LinkedList()

removeElements(oneNode, 6)
