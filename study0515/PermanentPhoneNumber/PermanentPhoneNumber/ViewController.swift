//
//  ViewController.swift
//  PermanentPhoneNumber
//
//  Created by 张亚荣 on 2017/5/15.
//  Copyright © 2017年 zyrstudy. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    var userphonenumber = [""]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return userphonenumber.count
        
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "PhoneCell")
        cell.textLabel?.text=userphonenumber[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UserDefaults.standard.set("Rob", forKey: "name")
        let nameObject = UserDefaults.standard.object(forKey: "name")
        if let name = nameObject as? String{
            print(name)
        }
        
        let arr = [1,5,7,8,10]
        UserDefaults.standard.set(arr, forKey: "arrayNumber")
        let arrObject = UserDefaults.standard.object(forKey: "arrayNumber")
        
        if let arrNum = arrObject as? NSArray {
            print(arrNum)
        }
        
        let userPhone = ["18601152640","0274212235","18046550008","88171203","88684648"]
        UserDefaults.standard.set(userPhone, forKey: "userPhone")
        let userPhoneObject = UserDefaults.standard.object(forKey: "userPhone")
        if let userPhoneNum = userPhoneObject as? NSArray{
            userphonenumber = userPhoneNum as! [String]
            print(userphonenumber)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

