//
//  mydic.swift
//  ＷeimiS04
//
//  Created by iii on 2017/6/9.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

func mydic() {
    //字典
    var dic1 = ["name":"Weimi", "gender":"male", "age":"18"] //Dictionary<String?, String?>
    print(type(of:dic1))
    print(dic1["name"])
    
    for (key, value) in dic1 {
        print("\(key) => \(value)")
    }
    
    dic1["weight"] = "80" //沒有此key,所以新增
    print(dic1.description)
    dic1["weight"] = "68" //已有此key了,所以後面蓋舊值
    print(dic1.description)
    
    var dic2 = [1:"OK", 3:"III" ,4:"Weimi"]
    print(type(of:dic2))
    for (key, value) in dic2 {
        print("\(key) => \(value)")
    }
    
    //dic2 = [:] 清除(重新new一個dic2)
    //print(dic2.description)
    
    dic2.updateValue("Brad Chao", forKey: 4)
    print(dic2.description)

}
