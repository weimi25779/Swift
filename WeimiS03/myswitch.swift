//
//  myswitch.swift
//  WeimiS03
//
//  Created by iii on 2017/6/8.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

func myswitch(){
    var a1 = 10
    //var a2 = 10
    //var a2 = 8
    var a2 = 7
    
    switch a1 {
    case 1:
        print("A")
        //case "10" Error 因為a1是Int,而“10”為Ｓtring，故錯誤
        //print("A1")
        //case UInt(10) Error
        //print("A2")
        //case 10: 相同值也可以
        //print("B1")
        //case a2: 可以是變數
        //print("B")
        //case a2+2: 可以運算
    //print("B")
    case a2+2:
        print("B")
        if a2 == 7 {
            break
        }else {
            print("B2")
        }
    case 10:
        print("B1")
    fallthrough //往下流，即繼續做，做到case 100 就不會做下去了
    case 100:
        print("C")
    default: //只能放最後面
        print("D")
    }
    print("------------------------")
    
    var month = arc4random_uniform(12) + 1
    print("\(month)月有", terminator:"")
    switch month {
    case 1,3,5,7,8,10,12:
        print("31", terminator:"")
    case 4,6,9,11:
        print("30", terminator:"")
    case 2:
        print("28", terminator:"")
    default:
        print("XX")
    }
    print("天")
    print("----------------")
    
    
    var score = arc4random_uniform(101)
    print(score)
    switch score {
    case 90...100:
        print("A")
    case 80..<90:
        print("B")
    case 70..<80:
        print("C")
    case 60..<70:
        print("D")
    default:
        print("E")
    }
    
    print("----------------")
    
    var point = (1,4,23)
    switch point{
    case (1, 2, 3):
        print("A")
        //case (1, 4, 23):
    //    print("B")
    case (1, _, 24):
        print("B")
    case (_, _, 20...30):
        print("C")
    default:
        print("D")
    }
    
    print("--------------")
    switch point {
    case (let x, 4, 21): //case (_, 4, 23) 將 _ 換成 x
        print("the point x-axis is \(x)")
    case let (x,y,z): //似default
        print("\(x) : \(y) : \(z)")
    }
    
    print("--------------")
    switch point {
    case (1, let y, let z) where y == z:
        print("A")
    case (1, let y, let z) where y < z:
        print("B")
    default:
        print("C")
    }

}
