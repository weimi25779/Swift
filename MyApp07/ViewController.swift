//
//  ViewController.swift
//  MyApp07
//
//  Created by iii on 2017/6/21.
//  Copyright © 2017年 iii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var btnOk: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        btnOk = UIButton(type: UIButtonType.system)
        //UIButtonType的system Type
        btnOk?.frame = CGRect(x: 0, y: 20, width: 40, height: 40)
        btnOk?.setTitle("OK", for: UIControlState.normal)
        
        //self.view.addSubview(btnOk) 早年寫法
        view.addSubview(btnOk!)
        
        switch  traitCollection.userInterfaceIdiom {
        case .pad:
            print("pad")
        case .phone:
            print("phone")
        default:
            break
        }
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        switch UIDevice.current.orientation {
        case .faceUp:
            print("faceup")
        case .faceDown:
            print("facedown")
        case .landscapeLeft:
            print("Home ->") //Home鍵在右邊
        case .landscapeRight:
            print("<- Home ") //Home鍵在左邊
        case .portrait:
            print("normal")
        case .portraitUpsideDown:
            print("normal 顛倒")
        default:
            break
        }
        
        print("size => w = \(size.width), h = \(size.height)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

