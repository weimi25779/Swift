//
//  myif2.swift
//  WeimiS03
//
//  Created by iii on 2017/6/8.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation
func fun1(){
    var a1 = Int.init(1.23) //其他語言的 new Int(1.23) 建構式
    print(a1)
    //var a2 = Int.init("123")
    var a2 = Int.init("Weimi")
    print(a2)
    var a3 = Int(1.23) //型別轉換
    print(a2 ?? 0)

}


func if2(){
    // 補充 if
    var a4:Int? = 12
    if var b1 = a4 { //判斷是否為nil
        print("b1")
    }else {
        print("B")
    }
    
    var a5:[Int] = [123] //一個＝，給值
    if let a6 = a5.first {
        print(a6)
    }else {
        print("XX")
    }
    
    var a6:Bool? = false
    if let b2 = a6 {
        print(b2)
    }else{
        print("X2")
    }

}
