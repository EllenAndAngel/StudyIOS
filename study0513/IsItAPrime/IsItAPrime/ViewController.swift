//
//  ViewController.swift
//  IsItAPrime
//
//  Created by 张亚荣 on 2017/5/13.
//  Copyright © 2017年 zyrstudy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNumber: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    @IBAction func btnIsitaPrime(_ sender: Any) {
        
        let num:Int = Int(txtNumber.text!)!
        if isItAPrime(num: num) {
            lblResult.text="It is a prime"
        }else{
            lblResult.text="It is not a prime"
        }
        
    }
    
    func isItAPrime(num : Int) -> Bool{
        if num == 1 {
            return false
        }else {
            var i = 2
            while i < num {
                if num % i == 0 {
                    return false
                }
                i += 1
            }
            return true
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

