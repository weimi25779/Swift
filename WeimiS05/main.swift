//
//  main.swift
//  WeimiS05
//
//  Created by iii on 2017/6/12.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

//變數
var a = 10 //全變數域
func f1() {
    //print("f1() => \(a)") Error 會不認識外面的a
    //a = 3
    var a = 3 //區域變數
    print("f1() => \(a)")
}

f1()
print("outter => \(a)")

func f2() -> Int {
    return 123
}
print(f2())
print(f2)
print(type(of:f2)) //()(型別：方法) -> Int(回傳整數)
//var f2:Int = 321 Error
var f3 = f2()
print(f3)
var f4 = f2  //方法可以被賦予
print(type(of:f4))
var f5 = f4()
print(f5)

print("--------------------")
//方法中的方法
func f6() {
    var a = 20
    print("f6()")
    func f7() {
        print("f7()")
        //print("outter => \(a)")
        print("f7() => \(a)") //印出內部的a
    }
    f7()
}
f6()

print("--------------------")
func f8(a:Int) { //傳參數
    print(a)
}
f8(a:30) //會用參數a，不會用區域變數a
