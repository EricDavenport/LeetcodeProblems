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

//func reverseList(_ head: ListNode?) -> ListNode? {
//  // create a copy of optional head given
//  var head = head
//  // create a previousNode variable
//  var previousNode: ListNode?
//  // create a nextNode variable
//  var nextNode: ListNode?
//
//  // while the node we are viewing (currentNode) equals the head
//  while let currentNode = head {
//    // the nextNode variable is the currentNode's next property(ListNode)
//    nextNode = currentNode.next
//    // change the currentNode next variable to the previous node var created
//    currentNode.next = previousNode
//    // set the previous node to the currentnode
//    previousNode = currentNode
//    // change head so we can move forward -> set to the next noxe which the currentNode.next
//    head = nextNode
//  }
//  return previousNode
//}























// reverse a linked list on my own
//create list + node

class Node {
  var value: Int
  var next: Node?
  
  init(_ value: Int, _ next: Node?) {
    self.value = value
    self.next = next
  }
}
//
//class LinkedList {
//  var head: Node?
//  var tail: Node?
//}


// define a linkedlist

class LinkedList {
  var head: Node?
  var tail: Node?
  
  var isEmpty: Bool {
    return head == nil
  }
}


// function to add to linked list
extension LinkedList {
  func append(_ value: Int) {
    let newNode = Node(value, nil)
    
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
      print(currentNode.value)
      head = currentNode.next
    }
  }
}

func reversedList2(_ head: Node?) -> Node? {
  var currentNode = head
  var next: Node?
  var prev: Node?
  
  while currentNode != nil {
    next = currentNode?.next
    currentNode?.next = prev
    print("Prev: \(prev?.value ?? -1), curr: \(currentNode?.value ?? -1), next: \(next?.value ?? -1)")
    prev = currentNode
    currentNode = next
  }
  print(prev?.value ?? -1)
  return prev
}

let threeNode = Node(3, nil)
let twoNode = Node(2, threeNode)
let oneNode = Node(1, twoNode)

let myList = reversedList2(oneNode)

