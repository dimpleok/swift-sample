//
//  quickSort.swift
//  myFirstCmd
//
//  Created by Jiushi Wan on 15/3/22.
//  Copyright (c) 2015年 Jiushi Wan. All rights reserved.
//

import Foundation

func partition(inout a: [Int], low: Int, high: Int) -> Int {
    var pivot = a[low];
    var pos = low;
    
    for var i=low+1; i <= high; i++ {
        if a[i] < pivot {
            a[pos++] = a[i]
            a[i] = a[pos]
        }
    }
    a[pos] = pivot
    return pos
}

func quickSort(inout a: [Int], #low: Int, #high: Int) {
    if low < high {
        let pos = partition(&a, low, high)
        quickSort(&a, low: low, high: pos-1)
        quickSort(&a, low: pos+1, high: high)
    }
}
