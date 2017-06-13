//
//  test3.swift
//  WeimiS06
//
//  Created by iii on 2017/6/13.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

func test3() {
    //同名異式
    func f2() {
        print("f2")
    }
    
    func f2(a:Int) {
        print("f2:2")
        
    }
    
//    func f2(a:Bool) {
//        print("f2:3")
//    }
    
    func f2(a:Int, b:Bool) {
        print("f2:4")
        
    }
    f2(a:3)
    print("--------------------")
    
    func f3() {
        print("f3")
    }
    func f3(by:(Int,Int)->Bool) {
        print("f3:bool")
    }
    f3()
    f3(by: {(a,b)->Bool in a < b})
    f3(){(a,b)->Bool in
        print("OK")
        return a < b
    }
    
    print("------------")
    //身分證字號
    func createTWId()->String {
        return createTWId(gender: false)
    }
    func createTWId(gender:Bool)->String {
        return createTWId(gender: gender, area: 4)
    }
    func createTWId(area:Int)->String {
        return createTWId(gender: true, area: area)
    }
    func createTWId(gender:Bool, area:Int)->String {
        return ""
    }

}
