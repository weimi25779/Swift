//
//  MyAPI.swift
//  ＷeimiS07
//
//  Created by iii on 2017/6/15.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

class c1 {
    //無初始化
}

class c2 {
    init() { //建構式 1.沒func字 2.無回傳 3.目的：物件初始化=>屬性
        print("init")
    }
}

class c3 {
    var x = 1
    var y = 1
}

class c4 {
    //var x:Int Error 定義不明
    var x:Int
    var y:Int
    init(x:Int, y:Int) {
        //x = x; y = y; 分不出是誰的x,y 故加上self
        self.x = x; self.y = y;
    }
    func m1()->Int {
        return 123
    }
}
//class Student 宣告我是Student類別
//{}內，實作
class Student {
    var sid:String
    var ch:Int
    var en:Int
    var math:Int
    init(_ sid:String, _ ch:Int, _ en:Int, _ math:Int ) { //初始化
        self.sid = sid
        self.ch = ch
        self.en = en
        self.math = math
    }
    func sum() -> Int {
        return ch + en + math
    }
    func avg() ->Double{
        return Double(sum()) / 3.0
    }
}

//腳踏車
class Bike {
    private var speed:Double
    init(_ speed: Double) {
        self.speed = speed
    }
    func upSpeed() {
        speed = speed < 1 ? 1 : speed * 1.2
    }
    func downSpeed() {
        speed = speed < 1 ? 0 : speed * 0.7
    }
    func getSpeed()->Double {
        return speed
    }
    func clone() ->Bike {
        return Bike(speed) //speed的值賦予給新的Bike物件
    }
}

class c6 {
    init() {
        print("c6:init()")
    }
    func m1() {
        print("c6:m1()")
    }
}

class c5 {
    var p1 = c6()
    lazy var p2:c6 = c6() //p2是c1類別 
    //lazy:只第一次呼叫時，才會計算其初始值的屬性
    func doSomething() {
        print("OK")
        p2.m1()
    }
}

struct MyClass3 {
    var x = 17
    var y = 1
}
struct MyClass4 {
    var v1 = MyClass3() 
    var v2:MyClass3 { //v2看v1
        get { //不用帶參數
            let newx = v1.x + 10
            let newy = v1.y + 20  
            return MyClass3(x:newx ,y:newy)
        }
        set { //要帶參數(參考第123行的寫法)
            v1.x = newValue.x - 10 //newValue(預設的)
            v1.y = newValue.y - 30
        }
    }
    var v3:MyClass3 {
        //{...} 中可以使用原先定義的屬性
        //定義 getter & setter
        //透過v3的getter ==> xxx = v3
        //setter ==> v3 = xxx
        get {
            return MyClass3(x:1, y:2)
        }
        set(aVar) {
            //aVer一定是ＭyClass3
        }
    }
}

class MyScore {
    var x = 0, y = 0, z = 0;
    var sum:Int { //因x, y, z而不同 
        //(可與51行比較，51用方法回傳sum，這裡不用方法也能搞定)
        //get {
        //   return x + y + z
        //}
        
        //get 再精簡
        return x + y + z
    }
    var avg:Double {
        //get {
            //return Double(sum) / 3.0
        //}
        return Double(sum) / 3.0
    }
}

class MyClass5 {
    var x :Int = 0 {
        willSet(newx){
            print("before : \(x) --> \(newx)")
        }
        didSet {
            //x = 0
            print("after : \(x)")
        }
    }
}

struct  MyStruct01 {
    var a = 1
    //func f1() {
        //a = 2 Error 解法：在func前加上 mutating(變異)
        //print(a)
    //}
    //參考：http://iosdevelopersnote.blogspot.tw/2014/12/swift-struct-class.html
    
    mutating func f1() {
        a = 2
        print(a)
        self = MyStruct01(a:100) //把值換掉
    }
}

class  MyClass01 {
    var a = 1
    func f1() {
        a = 2
        print(a)
    }
}

//HW:身分證字號產生器
