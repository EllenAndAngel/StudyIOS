//
//  FirstViewController.swift
//  To-Do-List
//
//  Created by 张亚荣 on 2017/5/15.
//  Copyright © 2017年 ZyrStudy. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var items:[String] = []
    
    @IBOutlet weak var tblToDoList: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return items.count
    }

    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "ToDoListCell")
        cell.textLabel?.text=String(items[indexPath.row])
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let itemObject = UserDefaults.standard.object(forKey: "ToDoList")
        
        if let allItems = itemObject as? [String]{
            items = allItems
        }
        
        tblToDoList.reloadData()
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete{
            items.remove(at: indexPath.row)
        }
        
        tblToDoList.reloadData()
        
        UserDefaults.standard.set(items, forKey: "ToDoList")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        let itemObject = UserDefaults.standard.object(forKey: "ToDoList")

        if let allItems = itemObject as? [String]{
            items = allItems
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

