//
//  ViewController.swift
//  MyApp03
//
//  Created by iii on 2017/6/20.
//  Copyright © 2017年 iii. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var textHistory: UITextView!
    
    private var stringAnswer:String?
    private var counter = 0

    @IBAction func btnGuess(_ sender: Any) {
        counter += 1
        let stringInput = textInput.text!
        
        let stringResult = WeimiAPI.checkAB(answer: stringAnswer!, guess: stringInput)
        
        labelResult.text = stringResult
        
        labelResult.text = stringResult
        
        textHistory.text.append("\(counter). \(stringInput) => \(stringResult)\n")
        textInput.text = ""
        
        if stringResult == "3A0B" {
            showWinnerDialog()
        }else if counter == 3 {
            showLosserDialog()
        }
        
        textInput.resignFirstResponder() //重新得焦
    }
    func showWinnerDialog() {
        let alert:UIAlertController = UIAlertController(title: "遊戲結果", message: "恭喜老爺, 賀喜夫人", preferredStyle: UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {
            (action: UIAlertAction) -> Void in
            print("OK")
        })
        alert.addAction(okAction)
        
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func showLosserDialog() {
        let alert:UIAlertController = UIAlertController(title: "遊戲結果", message: "很遺憾\n答案是:\(stringAnswer!)", preferredStyle: UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {
            (action: UIAlertAction) -> Void in
            print("OK")
            self.initRound()
        })
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    private func initRound() {
        textInput.text = ""
        labelResult.text = "顯示結果"
        textHistory.text = ""
        stringAnswer = WeimiAPI.createAnswer(3)
        counter = 0
        textInput.resignFirstResponder()
    }
    
    // called when 'return' key pressed. return NO to ignore.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        btnGuess(self)
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textInput.delegate = self
        initRound()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

