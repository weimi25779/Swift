//
//  MyClasses.swift
//  WeimiS09
//
//  Created by iii on 2017/6/16.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

class MyClass01 {
    var x: Int
    init(x: Int){self.x = x}
    subscript(y:Int) -> Int {
        return y * x
    }
    //可多個腳本
    subscript(y:Int,z:Int)->Int {
        return 123
    }
    subscript(y:Double) -> Double {
        get{
            print("get")
            return floor(y)
        }
        set {
            print("set")
            self.x = Int(ceil(newValue))
            //ceil(x)返回不小於x的最小整數值（然後轉換為double型
        }
    }
    
}
//99乘法表
class My99 {
    var x:Int
    init(x: Int){self.x = x}
    subscript(y:Int) -> String {
        return "\(x) x \(y) = \(x * y)"
    }
    
}

//------------------------------
class Super1 {
    private var x = 10
    var y = 2
    var z = 2
    var a:Int {
        get {
            return 2
        }
        set {
            
        }
    }
    func f1() {
        print("Super1:f1()")
    }
    func f2(x:Int) -> Double {
        print("f2(x:Int)")
        return 1.0
    }
}
class Sub11 : Super1 {
    var x = 3 //Error 在屬性上面，無關繼承，即爸爸不給用
    //var y = 3 Error
    //不可直接override stored型別
    override var y:Int {
        get {
            return 3
        }
        set {
            
        }
    }
    override var z:Int {
        willSet {
            
        }
        didSet {
            
        }
    }
    override var a:Int {
        get {
            return 3
        }
        set {
            
        }
    }
    
    override func f1() {
        super.f1()
        print("Sub11:f1()")
    }
    func f2(y:Int) {
        print("f2(y:Int)")
    }
    //override:名子.參數.回傳型態一樣
    override func f2(x:Int)->Double{
        f1()
        super.f1()
        return 1.0
    }
}

//--------------------------
final class Super2 {
    
}
//class Sub21 : Super2 { Error
//    因父類別有加final，不給繼承
//}

//--------------------------
class Super3 {
    func f1(){print("Super3:f1()")}
}
class Sub31 : Super3 {
    override func f1(){print("Super31:f1()")}
    func f2(){print("Super31:f2()")}
    func f3(){print("Super31:f3()")}
}
class Sub32 : Super3 {
    override func f1(){print("Super32:f1()")}
    func f2(){print("Super32:f2()")}
    func f4(){print("Super32:f4()")}
}
