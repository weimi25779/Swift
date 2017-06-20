//
//  main.swift
//  WeimiS10
//
//  Created by iii on 2017/6/19.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

//屬性擴張
extension Weimi01 {
    //var y = 2 Error 儲存型的屬性不能擴張，計算型ＯＫ
    var y:Int { return x * 2 }
}

var obj1 = Weimi01()
print(obj1.y)

//extension Double {
//    var m: Double { return self }
//    var km: Double { return self / 1000.0 }
//    var cm: Double { return self * 100.0 }
//}
//var len = 123.0
//print(len.m)
//print(len.km)
//print(len.cm)

extension Double {
    var m: Double { return self }
    var km: Double { return self * 1000.0 }
    var cm: Double { return self / 100.0 }
}
var len2 = 100.0
var len3 =  1.km + 4.cm
print(len3.m)

extension Rect {
    var cx:Int { return x + w / 2}
    var cy:Int { return y + h / 2}
}

struct Weimi02 {
    var x = 1
    func m1() {
        print("Weimi01:m1():x = \(x)")
    }
}

extension Weimi01 {
    convenience init(x:Int) {
        self.init() //因為第54行，所以要加
        self.x = x
    }
}
var obj2 = Weimi01(x:4)
print(obj2.x)
var obj3 = Weimi01()
print(obj3.x)

extension Weimi01 {
    func m2() {
        x += 4
        print("Weimi01:m2()x = \(x)")
    }
}
var obj4 = Weimi01()
obj4.m2()

//extension 可用於 1.屬性 2.建構 3.方法 4.結構
extension Weimi02 {
    mutating func m2() { //struct有改到都要加 mutating
        x += 4
        print("Weimi:m2(): x = \(x)")
    }
}

var obj5 = Weimi02()
obj5.m2()

//題目：172[0]=>1,172[1]=>7,172[2]=>2,173[3]=>-1
//草稿
//d = 1
//172 - 100(172 % 100(10*10)) ==> 72


extension Int {
    subscript(d:Int) -> Int {
        var x1 = 1
        for _ in 0...d {
            x1 *= 10
        }
        var x2 = 1
        for _ in 0..<d {
            x2 *= 10
        }
        let x3 = self % x1
        print("\(x1) , \(x2), 1==> \(x3)")
        let ret = x3 / x2
        print("\(x1) , \(x2), 1==> \(x3)")
        
        return ret
        
    }
}



