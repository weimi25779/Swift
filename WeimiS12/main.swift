//
//  main.swift
//  WeimiS12
//
//  Created by iii on 2017/6/19.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

//ARC(自動參考計算)
var obj1:Weimi01? = Weimi01()
var obj2:Weimi01? = Weimi01()
var obj3:Weimi01? = Weimi01()
print(Weimi01.counter)
var obj4 = obj1
print(Weimi01.counter)

//obj2 = nil
print(Weimi01.counter)

//obj1 = nil //不會執行解構
print(Weimi01.counter) //並未減少，因為還有人(obj4)參考
//print(obj2 == nil) true
//print(obj1 == nil) true

//obj1 = nil
print(obj4 === obj1)

var Weimi01s = [obj1, obj2, obj3] //[Weimi01] 參考陣列
func m1() {
    let obj5:Weimi01? = Weimi01()
    //obj5:為區域變數，一旦離開該區域就會自動解構
    Weimi01s += [obj5] //給的是參考動作
    print("m1:\(Weimi01.counter)")
}

print("before:\(Weimi01.counter)")
m1()
print("after:\(Weimi01.counter)")

print("--------------------------")
var weimi2:Weimi02? = Weimi02()
var weimi3:Weimi03? = Weimi03()
weimi2!.obj3 = weimi3 //+!是因為weimi02?,可能空值,因此加！保證有值
weimi3!.obj2 = weimi2

weimi2 = nil //林ＸＸ die
print(weimi2 == nil) //林ＸＸ die? Yes 強烈時
print(weimi3!.obj2 == nil) //顏ＸＸ的林ＸＸ die? Ｎo 強烈時
weimi3?.obj2?.m1()
