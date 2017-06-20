//
//  TestAPI.swift
//  ＷeimiS11
//
//  Created by iii on 2017/6/19.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

protocol p1 {
    func m1()
}
protocol p2 {
    func m1()->Int
}
class Test01 : p1, p2 {
    func m1() {print("p1():m1()")}
    func m1() -> Int {
        print("p2():m1()")
        return 1
    }
}

class Test02: Test01 {
    
}

protocol Shape {
    func calLen() -> Double
    func calArea() -> Double
}
class Rect : Shape {
    var w = 0.0
    var h = 0.0
    func calLen() -> Double {
        return (w + h) * 2.0
    }
    func calArea() -> Double {
        return w * h
    }
}
class Circle : Shape {
    var r = 0.0
    func calLen() -> Double {
        return 2.0 * 3.14 * r
    }
    func calArea() -> Double {
        return 3.14 * r * r
    }
}
