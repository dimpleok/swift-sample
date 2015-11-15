//
//  minMax.swift
//  myFirstCmd
//
//  Created by Jiushi Wan on 15/3/23.
//  Copyright (c) 2015年 Jiushi Wan. All rights reserved.
//

import Foundation

// Tuple
func findMinMax(a: [Int]) -> (Int, Int) {
    var minVal = a[0]
    var maxVal = a[0]
    for e in a {
        if e < minVal {
            minVal = e
        } else if e > maxVal {
            maxVal = e
        }
    }
    return (minVal, maxVal)
}
