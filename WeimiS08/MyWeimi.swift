//
//  MyWeimi.swift
//  WeimiS08
//
//  Created by iii on 2017/6/16.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

class Weimi01 {
    var x = 10 //物件屬性
}
class Weimi02 {
    static var x1 = 12 //類別的屬性 (該類別的大家都可以用)
    //var x2:Int Error，未初始化
    static var x2:Int? //未初始化，但可執行
    static var x3:Int {
        return x1 * 100
    }
    var x4 = 123
    var x1 = 321
    init() {
        print(x4)
        //print(x1) Error 非自己的x1(第15行)
        print(Weimi02.x1)
        print(x1) //自己的x1(第22行)
    }
}
class Weimi03 {
    var x = 100 ////物件級別
    static var y = 200 //類別級別
    func f1() {
        x += 1
        Weimi03.f2()
        print("Weimi03:f1()")
    }
    static func f1() {
        print("Weimi03:static:f1()")
    }
    //class func f1(){ Error，f1()重複定義
        //因為class func = static func
    //}
    static func f2() {
        //x += 1 Error
        y += 1
        //f1() Error f1()沒static func時
        f1() //有static f1()，故可執行
    }
}

class MyBike {
    static var counter = 0
    var counter = 0
    init() {
        MyBike.counter += 1
        counter += 1
        print("Create a new Bike!")
    }
}

//---------------------------------------
//繼承(不管怎麼變，一定會去叫爸爸)
class Super1 {
    init(){print("Super:init()")}
}
class Sub11 : Super1 { //只認一個爸爸
    //沒有定義任何init，則會呼叫Super1.init
}
class Sub12 : Super1 {
    override init(){print("Sub12:init()")} //覆寫
    //return之前會呼叫父類別的init
}
class Sub13 : Super1 {
    init(_ : Int){}
}

//---------------------------------------
class Super2 {
    //先看參數有無，再選擇init
    
    //無傳參數(預設)
    init(){print("Super2:init()")}
    //有傳參數
    init(_ :Int){print("Super2:init(Int)")}
    init(_ :Double){print("Super2:init(Double)")}
}
class Sub21 : Super2 {
    
}
class Sub22 : Super2 {
    override init() { //override後，父的init還是存在
        //override，安全的修飾字
        super.init() //先呼叫，都可
        print("Sub22:init()")
        //super.init() 後呼叫，都可
    }
    override init(_ : Int) {
        super.init() //父的init隨便一個都可，就是要叫父的
    }
    init(_ : String) {
        super.init()
    }
}
//----------------------------
class Super3 {
    init(){print("Super3:init()")}
}
class Sub31 : Super3 {
    override init() { //會去叫爸爸，第106行
        print("doSomething")
    }
    //Super.init和self.init只能擇一
    //想用自己的
    convenience init(_ : Int) {
        //convenience，標了後不會去叫爸爸
        print("Sub31:init(Int)")
        self.init() //執行第110行
    }
    //寫下面，會造成無窮迴圈，解法：叫爸爸(出口)
    //convenience init(_ : String) {
        //self.init(3)
    //}
    
}
//身分證字號
class TWId {
    var id:String
    convenience init(){
        self.init(false)
    }
    convenience init(_ gender:Bool) {
        self.init(gender, 1)
    }
    convenience init(_ area:Int) {
        self.init(true, area)
    }
    //出口
    init(_ gender:Bool, _ area : Int) {
        print("main logic")
        self.id = "A12346789"
    }
    init?(_ id:String){
        let a = Int(arc4random_uniform(2))
        print(a)
        if a == 0 {
            return nil
        }else {
            self.id = id
        }
        
    }
}
//-------------------------
class Super4 {
    init(){print("Super4:init()")}
    required init(x:Int){
    //required:指ㄧ定要有，往後的子類別也一定要做
        print("Super4:init(Int)")
    }
}
class Sub41 : Super4 {
//    override init(){
//        super.init()
//    }
    init(x :Double){
        super.init()
    }
    required init(x:Int){
        super.init()
    }
}
class Sub42 : Super4 {
    
}
class Sub421 : Sub41 {
    override init(){
        super.init(x:1.0)
    }
    required init(x:Int){
        super.init(x:1)
    }
}
