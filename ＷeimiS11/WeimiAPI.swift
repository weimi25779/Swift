//
//  WeimiAPI.swift
//  ＷeimiS11
//
//  Created by iii on 2017/6/19.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

protocol Weimi01 {
    //需求規格
    //func m1() {} Error，不可有任何實作
    func m1()
    func m2() -> Int
    func m3(x:Int) -> Double

}
protocol Weimi02 {
    func m4()
    func m5() -> Int
    func m6(x:Int) -> Double
    
}
class Super1 {
    
}

//實作多個協定
//父類別(Super1)一定要放在第一個
class Weimi03 : Super1, Weimi01, Weimi02 {
    //Weimi01(協定)
    func m1() {}
    func m2() -> Int { return 1 }
    func m3(x:Int) -> Double { return 1.0 }
    //Weimi02(協定)
    func m4() {}
    func m5() -> Int { return 1 }
    func m6(x:Int) -> Double { return 1.0 }
}
//協定可以多重繼承
protocol Weimi04: Weimi01, Weimi02 {
    func m7()
}

class Weimi05 : Weimi04 {
    //因為繼承Weimi04，所以全部都要實作
    //Weimi01(協定)
    func m1() {}
    func m2() -> Int { return 1 }
    func m3(x:Int) -> Double { return 1.0 }
    //Weimi02(協定)
    func m4() {}
    func m5() -> Int { return 1 }
    func m6(x:Int) -> Double { return 1.0 }
    //Weimi04(父類別)
    func m7() {}
}

protocol Weimi06 {
    //var x :Int = 1  在protocol不可給值
    var x : Int {get set}
    var y : Int {get}
}
class Weimi07 : Weimi06 {
    var x: Int
    var y: Int = 4
    init(x: Int) {
        self.x = x
    }
}
