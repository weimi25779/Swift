//
//  myset.swift
//  ＷeimiS04
//
//  Created by iii on 2017/6/9.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

func myset() {
    var set1 = Set<Int>()
    print(type(of:set1))
    
    set1.insert(123)
    print(set1.description)
    set1.insert(321)
    print(set1.description)
    //set1.insert(123) Error,重複了
    print(set1.count)
    set1.insert(1)
    set1.insert(12)
    set1.insert(13)
    set1.insert(11)
    for num in set1 {
        print(num)
    }
    print("----------------------")
    for num in set1.sorted() {
        //因為set1 = Set<Int>()為Int，故可以排序，若為Any，就不知怎麼排序
        print(num)
    }
    print("----------------------")
    var lottery = Set<Int>()
    while lottery.count < 6 {
        var rand = Int(arc4random_uniform(49))+1
        lottery.insert(rand)
    }
    print(lottery.description)
}
