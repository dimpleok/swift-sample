//
//  rectangle.swift
//  myFirstCmd
//
//  Created by Jiushi Wan on 15/3/23.
//  Copyright (c) 2015年 Jiushi Wan. All rights reserved.
//

import Foundation

// Struct
struct Point
{
    var x = 0.0
    var y = 0.0
    mutating func moveBy(#deltaX : Double, deltaY: Double) {
        self.x += deltaX
        self.y += deltaY
    }
    var distance : Double {
        return sqrt(Double(x*x + y*y))
    }
    var description: String {
        return "Point: x=\(self.x) y=\(self.y)"
    }
}

func == (lhs: Point, rhs: Point) -> Bool {
    return lhs.x == rhs.x && lhs.y == rhs.y
}

func != (lhs: Point, rhs: Point) -> Bool {
    return !(lhs == rhs)
}

struct Size
{
    var width = 0.0
    var height = 0.0
}

// Get and Set
struct Rectangle
{
    var origin = Point(x: 0, y: 0)
    var size = Size()
    var center : Point {
        get {
            return Point(x: origin.x + size.width/2, y: origin.y+size.height/2)
        }
        set {
            origin.x = newValue.x - size.width/2
            origin.y = newValue.y - size.height/2
        }
    }
    var area : Double {
        return size.height * size.width
    }
}

// Get only
struct Cuboid {
    var height = 0.0, width = 0.0, depth = 0.0
    var volume :Double {
        return height * width * depth
    }
}


