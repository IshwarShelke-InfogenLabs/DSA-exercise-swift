//
//  CountingSort.swift
//  LinkedList
//
//  Created by Ishwar Shelke on 04/07/23.
//

import Foundation

func countingSort(_ arr:[Int], _ X:Int){
    var storeCount = Array(repeating: 0, count: X+1)

    for i in arr{
        storeCount[i] += 1
    }
        
    for i in stride(from: 0, to: X+1, by: 1){
        if storeCount[i] == 0 {
            continue
        }
        else{
            var cnt = storeCount[i]

            while cnt != 0{
                print(i)
                cnt = cnt-1
            }
        }
    }
}
