//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by 张亚荣 on 2017/5/17.
//  Copyright © 2017年 ZyrStudy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Member Parameters
    
    @IBOutlet weak var btnPlayAgain: UIButton!
    
    @IBOutlet weak var imgWinner: UIImageView!
    
    var activatePlayer = 1 //1-nougt,0-cross
    var gameState = [0,0,0,0,0,0,0,0,0]//0-empty,1-nought,2-cross
    var noneZero = 0 //how many none zero in gameState
    var inactivePlay = 1 //0-has winner, cannot play,1-no winner, keep going

    @IBOutlet weak var lblWinner: UILabel!
    @IBAction func btnPlayAgainPressed(_ sender: UIButton) {
        
        //Reset game parameter
        activatePlayer = 1 //1-nougt,0-cross
        gameState = [0,0,0,0,0,0,0,0,0]//0-empty,1-nought,2-cross
        noneZero = 0 //how many none zero in gameState
        inactivePlay = 1 //0-has winner, cannot play,1-no winner, keep going
        imgWinner.isHidden = true
        btnPlayAgain.isHidden = true
        lblWinner.isHidden = true
        
        
        for i in 1..<10 {
            if let button = view.viewWithTag(i) as? UIButton{
                button.setImage(nil, for: [])
            }
        }
        
    }
    @IBAction func btnTic(_ sender: AnyObject) {
        
        //print("----------ticButton--------------------")
        //print("activatePlayer = \(activatePlayer)  || noneZero = \(noneZero) || inactivePlay = \(inactivePlay)")
        
        if inactivePlay == 1 && gameState[sender.tag-1] == 0{
        
            if activatePlayer == 1 {
            
                sender.setImage(UIImage(named:"nought.png"), for: [])
                activatePlayer = 0
                gameState[sender.tag-1] = 1
                noneZero += 1

        
            }else{
                sender.setImage(UIImage(named:"cross.png"), for: [])
                activatePlayer = 1
                gameState[sender.tag-1] = 2
                noneZero += 1
            }
        
            //print(String(sender.tag) + "was pressed!")
            //print(gameState)
        }
        
        if noneZero >= 5 {
            //print("who win ? ")
            
            whoIsWinner()
            
            if inactivePlay == 1 && noneZero == 9 {
                //print("No winner, Game over!")
                //print("inactivePlay = \(inactivePlay) || noneZero = \(noneZero)")
                imgWinner.image = UIImage(named:"loser.png")
                imgWinner.isHidden = false
                btnPlayAgain.isHidden = false
            }
        }
        
        //print("---------------ticButton Released----------------")
        //print("activatePlayer = \(activatePlayer)  || noneZero = \(noneZero) || inactivePlay = \(inactivePlay)")
    }
    
    internal func whoIsWinner(){
        
        let winners = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
        for winner in winners {
            if gameState[winner[0]] != 0
                && gameState[winner[0]] == gameState[winner[1]]
                && gameState[winner[1]] == gameState[winner[2]] {
                //print("We have winner!")
                inactivePlay = 0
                imgWinner.image = UIImage(named: "winner.png")
                imgWinner.isHidden = false
                btnPlayAgain.isHidden = false
                if gameState[winner[0]] == 1 {
                    lblWinner.text = "Circle win !"
                    lblWinner.isHidden = false
                }else{
                    lblWinner.text = "Cross Win !"
                    lblWinner.isHidden = false
                }
            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btnPlayAgain.isHidden = true
        imgWinner.isHidden = true
        lblWinner.isHidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

