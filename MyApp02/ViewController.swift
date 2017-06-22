//
//  ViewController.swift
//  MyApp02
//
//  Created by iii on 2017/6/20.
//  Copyright © 2017年 iii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageCup: UIImageView!
    private let cups:[UIImage] = [
      UIImage(named:"01")!,UIImage(named:"02")!,
      UIImage(named:"03")!,UIImage(named:"03")!
    ]
    
    @IBAction func upBtn(_ sender: Any) {
        //print("Up")
        let rand = Int(arc4random_uniform(4))
        imageCup.image = cups[rand]
    }
    @IBAction func pressBtn(_ sender: Any) {
        //print("Down")
        imageCup.animationImages = cups //設置要輪播的圖片陣列
        imageCup.animationDuration = 0.2 //輪播一次的總秒數
        imageCup.animationRepeatCount = 5 //要輪播幾次
        imageCup.startAnimating() //開始輪播
    }
       override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

