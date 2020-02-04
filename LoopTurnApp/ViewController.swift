//
//  ViewController.swift
//  LoopTurnApp
//
//  Created by zino-mac on 2020/02/04.
//  Copyright © 2020 zino-mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    var x:CGFloat=0
    var y:CGFloat=200
    var velX:CGFloat=5
    var flag:Bool=true
    var timer:Timer?
    
    @IBAction func btnClick(_ sender: Any) {
        if flag {
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(move), userInfo: nil, repeats: true)
        }else{
            timer!.invalidate()
            
        }
        flag = !flag
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @objc func move(){
        NSLog("move() called..", "")
        x += velX
        
        imgView.frame.origin = CGPoint(x: x, y: y)
        
        if x > 300 || x <= 0{
            velX = velX * -1
        }
        
    }
}

