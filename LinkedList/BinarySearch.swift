//
//  BinarySearch.swift
//  LinkedList
//
//  Created by Ishwar Shelke on 04/07/23.
//

import Foundation

func binarySearch(_ arr:[Int], _ X:Int)->Int{
    let cnt = arr.count
    var first = 0
    var last = cnt-1
    
    while first <= last {
        let mid = (first + last)/2
        
        if(arr[mid] == X){
            return mid
        }
        else if(arr[mid]<X){
            first = mid + 1
        }
        else{
            last = mid - 1
        }
    }
    
    return -1
}
