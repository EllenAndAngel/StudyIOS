//
//  ViewController.swift
//  GuessNumber
//
//  Created by 张亚荣 on 2017/5/11.
//  Copyright © 2017年 zyrstudy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtGuessNumber: UITextField!
    
    @IBOutlet weak var lblShowResult: UILabel!
    
    var randomNumber:Int = 0
    var guess:Int=0
    
    @IBAction func btnGuess(_ sender: Any) {
        
        guess+=1
        
        if Int(txtGuessNumber.text!)! == randomNumber {
            
            lblShowResult.text="Yeah, You are right! \nTotal Guess \(guess) Times"
        }else{
            lblShowResult.text="Try again!"
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        randomNumber = Int(arc4random_uniform(6))
        print(randomNumber)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

