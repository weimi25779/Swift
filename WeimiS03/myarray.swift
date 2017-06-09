//
//  myarray.swift
//  WeimiS03
//
//  Created by iii on 2017/6/8.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

func myarray(){
    var a1 = [1,2,3,4] //Arrat<Int> => 泛型
    print(type(of:a1))
    //let a2 = [1,2, "Weimi", true] Ｅrror 推論不出型別
    let a2:[Any] = [1,2, "Weimi", true]
    print(type(of:a2))
    print(a2[2])
    
    var a3:[Int] = []
    let a4:Array<Int> = Array()
    let a5:[Int] = Array()
    let a6:Array<Int> = []
    let a7:[Int]? //未初始化
    
    if a3.isEmpty {
        print("empty")
    }else{
        print("contents")
    }
    
    a1.reserveCapacity(100) //預留
    print(a1.count)
    print(a1.capacity) //容量
    
    let a8 = Array(repeating: 0, count:6)
    print(a8.description) //似Java的a8.toString()
    
    //a3[0] = 1 Error 因a3:[Int] = []
    a3.append(123)
    print(a3.description)
    a3 += [321, 1, 2, 3]
    print(a3.description)
    a3.append(contentsOf: [10,11,12])
    print(a3.description)
    
    a3[1] = 77 //變更陣列中某元素
    print(a3.description)
    a3[2...5] = [101,102,103,104,105]
    print(a3.description)
    a3.insert(99, at: 2) //插入
    print(a3.description)
    a3.remove(at: 3)
    print(a3.description)
    
    for value in a3 {
        print(value)
    }
    print("--------------------")
    for i in 0..<a3.count {
        print(a3[i])
    }
    print("--------------------")
    for (i,value) in a3.enumerated() {
        print("\(i) => \(value)")
    }
}
