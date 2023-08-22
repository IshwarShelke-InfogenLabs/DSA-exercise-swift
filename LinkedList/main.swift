//
//  main.swift
//  LinkedList
//
//  Created by Ishwar Shelke on 03/07/23.
//

import Foundation

// Linked List
//let list = LinkedList<Int>()
//list.append(value: 5)
//list.append(value: 3)
//list.append(value: 10)
//list.append(value: 2)
//list.append(value: 1)
//list.append(value: 19)
//list.append(value: 0)

//print(list.node(atIndex: 2).value)
//list.sortList()
//list.sortByValues()
//list.sortReplace()
//list.printVals()

//print(binarySearch([1,8,16,20,28], 20))

//countingSort([8,4,2,2,8,3,3], 8)


//Preorder: 5 2 1 3 9
//PostOrder: 1 3 2 9 5
//InOrder: 1 2 3 5 9

// Tree
let bst = BinarySearchTree()
bst.insert(value: 5)
bst.insert(value: 2)
bst.insert(value: 9)
bst.insert(value: 1)
bst.insert(value: 3)

//print("Preorder: ")
//bst.traversePreOrder()
//print("Inorder: ")
//bst.traverseInOrder()
//print("Postorder: ")
//bst.traversePostOrder()
let traversals = bst.getTraversals()
print(traversals)


//let node = bst.search(value: 6)
//print(node?.value)
//

//var arr:[Int] = [6,2,1,4,8]
//mergeSort(arr: &arr, l: 0, r: 4)
//for i in arr{
//    print(i)
//}

//quickSort(arr: &arr, low: 0, high: 4)
//for i in arr{
//    print(i)
//}
