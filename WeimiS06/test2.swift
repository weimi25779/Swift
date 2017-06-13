//
//  test2.swift
//  WeimiS06
//
//  Created by iii on 2017/6/13.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

func test2() {
    func f1() -> () -> () {
        func f2() {
            print("f2")
        }
        return f2 //by Value
    }
    let f4 = f1
    let f3 = f4()
    f3()
    
    func f5(myfunc:()->()) {
        myfunc()
        print("f5")
    }
    let f6 = f5 //f5 assign f6
    
    func f7(){print("f7")}
    
    f5(myfunc: f7)
    f6(f7)
    
    print(type(of:f5))
    print(type(of:f6))
    
    f6(){
        print("tail")
    }
    
        }

