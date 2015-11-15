//
//  heapSort.swift
//  myFirstCmd
//
//  Created by Jiushi Wan on 15/4/12.
//  Copyright (c) 2015年 Jiushi Wan. All rights reserved.
//

import Foundation

func sift(inout a: [Int], n: Int, var hole: Int)
{
    var child: Int
    var value = a[hole]
    child = hole << 1 + 1
    while child <= n-1 {
        if child < n-1 && a[child] < a[child+1] {
            child++
        }
        if value > a[child] {
            break
        } else {
            swap(&a[hole], &a[child])
            hole = child
        }
        child = hole << 1 + 1
    }
    a[hole] = value
}

func heapSort(inout a: [Int])
{
    let n = a.count
    for var i=n/2-1; i > 0; i-- {
        sift(&a, a.count, i)
    }
    
    for i in 1..<n {
        swap(&a[0], &a[n-i])
        sift(&a, n-i, 0)
    }
}

