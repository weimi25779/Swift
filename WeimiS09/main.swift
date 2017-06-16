//
//  main.swift
//  WeimiS09
//
//  Created by iii on 2017/6/16.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

var obj1 = MyClass01(x:2)
print(obj1[7])
obj1.x = 3
print(obj1[7])

var obj99 = My99(x:2)
obj99.x = 9
for i in 1...9 {
    print(obj99[i])
}

print(obj1[3,4])

print(obj1[3.14]) //傳參數，get
obj1[3.14] = 7.456 //給值，get+set
print(obj1.x)

var obj2 = Sub11()
print(obj2.x)
obj2.f1()
obj2.f2(x: 1)
obj2.f2(y: 1)
print("-------------")
var obj3 = Super3()
var obj31 = Sub31()
var obj32 = Sub32()
print(obj3 is Super3)
print(obj31 is Super3)
print(obj31 is String)

obj3.f1()
obj31.f1()
obj32.f2()
//obj33.f1() 只能叫父類別(Super3)的f1()

var obj33 : Super3 = Sub31()
print(obj33 is Super3)
print(obj33 is Sub31)
print(obj33 is Sub32)
//var obj34 = obj33 as！ Sub31 Error 父轉子 不行，子轉父可以
var obj34 = obj33 as! Sub31 //as!:強制轉型
print(type(of:obj34))
obj34.f2()
//var obj35 = obj33 as! Sub32

if obj33 === obj34 {
    print("OK")
}else {
    print("XX")
}
obj33.f1() //用自己(Sub31)的f1()
//Super3(車)，Sub31(法拉利)

print("------------------------")
//多型

//繁瑣的寫法，改寫成第75行較佳
//func needSub31(obj:Sub31){
//    obj.f1()
//}
//func needSub32(obj:Sub32){
//    obj.f1()
//}

//func needSuper3(obj:Super3){
//    obj.f1()
//}

func needSuper3(obj:Super3){
    obj.f1()
    if obj is Sub31 {
        (obj as! Sub31).f3()
    }
    if obj is Sub32 {
        (obj as! Sub32).f4()
    }
    
    
}
needSuper3(obj: obj31)
needSuper3(obj: obj32)

var obj35:Super3 = obj31 as Super3
//父轉子用as!，子轉父用as

//任何物件都可以
func needObj(obj:AnyObject) {
    print(type(of:obj))
}
needObj(obj:obj1) //類別做出來的才叫物件
//needObj(obj:“Ｈello") Error，因String為結構

//任何都可以
//OK:class,object,struct,value,enum
//NO:func
func needAnything(something:Any){
    print(type(of:something))
}
needAnything(something: "Hello")
needAnything(something: obj32)

//extension(延生)，不是override，用來強化功能

extension Sub32 {
    func sayYa() {print("Ya")}
}
obj32.sayYa() //不用重新new物件，就可以使用sayYa()

extension Int {
    func whoru(){print("I am \(self.hashValue)")}
}

123.whoru() //123(Int)呼叫whoru()


