//
//  myarray2.swift
//  ＷeimiS04
//
//  Created by iii on 2017/6/9.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

func myarray2() {
    var a1 = [[1,2,3],[4,5],[],[6,7,8,9]] //二維陣列
    //print(a1.description)
    print(a1.count)
    print(a1[1].count)
    
    a1 += [[11,12]] //二維陣列＋二維陣列,若一維＋二維,則Ｅrror
    print(a1.description)
    a1.append(contentsOf: [[33,44],[555,666,777]])
    print(a1.description)
    
    a1.replaceSubrange(2...3, with: [[100,200,300,400]])
    print(a1.description)
    
    //for (i, value) in a1[0].enumerated(){
    //    print("\(i) => \(value)")
    //}
    
    for (ii, vv) in a1.enumerated() {
        for (i, value) in a1[0].enumerated() {
            print("\(i) => \(value)")
        }
    }
    
    var a5 = [12,3,4,45]
    print(a5.description)
    a5 = [] //清除(重新new一個a1)
    print(a5.description)

}
