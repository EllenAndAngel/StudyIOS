//
//  ViewController.swift
//  study0514
//
//  Created by 张亚荣 on 2017/5/14.
//  Copyright © 2017年 zyrstudy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Create a Timer
    var timer = Timer()
    
    var time = 210

    @IBOutlet weak var lblTimer: UILabel!

    @IBAction func btnPauseTimer(_ sender: Any) {
        
        timer.invalidate()
        
    }
    
    @IBAction func btnBeginTimer(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func btnFastTen(_ sender: Any) {
        
        time += 10
        lblTimer.text = String(time)
        
    }
    
    @IBAction func btnResetTimer(_ sender: Any) {
        
        time = 210
        lblTimer.text = String(time)
        
    }
    
    @IBAction func btnSlowTen(_ sender: Any) {
        if time > 10 {
            time -= 10
            lblTimer.text = String(time)
        }
    }
    
    func processTimer(){
        
        if time>0 {
            time = time - 1
            lblTimer.text = String(time)
        }else{
            timer.invalidate()
        }
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

