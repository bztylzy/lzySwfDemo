//
//  DetailViewController.swift
//  lzySwfDemo
//
//  Created by 李宗瑶 on 16/1/21.
//  Copyright © 2016年 先花. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let view=UIView(frame: UIScreen.mainScreen().bounds)
        view.backgroundColor=UIColor.whiteColor()
        let lable=UILabel(frame: CGRectMake(50,100,200,40))
        lable.text="这是一个详情页"
        self.view=view
        self.view.addSubview(lable)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
