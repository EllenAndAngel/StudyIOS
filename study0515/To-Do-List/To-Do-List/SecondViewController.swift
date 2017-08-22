//
//  SecondViewController.swift
//  To-Do-List
//
//  Created by 张亚荣 on 2017/5/15.
//  Copyright © 2017年 ZyrStudy. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {
    var items = [""]

    @IBOutlet weak var txtNewItem: UITextField!
    @IBOutlet weak var lblCurrentDate: UILabel!
    
    
    @IBAction func btnAddNewItem(_ sender: Any) {
        
        let itemsObject = UserDefaults.standard.object(forKey: "ToDoList")
        
        var items:[String] = []
        
        if  let tempItems = itemsObject as? [String] {
            items = tempItems
            items.append(txtNewItem.text!)
        }else{
             items = [txtNewItem.text!]
        }
        
        UserDefaults.standard.set(items, forKey: "ToDoList")
        txtNewItem.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let today = Date()
        let formatter = DateFormatter()
        formatter.dateFormat="dd.MM.yyyy"
        let result = formatter.string(from: today)
        lblCurrentDate.text = result
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    internal func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

