//
//  ViewController.swift
//  MyApp09
//
//  Created by iii on 2017/6/26.
//  Copyright © 2017年 iii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    private var a = 0
    
    @IBAction func test1(_ sender: Any) {
        //DispatchQueue.main.async
        DispatchQueue.global().async { //async:非同步
            self.task1()
        }
        //DispatchQueue.main.async
        //DispatchQueue.global().sync { //sync:同步，做完一個才做下一個
//        DispatchQueue.main.async {
//            self.task2()
//        }
//        DispatchQueue.global().async {
//            self.task3()
//        }
    }
    
    
    
    @IBAction func test2(_ sender: Any) {
        //DispatchQueue.main.async
//        DispatchQueue.global().async {
//            self.task2()
//        }
        DispatchQueue.global().async { //async:非同步
            self.task2()
        }
    }
    
    func task1() {
        for i in 1...10 {
            print("A:\(i)")
            //sleep(1)
            usleep(200 * 1000) //1000 = 1秒
            
            DispatchQueue.main.async {
                self.label1.text = String(i)
            }
            
        }
    }
    func task2() {
        for i in 1...10 {
            print("B:\(i)")
            //sleep(1)
            usleep(200 * 1000)
            
            DispatchQueue.main.async {
                self.label2.text = String(i)
            }
        }
    }
    
    func task3() {
        for i in 1...10 {
            print("C:\(i)")
            //sleep(1)
            usleep(200 * 1000)
        }
    }

    
    @IBAction func test3(_ sender: Any) {
        let opq = OperationQueue()
        opq.addOperation {
            for i in 1...100 {
                sleep(1)
                DispatchQueue.main.async {
                    self.label1.text = String(i)
                }
            }
        }
        opq.addOperation {
            for i in 1...100 {
                sleep(1)
                DispatchQueue.main.async {
                    self.label2.text = String(i)
                }
            }
        }
    }
    
    @IBAction func test4(_ sender: Any) {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {
            (timer) in
            self.task4()
            
        })
    }
    
    func task4() { //時間到做某事
        a += 1
        label1.text = String(a)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.label1.text = String(100)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

