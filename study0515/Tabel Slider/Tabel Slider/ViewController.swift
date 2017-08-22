//
//  ViewController.swift
//  Tabel Slider
//
//  Created by 张亚荣 on 2017/5/15.
//  Copyright © 2017年 zyrstudy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    
    @IBOutlet weak var sliderValue: UISlider!
    
    @IBOutlet weak var tblNumber: UITableView!
    @IBAction func sliderChanged(_ sender: Any) {
        print(sliderValue.value)
        tblNumber.reloadData()
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return 50
        
    }
    

    
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "SliderCell")
        
        //cell.textLabel?.text = String(Int(sliderValue.value * Float(10 * (indexPath.row+1))))
        cell.textLabel?.text = String((Int(sliderValue.value * 10)) * (indexPath.row+1))
        return cell
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

