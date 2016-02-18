//
//  ViewController.swift
//  lzySwfDemo
//
//  Created by 李宗瑶 on 16/1/21.
//  Copyright © 2016年 先花. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var list:[String]=[]
    
    override func loadView() {
        let swiftTable=UITableView(frame: CGRectMake(0, 0, 320, 480))
        swiftTable.dataSource=self
        swiftTable.delegate=self
        self.view=swiftTable
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        list.append("刘备")
        list.append("关羽")
        list.append("张飞")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 44.0
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier="cell"
        let cell=UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: identifier)
        cell.textLabel?.text=list[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let detail=DetailViewController()
        self.navigationController?.pushViewController(detail, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



