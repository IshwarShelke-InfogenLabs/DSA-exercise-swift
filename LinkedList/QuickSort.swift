//
//  QuickSort.swift
//  LinkedList
//
//  Created by Ishwar Shelke on 04/07/23.
//

import Foundation

func partition(arr: inout [Int], low:Int, high:Int) -> Int
{
    // Choosing the pivot
    let pivot = arr[high];
    var i = (low - 1);
 
    for j in stride(from: low, to: high, by: 1){

        // If current element is smaller than the pivot
        if (arr[j] < pivot) {
 
            // Increment index of smaller element
            i+=1;
            
            let temp = arr[i]
            arr[i] = arr[j]
            arr[j] = temp
        }
    }
    // swap(arr[i + 1], arr[high]);
    let temp = arr[i+1]
    arr[i+1] = arr[high]
    arr[high] = temp
    
    return (i + 1);
}
 
func quickSort(arr: inout [Int], low:Int, high:Int)
{
    if (low < high) {
        // pi is partitioning index, arr[p]
        // is now at right place
        let pi = partition(arr: &arr, low: low, high: high)
 
        // Separately sort elements before
        // partition and after partition
        quickSort(arr: &arr, low: low, high: pi - 1)
        quickSort(arr: &arr, low: pi + 1, high: high)
    }
}
