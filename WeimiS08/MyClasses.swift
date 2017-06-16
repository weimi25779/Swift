//
//  MyClasses.swift
//  WeimiS08
//
//  Created by iii on 2017/6/16.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

class MyClass01{}
//未初始化
//class MyClass02 {
    //var x:Int Error
    
//}

//有初始化
class MyClass02 {
    var x:Int
    init(x:Int){self.x = x} //初始化
}

//有初始化
class MyClass03 {
    var x = 123
}

//有初始化
class MyClass04 {
    var x:Int? //可能有值或nil
}

//----------------------------------
class MyClass05 {
    var x:Int { //有{}一定要return(get)
        get { //可讀(一定要有)
            return 1
        }
        set { //可寫(可以省略，因為如果只可寫不可讀，就很不合邏輯)
            // newValue
        }
        
    }
}
class MyClass06 {
    var y = 123
    var x:Int {
        return y * y
    }
}
//-----------------------------------
class MyClass07 {
    var x = 0 {
        willSet {
            // newValue
        }
        didSet {
            
        }
    }
}
