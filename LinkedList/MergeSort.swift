//
//  DSA-practice.swift
//  LinkedList
//
//  Created by Ishwar Shelke on 03/07/23.
//

import Foundation


// Merge two subarrays L and M into arr
func merge(arr: inout [Int], p:Int, q:Int, r:Int) {
    
    // Create L ← A[p..q] and M ← A[q+1..r]
    let n1 = q - p + 1;
    let n2 = r - q;
    
    var L = Array(repeating: 0, count: n1)
    var M = Array(repeating: 0, count: n2)
    
    for i in stride(from: 0, to: n1, by: 1){
        L[i] = arr[p + i];
    }
    
    for j in stride(from: 0, to: n2, by: 1){
        M[j] = arr[q + 1 + j];
    }

  // Maintain current index of sub-arrays and main array
  var i=0, j=0, k=p;

  // Until we reach either end of either L or M, pick larger among
  // elements L and M and place them in the correct position at A[p..r]
  while (i < n1 && j < n2) {
    if (L[i] <= M[j]) {
      arr[k] = L[i];
      i+=1;
    } else {
      arr[k] = M[j];
      j+=1;
    }
    k+=1;
  }

  // When we run out of elements in either L or M,
  // pick up the remaining elements and put in A[p..r]
  while (i < n1) {
    arr[k] = L[i];
    i+=1;
    k+=1;
  }

  while (j < n2) {
    arr[k] = M[j];
    j+=1;
    k+=1;
  }
}

// Divide the array into two subarrays, sort them and merge them
func mergeSort(arr: inout [Int], l:Int, r:Int) {
  if (l < r) {
    // m is the point where the array is divided into two subarrays
      let m = l + (r - l) / 2;

      mergeSort(arr: &arr, l: l, r: m);
      mergeSort(arr: &arr, l: m + 1, r: r);

    // Merge the sorted subarrays
      merge(arr: &arr, p: l, q: m, r: r);
  }
}

