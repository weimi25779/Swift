//
//  test.swift
//  WeimiS02
//
//  Created by iii on 2017/6/9.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

func test1(){
    //數組，不是陣列
    var (x,y,z) = (1,2,3)
    var a = (x,y,z)
    print(type(of:a))
    //print(x)
    //print(a.0)
    //print(a.1)
    //print(a.2)
    print(x);print(a.0);print(a.1);print(a.2)
}

func test2(){
    //var a: Int = 4 Erroe +?可以解決此問題
    var a: Int? = 4
    a = 5
    a = nil //nil,無值
    print(type(of:a))
    print(a as Any)
}

func test3(){
    var a = 3
    //a++ 在swift 3 已被移除
    a += 1
    print(a)
}

func test4(){
    var score : UInt = 79
    if score >= 60{   //if沒有單列敘述句，故必須加{}
        print("Pass")
    }else{
        print("Down")
    }
}

func test5(){
    //亂數
    let rand = arc4random() //UInt32 => 0 ~ (2^32-1)
    let score = rand % 101 //0 - 100
    print(score)
    if score >= 60{   //if沒有單列敘述句，故必須加{}
        print("Pass")
    }else{
        print("Down")
    }
    
    let rand2 = arc4random_uniform(10) //上限10，即0..<10
    print(rand2)
}

func test6(){
    //let a = "Weimi"
    //var b : String = "III"
    //var c = a + b
    //print(c)
    
    //var b : String? = "III"
    //b=nil
    //?? deful value
    //print(b ?? "none")  b沒有的時候，印none
    
    let a:String
    var b : String?
    print(b ?? 0)
    
    //var c ="123"
    var c="Weimi"
    //var d : Int = Int(c) 可能轉不出來，故＋？，如下
    var d : Int? = Int(c)
    print(d ?? -1) //轉不出來，就將當它為-1
}

func test7(){
    //let input = readLine() //commad+
    //print(type(of:input)）
    //print(input)
    /*
     if input == "123"{
     print("OK")
     }else {
     print("XX")
     }
     */
    
    print("Input a Score ＝ ", terminator: "")
    //terminator(結尾)，若沒有則無法輸入字串
    let input: String? = readLine()
    //input可能是nil,故Ｓtring+?
    //命令列輸入(input)的都是Ｓtring
    //let score: UInt8 = UInt8(input ?? "0")! ！：強制
    let score: UInt8 = UInt8(input ?? "0") ?? 0
    //??左右要有空格
    //UInt8(input ?? "0")
    //input ?? "0"是String，再用UInt8轉Int，有可能是nil，故再加？？ "0"
    print(score)
    if score >= 90 {
        print("A")
    }else if score >= 80 {
        print("B")
    }else if score >= 70 {
        print("C")
    }else if score >= 60 {
        print("D")
    }else{
        print("E")
    }
}

func test8(){
    //判斷閏年
    print("Input a Year ＝ ", terminator: "")
    let input: String? = readLine()
    let year: UInt16 = UInt16(input ?? "0") ?? 0
    
    var isLeap: Bool
    
    if year % 4 == 0 {
        if year % 100 == 0 {
            if year % 400 == 0 {
                isLeap = true
            } else {
                isLeap = false
            }
        } else {
            isLeap = false
        }
    } else {
        isLeap = false
    }
    //print("Year: \(year) is \(isLeap ? "閏年" : "平年")")
    
    let strIsLeap = "閏年", strNoLeap = "平年"
    print("Year: \(year) is \(isLeap ? strIsLeap : strNoLeap)")
    
}

func test9() {
    var a = "Hello"
    var b = String() //字串是陣列的集合
    
    for c in a.characters {
        print(c)
    }
    
    //  for c in b.isEmpty { // "" != nil
    //        print("b is empty")
    //  }
    
    //純值，非物件
    var c = a
    a = "Hello, Weimi"
    print(a)
    print(c)
    print(a.characters.count)
    
    for i in 1...a.characters.count {
        var start = a.index(a.startIndex, offsetBy: 2) // 算出起始位置
        var end = a.index(a.startIndex, offsetBy: 5) // 結尾
        let range = start..<end // range變數
        print(type(of:a[range]))
        print(a[range])
    }
    
    //var d = a.startIndex
    //print(d)
    
    var start = a.index(a.startIndex, offsetBy: 2)
    var end = a.index(a.startIndex, offsetBy: 5)
    let range = start..<end
    print(type(of:a[range]))
    print(a[range])
    
    var e = "abcdefg1234567"
    print(e[range])
    
    print(weimiSubString(str: e, start: 2, stop: 6 ))
    e.insert("b", at: e.endIndex)
    e.insert("c", at: e.endIndex) //字元“x”, String.Index
    e.insert("x", at: e.index(e.startIndex, offsetBy:4)) //String.Index
    print(e)
    
    // 字串.index() ==>String.Index
}
func weimiSubString(str:String, start:Int, stop: Int) ->String{
    let start = str.index(str.startIndex, offsetBy: start)
    let end = str.index(str.startIndex, offsetBy: stop+1)
    let range = start..<end
    return str[range]
    
}

func test10(){
    /*
     for _ in 1...10 {
     print("OK")
     }
     */
    for i in 1...10 {
        //i += 1 Error i為let(常數)
        print(i) //i為區域變數
    }
}

func test99(){
    for k in 0..<2{
        for j in 1...9{
            for i in 2...5{
                let newi = i + k * 4
                print("\(newi) x \(j) = \(newi * j)", terminator: "\t")
                
            }
            print()
        }
        print("----------------------------------------------")
    }
}

func test11(){
    // 1 + 2 + ... + 100 = 5050
    var sum = 0 //Int
    var i = 1
    while i <= 100 {
        sum += i
        i += 1
    }
    print("1 + 2 + ... + 100=\(sum)")
    
}

func test12(){
    // 1 + 2 + ... + 100 = 5050
    var sum = 0 //Int
    var i = 1
    
    repeat {
        sum += i
        i += 1
    } while i <= 100
    
    print("1 + 2 + ... + 100=\(sum)")
    
}

func test13(){
    //質數
    for j  in 0...9 {
        var i = 1
        while i <= 10 {
            var num = j * 10 + i
            var isZhishu = true
            for k in 2...num{
                if num % k == 0{
                    isZhishu = false
                }
            }
            if isZhishu {
                print("\(num)是质数")
            }
            else{
                print("\(num)不是质数")
            }
            print(num, terminator: " ")
            i += 1
        }
        print()
    }
}
