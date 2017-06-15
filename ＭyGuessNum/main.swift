//
//  main.swift
//  ＭyGuessNum
//
//  Created by iii on 2017/6/12.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

//猜數字
//流程 1.產生謎底 2.Loop(詢問 比對=>結果(Win:lose))

//產生謎底
func createAnswer(d:Int) -> String {
    //d，用來指定猜幾碼，例d:5，則產生69302
    var rs = Set<Int>()
    var rand: Int
    while rs.count < d {
        rand = Int(arc4random_uniform(10))
        rs.insert(rand)
    }
    var ret = ""
    for v in rs {
        ret += String(v)
    }
    
    return ret
}

//比對
func checkAB(answer:String, guess:String) -> String {
    var A = 0, B = 0 //A:位置.數字都對，Ｂ:位置不對.數字對
    var ca:String, cg:String //ca:check answer，cg:check guess
    for i in 0..<answer.characters.count { //字串用characters.count
        ca = substring(str: answer, start: i, len: 1)
        cg = substring(str: guess, start: i, len: 1)
        if ca == cg {
            A += 1
        }else if answer.contains(cg) {
            B += 1
        }
    }
    return "\(A)A\(B)B"
}

func checkAB(answer:String, guess:String) -> String {
    var A = 0, B = 0 //A:位置.數字都對，Ｂ:位置不對.數字對
    var ca:String, cg:String //ca:check answer，cg:check guess
    for i in 0..<answer.characters.count { //字串用characters.count
        ca = substring(str: answer, start: i, len: 1)
        cg = substring(str: guess, start: i, len: 1)
        if ca == cg {
            A += 1
        }else if answer.contains(cg) {
            B += 1
        }
    }
    return "\(A)A\(B)B"
}
//HW2
/*
func checkABv2(answer:String, guess:String) -> (A:Int, B:Int){
        return (1,2)
}
*/

//自訂取字串方法
func substring(str:String, start:Int, len:Int) -> String { //len:長度
    let sindex = str.index(str.startIndex, offsetBy: start)
    //start所代表的起始的index，offsetBy:偏移
    let eindex = str.index(str.startIndex,offsetBy: start + len)
    let range = sindex..<eindex
    
    return str.substring(with: range)
}

//堅固耐用 HW3
/*
func substringV2(str:String, start:Int, len:Int) -> String { //len:長度
    let sindex = str.index(str.startIndex, offsetBy: start)
    //start所代表的起始的index，offsetBy:偏移
    let eindex = str.index(str.startIndex,offsetBy: start + len)
    let range = sindex..<eindex
    
    return str.substring(with: range)
}
*/

let args = CommandLine.arguments //型別：[String](字串陣列)
for arg in args {
    print(arg)
}

let d:Int? = Int(args[1])

//主流程
let answer = createAnswer(d:d!);
print(answer)

var guess: String? //可選型別nil(無值)或有值
var isWin:Bool = false

//print(substring(str: "0123456789", start: 3, len: 5)) Test


for i in 1...10 {
    print("\(i). 請猜一個數字: ", terminator: "") //+terminator: ""，就不會換列
    guess = readLine() //回傳型別為String?
    //檢查機制 ＨＷ1
    //1. [0-9]{d!} 0-9出現d!次
    //2. 任一數字不可重複
    
    //print("\(answer) => \(guess!)") !:強制,String?型別->String型別
    
    if let gus = guess { //這樣guess就不用＋！
        let result = checkAB(answer: answer, guess: gus)
        print("\(guess!) => \(result)")
        
        if result == "3A0B" {
            isWin = true
            break
        }

    }
}

if isWin {
    print("WINNER")
}else {
    print("Loser:\(answer)")
}

