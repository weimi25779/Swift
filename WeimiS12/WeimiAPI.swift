//
//  WeimiAPI.swift
//  WeimiS12
//
//  Created by iii on 2017/6/19.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

class Weimi01 {
    static var counter = 0;
    init() {
        print("Weimi01:init()")
        Weimi01.counter += 1
    }
    deinit { //解構式，永遠不會帶參數
        print("Weimi01:deinit()")
        Weimi01.counter -= 1
    }
}

//Weimi02,Weimi02 對等的，各自用到對方(你儂我儂，各自擁有對方)
class Weimi02 {
    var obj3:Weimi03?
    func m1(){print("Weimi02:m1()")}
    deinit {
        print("Weimi02:die")
    }
}
//強烈抓住
class Weimi03 {
    var obj2:Weimi02?
    func m1(){print("Weimi03:m1()")}
    deinit {
        print("Weimi03:die")
    }

}

//不強烈抓住 +weak
//class Weimi03 {
//    weak var obj2:Weimi02? //弱參考
//    func m1(){print("Weimi03:m1()")}
//    deinit {
//        print("Weimi03:die")
//    }
//    
//}
