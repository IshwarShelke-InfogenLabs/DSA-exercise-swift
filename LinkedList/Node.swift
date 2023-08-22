//
//  Node.swift
//  LinkedList
//
//  Created by Ishwar Shelke on 03/07/23.
//

import Foundation

public class LLNode<T> {
    var value: T
    var next: LLNode?
    
    init(value: T, next: LLNode? = nil) {
        self.value = value
        self.next = next
    }
}

public class LinkedList<T>{
    public typealias Node = LLNode<T>
    private var head: Node?
    
    public var first: Node?{
        return head
    }
    
    public var last: Node? {
        guard var node = head else {return nil}
        while let next = node.next {
            node = next
        }
        return node
    }
    
    public var count: Int{
        guard var node = head else { return 0 }
        var cnt = 1
        while let next = node.next{
            node = next
            cnt += 1
        }
        return cnt
    }
    
    public func append(value:T){
        let newNode = Node(value: value)
        if let lastNode = last{
            // there is at least one node
            lastNode.next = newNode
        }
        else{
            //No node in the list
            head = newNode
        }
    }
    
    // get node of a particular index
    public func node(atIndex index: Int)->Node{
        if index==0 {
            return head!
        }
        else{
            var node = head?.next
            for _ in 1..<index {
                node = node?.next
                if node == nil {
                    break
                }
            }
            return node!
        }
    }
    
    public func printVals(){
        guard var node = head else {
            print("Nothing to print")
            return
        }
        while let next = node.next{
            print(node.value)
            node = next
        }
        print(node.value)
    }
    
    //  sort list by replacing nodes
    func sortReplace() where T: Comparable{
        if head == nil {
            print("Nothing to sort")
            return
        } else {
            var cnt = count
            cnt = cnt - 1
            
            for _ in stride(from: 0, to: cnt, by: 1){

                var p = head
                var prev = head
                var curr = head?.next

                while curr != nil{
                    if curr!.value < prev!.value{
                        //  if head
                        if head === p && prev === head{
                            prev?.next = curr?.next
                            curr?.next = p
                            head = curr
                            
                            p = curr
                            curr = prev?.next
                        }
                        // if last
                        else if curr?.next == nil{
                            p?.next = curr
                            prev?.next = nil
                            curr?.next = prev
                            
                            curr = prev?.next
                        }
                        // in between
                        else{
                            prev?.next = curr?.next
                            p?.next = curr
                            curr?.next = prev
                            
                            curr = prev?.next
                            p = p?.next
                        }
                    }
                    else{
                        p = prev
                        prev = curr
                        curr = curr?.next
                    }
                }
            }
        }
    }

    // sort by manipulating values
    func sortByValues() where T: Comparable{
        if head == nil {
            print("Nothing to sort")
            return
        } else {
            var curr = head
            
            
            while curr?.next != nil {
                var nextPtr = head
                
                while nextPtr?.next != nil {
                    if nextPtr!.value > nextPtr!.next!.value {
                        let tempValue = nextPtr!.value
                        nextPtr!.value = nextPtr!.next!.value
                        nextPtr!.next!.value = tempValue
                    }
                    nextPtr = nextPtr!.next
                }
                
                curr = curr!.next
            }
            
        }
    }
}
