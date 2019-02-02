//
//  ViewController.swift
//  ImageRecognition
//
//  Created by 张亚荣 on 2017/11/14.
//  Copyright © 2017年 CoolCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ivPicture: UIImageView!
    @IBOutlet weak var lbTitle: UILabel!
    
    private var model : Inceptionv3 = Inceptionv3()
    
    let images = ["cat.jpg","dog.jpg","rat.jpg","banana.jpg",
                  "puppy.jpg","rabbit.jpg","mackerel.jpg",
                  "horse.jpeg","a1.jpeg","punet.jpg"]
    var index = 0
    
    
    @IBAction func btnNext(_ sender: Any) {
        
        if index > self.images.count - 1{
            index = 0
        }
        
        let img = UIImage(named: images[index])
        self.ivPicture.image = img
        
        let resizedImage = img?.resizeTo(size: CGSize(width:299, height:299))
        
        let buffer = resizedImage?.toBuffer()
        
        let prediction = try!
            self.model.prediction(image: buffer!)
        
        self.lbTitle.text = prediction.classLabel
        
    
        index += 1
        
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

