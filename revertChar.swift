//
//  revertChar.swift
//  myFirstCmd
//
//  Created by Jiushi Wan on 15/3/22.
//  Copyright (c) 2015年 Jiushi Wan. All rights reserved.
//

import Foundation

extension String {
    
    subscript (i: Int) -> Character {
        return self[advance(self.startIndex, i)]
    }
    
    subscript (i: Int) -> String {
        return String(self[i] as Character)
    }
    
    subscript (r: Range<Int>) -> String {
        return substringWithRange(Range(start: advance(startIndex, r.startIndex), end: advance(startIndex, r.endIndex)))
    }
}

func revertCharCase(inout s: String) {
    var tmp = ""
    
    //for i in 0...count(s)-1 {
    for uni in s.unicodeScalars {
        //var c: Int = s[advance(s.startIndex, i)] as! Int
        var val = uni.value
        val ^= 32
        tmp.append(Character(UnicodeScalar(val)))
    }
    s = tmp;
}

func revertCharCase(#originalStr: String) -> String
{
    var retStr = ""
    for ch in originalStr {
        if ch >= "a" && ch <= "z" {
            retStr += String(ch).uppercaseString
        } else {
            retStr += String(ch).lowercaseString
        }
    }
    return retStr
}


func reverseString(s: String) -> String {
    var tmp=""
    for var i=s.endIndex; i != s.startIndex;  {
        tmp.append(s[--i])
    }
    return tmp;
}
