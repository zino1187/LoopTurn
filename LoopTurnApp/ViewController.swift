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
    
    @IBAction func btnClick(_ sender: Any) {
        Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(move), userInfo: nil, repeats: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @objc func move(){
        NSLog("move() called..", "")
        x += 5
        y += 5
        
        imgView.frame.origin = CGPoint(x: x, y: y)
    }
}

