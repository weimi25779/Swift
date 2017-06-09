//
//  main.swift
//  WeimiS03
//
//  Created by iii on 2017/6/8.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

var points = Array.init(repeating: 0, count: 6) //[0,0,0,0,0,0]被推論為Ａrray<Int>(<Int>指Int泛型)
//print(points.description)
//var rand:UInt32
var rand:Int
for _ in 1...1000{
    //rand = arc4random_uniform(6)  //0 ... 5
    rand = Int(arc4random_uniform(9)) //強制轉型 0 ... 8
    rand = rand >= 6 ? rand - 3 : rand //作弊用
    points[rand] += 1
    //points[rand] += 1 Error UInt32型別
    points[rand] += 1
}
for (i, value) in points.enumerated() {
    print("\(i+1)點出現 => \(value)次")
}
