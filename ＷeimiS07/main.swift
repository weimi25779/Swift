//
//  main.swift
//  ＷeimiS07
//
//  Created by iii on 2017/6/15.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation


var obj1 = c1()
print(type(of:obj1))

var obj2 = c2()

var obj3 = c3()
print(obj3.x)

var obj4 = c4(x:3,y:4)
print(obj4.x)
print(obj4.m1())

var s1 = Student("S01", 90,45,32)
var s2 = Student("S02", 50,75,82)
print(s1.sum())
print(s1.avg())
print(s2.sum())
print(s2.avg())

//參考型別
var s3 = s1 //跟s1指向同一份物件
print(s3.sum())
print(s3.avg())

s1.ch = 100
print(s1.sum())
print(s1.avg())

print(s3.sum())
print(s3.avg())

//---------------------
var s4 = Student("S01", 90,45,32)
var s5 = Student("S02", 90,45,32)
//print(s4 == s5) Error
print(s4 === s5) //物件比較要用3個=，比值用2個＝
s3 = s4
print(s3 === s4)

print("---------------------")
var b1 = Bike(0)
print(b1.getSpeed())
b1.upSpeed();b1.upSpeed();b1.upSpeed();b1.upSpeed();
b1.downSpeed();b1.downSpeed()
print(b1.getSpeed())
print(b1.getSpeed())
print("---------------------")
var b2 = b1.clone() //b2物件不等於b1物件
print(b2.getSpeed())
print(b1 === b2) //false
print("---------------------")
var b3 = b1
print(b1 === b3) //true
print("---------------------")
var b4 = c5()
print("---------------------")
b4.doSomething() //第一次初始化
print("---------------------")
b4.doSomething() //第二次就不初始化

print("---------------------")
var bb3 = MyClass3()
bb3.x = 33; bb3.y = 44;

var bb4 = MyClass4()
print("bb4.v1.x = \(bb4.v1.x)")
print("bb4.v1.y = \(bb4.v1.y)")
bb4.v2 = bb3
print("bb4.v2.x = \(bb4.v2.x)")
print("bb4.v2.y = \(bb4.v2.y)")
print("bb4.v1.x = \(bb4.v1.x)")
print("bb4.v1.y = \(bb4.v1.y)")

var bb5 = bb4.v2 //bb5 is a struct(MyClass3)
print("bb4.v2.x = \(bb4.v2.x)")
print("bb4.v2.y = \(bb4.v2.y)")
print("bb55.x = \(bb5.x)")
print("bb55.y = \(bb5.y)")

print("---------------------")
var ss1 = MyScore()
ss1.x = 100; ss1.y = 90; ss1.z = 70;
//print(ss1.sum)
print(ss1.avg)
print("---------------------")
var ss5 = MyClass5()
print(ss5.x)
ss5.x = 123
