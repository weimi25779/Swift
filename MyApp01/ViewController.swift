//
//  ViewController.swift
//  MyApp01
//
//  Created by iii on 2017/6/19.
//  Copyright © 2017年 iii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var btnClick: UIButton!
    @IBOutlet weak var labelMesg: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    
    @IBAction func sayYa(_ sender: Any) {
        labelMesg.text = creatLottery()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            }
    
    private func creatLottery() -> String {
        var setLottery:Set<Int> = []
        var temp:Int
        while setLottery.count < 6 {
            temp = Int(arc4random_uniform(49)) + 1
            setLottery.insert(temp)
        }
        
        var strLottery = ""
        for lottery in setLottery {
            strLottery.append("\(lottery) ")
        }
        
        let arrayLottery = Array(setLottery)
        label1.text = String(arrayLottery[0])
        label2.text = String(arrayLottery[1])
        label3.text = String(arrayLottery[2])
        label4.text = String(arrayLottery[3])
        label5.text = String(arrayLottery[4])
        label6.text = String(arrayLottery[5])
        
        
        
        return strLottery

    }

    }

