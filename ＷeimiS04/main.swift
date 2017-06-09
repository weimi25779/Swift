//
//  main.swift
//  ＷeimiS04
//
//  Created by iii on 2017/6/9.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

func fx(x:Int) -> Int{
    var result = 2 * x + 3
    return result
}

func sayYa(name:String, times:Int) {
    for _ in 0..<times{
        print("Ya!,\(name)")

    }
}


func calDistance(x0:Int, y0:Int, x1:Int, y1:Int) -> (dx:Int, dy:Int) {
   
    return(abs(x0-x1), abs(y0-y1))
}

func calDistanceV2(p0:(x:Int,y:Int), p1:(x:Int,y:Int)) -> (dx:Int, dy:Int) {
    
    return(abs(p0.x-p1.x), abs(p0.y-p1.y))
}
func WeimiAbs(num:Int) -> Int {
    return num < 0 ? -num : num
}

func findMinMax(array: [Int]) -> (min:Int, max:Int)? {
    if array.isEmpty {return nil}
    //可能是無值，故(min:Int, max:Int)+ ?
    
    var minV = array[0]
    var maxV = array[0]
    for i in 1..<array.count {
        if array[i] < minV {
            minV = array[i]
        }
        if (array[i] > maxV){
            maxV = array[i]
        }
    }
    return (minV,maxV)
}

func test1( _ x : Int){
    print(x)
}

func sayHello( _ name:String = "World", _ times:Int = 1){ //World為給的預設值
    for _ in 0..<times{
        print("Hello, \(name)")
    }
}

func calSum(_ num:Int...) -> Int { //參數不管幾個都執行
    //print(type(of:num))
    var sum = 0
    //if num.isEmpty {return 0} 因為sum預設為0，所以不會用到if，
    //因為不會進到for迴圈，直接return 0
    
    for v in num {
        sum += v
    }
    
    return sum
}
//前後可以對調，因為有標籤，可以很清楚位置
//func cp(target:String, _ filename: String...){
//    for fname in filename {
//        print("coying \(fname) to \(target)")
//    }
//}

func cp( _ filename: String... ,target:String){
        for fname in filename {
            print("coying \(fname) to \(target)")
        }
}

func weimiswap( _ x:inout Int, _ y:inout Int) {
    //inout 不能使用預設值
    let temp = x
    x = y
    y = temp
}

func swapArray() {
    
}

var ret = fx(x: 123)
print(ret)

sayYa(name: "Tom",times: 3)

var d = calDistance(x0: 1, y0: 2, x1: 3, y1:4) //Int
print(d.dx)
print(d.dy)

var d2 = calDistanceV2(p0: (12,32), p1: (22,45))
print(d.dx)
print(d.dy)

var a = -123
//print(WeimiAbs(num:a))
print(abs(a))

print("-----------------------")
var a1 = [34, 67, 111, 32, 12]
if let minmax = findMinMax(array: a1) {
    print(minmax.min)
    print(minmax.max)
}

test1(2);
//test1(x:3); Error,因為在func已定義不用打x，即沒用標籤:

sayHello("Brad", 2)
//sayHello(2) Error 無法分辨是name的預設值，還是times的
sayHello("Amy")

var sum = calSum(1,2,3,4,5)
//var f = calSum()
print(sum)

//cp(target: "dir1", "file1", "file2", "file3")
cp("file1", "file2", "file3", target: "dir1")

var myx = 123
var myy = 456
weimiswap(&myx, &myy) //&:傳記憶體位址
print(myx)
print(myy)

//HW
var a6 = [1,2,3,4,5]
swapArray(a6, 1, 3)
