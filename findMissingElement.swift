//
//  findMissingElement.swift
//  myFirstCmd
//
//  Created by Jiushi Wan on 15/3/22.
//  Copyright (c) 2015年 Jiushi Wan. All rights reserved.
//

import Foundation


func findMissingElement(a: [Int]) -> Int {
    var sum = 0
    for i in 1...a.count {
        sum ^= (a[i-1] ^ i)
    }
    return sum
}