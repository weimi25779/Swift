//
//  main.swift
//  ＷeimiS11
//
//  Created by iii on 2017/6/19.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

//Protocol(協定)
//只有定義，而無實作，即規格
//類別：只能一個繼承 vs 協定：可以有多個繼承

var obj1 = Test01()
//obj1.m1() Error，分不清楚是用哪個m1()

func needShape(s : Shape) {
    print(s.calLen())
    print(s.calArea())
}

var s1:Circle = Circle()
var s2:Rect = Rect()
s1.r = 4
s2.w = 2
s2.h = 3

needShape(s: s1)
needShape(s: s2)

var obj2 = Weimi07(x:4)
print(obj2.x)
print(obj2.y)
obj2.y = 100

var obj3 = Test02()
if obj3 is p1 { //因爲Test02繼承Test01，爸爸有實作，故兒子可以用
    print("OK")
}else {
    print("XX")
}
