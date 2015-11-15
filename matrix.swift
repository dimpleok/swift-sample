//
//  matrix.swift
//  myFirstCmd
//
//  Created by Jiushi Wan on 15/3/23.
//  Copyright (c) 2015年 Jiushi Wan. All rights reserved.
//

import Foundation

// Subscript
struct Matrix {
    let rows : Int
    let columns : Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        self.grid = Array(count: rows*columns, repeatedValue: 0.0)
    }
    func indexIsValid(#row: Int, column: Int) -> Bool {
        return row >= 0 && row < self.rows &&
            column >= 0 && column < self.columns
    }
    subscript(row: Int, column: Int) -> Double {
        set {
            assert(indexIsValid(row: row, column: column), "index out of range")
            grid[row * columns + column] = newValue
        }
        get {
            assert(indexIsValid(row: row, column: column), "index out of range")
            return grid[row * columns + columns]
        }
    }
}
