//
//  Trees.swift
//  LinkedList
//
//  Created by Ishwar Shelke on 04/07/23.
//

import Foundation

class TreeNode {
    var value: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(value: Int, left: TreeNode? = nil, right: TreeNode? = nil) {
        self.value = value
        self.left = left
        self.right = right
    }
}

class BinarySearchTree{
    private var root: TreeNode?
    
    func insert(value: Int) {
        let newNode = TreeNode(value: value)
        
        if root == nil {
            root = newNode
        } else {
            insertNode(node: root, newNode: newNode)
        }
    }
    
    func insertNode(node: TreeNode?, newNode: TreeNode) {
        guard let node = node else { return }
        
        if newNode.value < node.value {
            if node.left == nil {
                node.left = newNode
            } else {
                insertNode(node: node.left, newNode: newNode)
            }
        } else {
            if node.right == nil {
                node.right = newNode
            } else {
                insertNode(node: node.right, newNode: newNode)
            }
        }
    }
    
    var pre = [Int]()
    var post = [Int]()
    var inArr = [Int]()
    
    func preOrder(node:TreeNode?){
        if node != nil {
            pre.append(node!.value)
            preOrder(node: node?.left)
            preOrder(node: node?.right)
        }
    }
    
    func postOrder(node:TreeNode?){
        if node != nil {
            postOrder(node: node?.left)
            postOrder(node: node?.right)
            post.append(node!.value)
        }
    }
    
    func inOrder(node:TreeNode?){
        if node != nil {
            inOrder(node: node?.left)
            inArr.append(node!.value)
            inOrder(node: node?.right)
        }
    }
    
    func getTraversals() -> (pre:[Int],post:[Int],inArr:[Int]){

        preOrder(node: root)
        postOrder(node: root)
        inOrder(node: root)

        return (pre, post, inArr)
    }
}
