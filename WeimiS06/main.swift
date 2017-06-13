//
//  main.swift
//  WeimiS06
//
//  Created by iii on 2017/6/12.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

//結構(Struct)
struct Point { //定義不清
    var x:Int
    var y:Int
    //print("OK") Error 結構裡面只能純定義
}

var p0 = Point(x:1, y:2)
print(p0.x)
print(p0.y)
p0.x = 123
print(p0.x)

print("----------------")

struct  Point2 { //有初始化
    var x = 0
    var y = 0
}
var p1 = Point2()
print(p1.x)
print(p1.y)
print("----------------")
var p3 = p1
print("p1(\(p1.x), \(p1.y))")
print("p3(\(p3.x), \(p3.y))")

p1.x = 123; p1.y = 321

print("p1(\(p1.x), \(p1.y))")
print("p3(\(p3.x), \(p3.y))")


print("----------------")
struct Line {
    var point1: Point2 //:(冒號)，做宣告，沒assign(=)
    var point2: Point2 //結構屬性
    func f1() {
        print("OK1")
    }
    static func f2() {
        print("OK2")
    }
    func len() -> Double {
        let xpow = (point1.x-point2.x)*(point1.x-point2.x)
        let ypow = (point1.y-point2.y)*(point1.y-point2.y)
        return sqrt(Double(xpow) + Double(ypow))
    }
}
var line1 = Line(point1:Point2(), point2:Point2(x:11, y:12))
print(line1.point1.x)
//line1.f1()
//Line.f2()
print(line1.len())
print("----------------------")
//var line2 = Line(point1:Point2(), point2:Point2(x:3, y:4))

//列舉
enum Direction {
    case Up, Down, Left, Right
}

var myDir = Direction.Left
//等同var myDir:Direction = Direction.Left
print(type(of:myDir))
myDir = .Right
switch myDir {
case .Up:
    print("Up")
case .Right:
    print("Right")
default:
    print("Other")
}

enum Town {
    case NorthArea(String), SouthArea(String)
}

let myArea:Town = Town.NorthArea("401")
let urArea:Town = Town.NorthArea("402")

switch myArea {
case .NorthArea (let zonecode):
    print(zonecode)
default:
    print("OK")
}
