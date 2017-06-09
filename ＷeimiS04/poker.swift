//
//  poker.swift
//  ＷeimiS04
//
//  Created by iii on 2017/6/9.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

func poker() {
    //排序
    //var test = [4,3,7,1,2,45]
    //test.sort() 原本的改過
    //var test2 = test.sorted(by: <)  //原來不動,傳回新排過的
    
    //print(test.description)
    //print(test2.description)
    
    
    //洗牌
    var poker: [Int] = Array()
    var rand, rb, temp: Int
    for i in 0..<52 {
        //poker[i]=i Error 超出Index範圍
        poker += [i]
        
    }
    //print(poker.description)
    for i in 0..<51 {
        rb = 52 - i //rb:最大數
        rand = Int(arc4random_uniform(UInt32(rb)))
        
        temp = poker[rb-1]
        poker[rb-1] = poker[rand]
        poker[rand]=temp
        
    }
    print(poker.description)
    
    //發到四個玩家
    var players:[[Int]] = [[],[],[],[]]
    for (i, card) in poker.enumerated() {//enum:列舉
        players[i%4] += [card]
        //or players[i%4].append(card)
    }
    //print(players[3].description)
    
    //攤牌
    var suit:[String] = ["黑桃","紅心","方塊","梅花"]
    var value:[String] = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    for (i, player) in players.enumerated() {
        //方法1
        //for (j, card) in player.enumerated() {
        //print("\(card) ", terminator: "")
        //print("\(suit[card/13])\(value[card%13]) ", terminator: "")
        //}
        //print()
        
        //方法2
        //for j in 0..<player.count{
        //var card = player[j]
        //print("\(suit[card/13])\(value[card%13]) ", terminator:"")
        //}
        //print()
        
        //理牌
        var tempP = player.sorted()
        for j in 0..<tempP.count {
            var card = tempP[j]
            print("\(suit[card/13])\(value[card%13]) ", terminator: "")
        }
    }

}
