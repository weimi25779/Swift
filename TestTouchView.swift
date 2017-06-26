//
//  TestTouchView.swift
//  MyApp08
//
//  Created by iii on 2017/6/26.
//  Copyright © 2017年 iii. All rights reserved.
//

import UIKit

class TestTouchView: UIView {
    var isInitStat = false
    
    private var ttvc:testTouchVC?
    
    private func initState(){
        isInitStat = true
        
        let vc = findSuperVC(whichView: self)
        ttvc = vc as! testTouchVC
        print(ttvc!.a)
        
        //這樣寫就不用跑While迴圈
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        ttvc = storyboard.instantiateViewController(withIdentifier:"touchvc") as! testTouchVC
        print(ttvc!.a)
    }
    
    //find Super Container
    private func findSuperVC( whichView: UIView ) -> UIViewController? {
        var responder:UIResponder = whichView
        while  responder != nil {
            print("OK")
            
            //as? UIViewController 詢問是否為UIViewController
            if let vc = responder as? UIViewController {
                return vc
            }
            responder = responder.next! //透過next找鄰居
        }
        return nil
    }
    
    override func draw(_ rect: CGRect) {
        if !isInitStat { initState()}
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("myView: touch")
        //ttvc?.touchesBegan(touches, with: event)
        //super.touchesBegan(touches, with: event)
    }
}
