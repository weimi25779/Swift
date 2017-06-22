//
//  ViewController.swift
//  MyApp06
//
//  Created by iii on 2017/6/21.
//  Copyright © 2017年 iii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var svalue: UISwitch!

    @IBOutlet weak var stepValue: UIStepper!
    
    @IBOutlet weak var mybtn: UIButton!
    
    private var isOn:Bool?
    
    @IBAction func switchStatus(_ sender: Any) {
        print(svalue.isOn)
    }
    
    @IBAction func changeValue(_ sender: Any) {
        print(stepValue.value)
    }
    
    @IBAction func chickButton(_ sender: Any) {
        mybtn.isSelected = !mybtn.isSelected
        //開與關的動作
        //mybtn.isSelected(若為true) = (!true=>false)
        //mybtn.isSelected(若為false) = (!false=>true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stepValue.maximumValue = 10
        stepValue.minimumValue = 0
        stepValue.value = 5
        stepValue.stepValue = 0.5
        
        mybtn.setImage(UIImage(named:"switch_on"), for:UIControlState.normal)
        mybtn.setImage(UIImage(named:"switch_off"), for:UIControlState.selected)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

