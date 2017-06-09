//
//  weimi01.swift
//  WeimiS01
//
//  Created by iii on 2017/6/6.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

func weimi00() {
    print("Hello, World!")
    let name = "Weimi"  //name => String
    //name = 12 Error swift是強型別
    let age = 50  //age => Int
    
    print("Hello, \(name)")
    print(age)
}

func weimi01()  {
    var a : Int
    a = 10 //沒給值會錯誤
    print(a)
    
    var b, c, d : Double
    print(type(of: b)) //回傳型別
    b = 12
    c = 12
    d = 12
    print("b + c + d = \(b+c+d)")
}

func weimi02() {
    print("--------------------")
    print(Int.min)
    print(Int.max)
    print("--------------------")
    print(UInt.min)  //沒有用到負號，用Ｕ，省空間
    print(UInt.max)
    print("--------------------")
    print(UInt8.min)
    print(UInt8.max)
    print("--------------------")
    print(Int8.min)
    print(Int8.max)
    print("--------------------")
    print(Int16.min)
    print(Int16.max)
    print("--------------------")
    print(Int32.min)
    print(Int32.max)
}

func weimi03() {
    var pi=3.1416  //type => Double
    print(type(of: pi))
    var ff : Float = 123
    print("ff = \(ff)")
    
    var var1 = 10, var2 = 3
    var var3 = var1 / var2
    print(var3)
    
    //只能在相同型別時才能做運算(+, -, *, /等)
    //var var1:Int = 10, var2:UInt = 3 Ｅrror
    //var var3 = var1 / var2
    //print(var3)

}

func weimi04() {
    //let a1 = 3
    //let a2 = 1.2
    let a = 3 + 1.2 //當數值處理
    //let a = a1 + a2 Error 當常數處理
    print(a)
    let b = 0xC.3p0 //(12+3/16)X2
    print(b)
}

func weimi05() {
    //var a = Int.max + 1 Error
    //var a = Int.max
    //print(a)
    
    //let a : UInt8 = 10
    //let b : UInt16 = 3
    //let c = Uint16(a) + b
    //let c = a + UInt8(b)
    //print(c)
    
    let a : UInt8 = 10 //0 - 255
    //let b : UInt16 = 259 Error 超過範圍
    let b : UInt16 = 245 // 10 + 245 = 255 剛好在範圍內
    let c = a + UInt8(b) // c => UInt8
    print(c)
    
}

func weimi06() {
    
    let a = 3.14
    let b = Int(a)
    print(b)
}

func weimi07() {
    //別名
    typealias 小正數 = UInt8
    let a : 小正數 = 12
    print(type(of: a))
}

func weimi08() {
    //let a : Bool = 1 or 0 Error 只認true和false
    let a : Bool = true
    if a {
        print("ok")
    }else{
        print("XX")
    }
}

func weimi09(){
    //資料組
    let (x,y,z) = (1,2,3)
    print(x)
    print(y)
    print(z)
    let a = (x,y,z)
    print(type(of:a)) 
    //let (d,e,f) = a
    let (_,e,_) = a //略過不講
    print(e)
}


