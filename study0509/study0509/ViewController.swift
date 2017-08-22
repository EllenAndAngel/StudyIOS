//
//  ViewController.swift
//  study0509
//
//  Created by 张亚荣 on 2017/5/9.
//  Copyright © 2017年 zyrstudy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBAction func btnSubmit(_ sender: Any) {
        
        lblName.text=txtName.text
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


