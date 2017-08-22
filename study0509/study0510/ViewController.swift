//
//  ViewController.swift
//  study0510
//
//  Created by 张亚荣 on 2017/5/10.
//  Copyright © 2017年 zyrstudy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var txtAge: UITextField!

    @IBOutlet weak var lblAge: UILabel!
    
    @IBAction func btnSubmit(_ sender: Any) {
        
        if(txtAge.text=="" || txtAge.text==" "){
            txtAge.text="1"
        }
        

        let ageInCatYears = Int(txtAge.text!)! * 7
        lblAge.text = String(ageInCatYears)
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

