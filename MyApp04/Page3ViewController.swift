//
//  Page3ViewController.swift
//  MyApp04
//
//  Created by iii on 2017/6/20.
//  Copyright © 2017年 iii. All rights reserved.
//

import UIKit

class Page3ViewController: UIViewController {
    var arg:String?
    
    @IBAction func unwind2(for segue: UIStoryboardSegue) {
        print("back")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let strarg = arg {
            print("args = \(strarg)")
        }else {
            print("XXXXX")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
