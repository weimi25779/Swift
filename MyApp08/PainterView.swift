//
//  PainterView.swift
//  MyApp08
//
//  Created by iii on 2017/6/23.
//  Copyright © 2017年 iii. All rights reserved.
//

import UIKit

class PainterView: UIView {
    private var viewW:CGFloat = 0
    private var viewH:CGFloat = 0
    //private var line:Array<(CGFloat,CGFloat)> = []  一條線
    private var lines:Array<Array<(CGFloat,CGFloat)>> = [] //多條線<一條線> 二維陣列
    private var recycle:Array<Array<(CGFloat,CGFloat)>> = [] //資源回收桶
    private var isInit = false
    private var context:CGContext?
    
    private var imgApple = UIImage(named: "apple2")
    private var imgW:CGFloat?
    private var imgH:CGFloat?
    private var ballImg = UIImage(named: "ball")
    private var ballW:CGFloat?
    private var ballH:CGFloat?
    private var ballX:CGFloat = 1
    private var ballY:CGFloat = 1
    private var dX:CGFloat = 2
    private var dY:CGFloat = 2
    private var i = 0;

    
    private func initState(_ rect:CGRect) {
        isInit = true
        
        viewW = rect.size.width
        viewH = rect.size.height
        context = UIGraphicsGetCurrentContext()
        
        imgW = imgApple?.size.width
        imgH = imgApple?.size.height
        
        //var temp:UIImageView = UIImageView(image:img)
        //temp.frame = CGRect(x: 0, y: 0, width: imgW!, height: imgH!)
        //addSubview(temp)

        //上下顛倒 => Homework
        //        let imgCG = img?.cgImage
        //        context?.draw(imgCG!, in: CGRect(x: 0, y: 0, width: imgW!, height: imgH!))
        
        
        ballW = ballImg?.size.width
        ballH = ballImg?.size.height
        
        Timer.scheduledTimer(withTimeInterval: 0.002, repeats: true, block: {
            (timer) in
            self.refreashView()
        })
    }
    
    func refreashView(){
        i += 1
        if i % 2 == 0 {
            moveBall()
        }
        setNeedsDisplay()
    }
    
    func moveBall(){
        //碰撞檢測
        if ballX < 0 || ballX + ballW! > viewW {
            dX *= -1
        }
        if ballY < 0 || ballY + ballH! > viewH {
            dY *= -1
        }
        ballX += dX
        ballY += dY
        
    }
    //呈現外觀
    override func draw(_ rect: CGRect) {
        if !isInit {initState(rect)}
        
        //viewW = rect.size.width
        //viewH = rect.size.height
        //print("\(viewW) x \(viewH)")
        
        //let context:CGContext? = UIGraphicsGetCurrentContext()
        
        backgroundColor = UIColor(colorLiteralRed: 1, green: 1, blue: 0, alpha: 1)
        
        context?.setLineWidth(2)
        context?.setStrokeColor(red: 0, green: 0, blue: 1, alpha: 1)
        
        imgApple?.draw(in: CGRect(x: 0, y: 0, width: imgW!, height: imgH!))
        
        ballImg?.draw(in: CGRect(x: ballX, y: ballY, width: ballW!, height: ballH!))
        
        
        //for i in 0..<line.count 3個點,2條線; 4個點,3條線 ,故0要改成1
        //if line.count<=1 {return}
        //畫一條線
        //for i in 1..<line.count {
            //let (p0x, p0y) = line[i-1]
            //let (p1x, p1y) = line[i]
            
            //context?.move(to: CGPoint(x: p0x, y: p0y))
            //context?.addLine(to: CGPoint(x: p1x, y: p1y))
            //context?.drawPath(using: CGPathDrawingMode.stroke)
        
    
        //尋訪每條線
        for j in 0..<lines.count {
            if lines[j].count<=1 {continue} //<1 就不畫
        //尋訪一條線
            for i in 1..<lines[j].count {
                let (p0x, p0y) = lines[j][i-1]
                let (p1x, p1y) = lines[j][i]
                
                //context?.move(to: CGPoint(x: 0, y: 0)) 畫筆移到x:0,y:0
                context?.move(to: CGPoint(x: p0x, y: p0y))
                context?.addLine(to: CGPoint(x: p1x, y: p1y))
                context?.drawPath(using: CGPathDrawingMode.stroke)
            }
        }
        
        //var img = UIImage(named: "apple2")
        //var imgW = img?.size.width
        //var imgH = img?.size.height
        
        
        
        //img?.draw(in: CGRect(x: 0, y: 0, width: imgW!, height: imgH!))
    }
    //抓Touch
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //print("Down")
        let touch:UITouch = touches.first! //第一個觸控點
        let point:CGPoint = touch.location(in: self)
        //print("\(point.x) x \(point.y)")
        //line[] += [(point.x, point.y)]
        
        recycle = [[]]
        lines += [[]] //二維陣列
        lines[lines.count-1] += [(point.x, point.y)]
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //print("Move")
        let touch:UITouch = touches.first!
        let point:CGPoint = touch.location(in: self)
        
        //line += [(point.x, point.y)]
        lines[lines.count-1] += [(point.x, point.y)]
        setNeedsDisplay() //重畫

    }
    
    func clear() {
        lines = [[]]
        recycle = [[]]
        setNeedsDisplay() //重新顯示
    }
    
    func undo() {
        if lines.count > 0 {
            //lines.remove(at: lines.count-1)
            recycle += [lines.remove(at: lines.count-1)]
            setNeedsDisplay()
        }
    }
    
    func redo() {
        if recycle.count > 0 {
            lines += [recycle.remove(at: recycle.count-1)]
            setNeedsDisplay()
        }
    }

}
