//
//  BaseViewController.swift
//  lzySwfDemo
//
//  Created by 李宗瑶 on 16/1/22.
//  Copyright © 2016年 先花. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    //定义变量是否收键盘bool并添加属性监听器
    var autoKeybord=false
        
        {
        didSet{
            if autoKeybord{
                let tap=UITapGestureRecognizer(target: self, action:"tap:");
                self.view.addGestureRecognizer(tap)
  
            }
        }
    }
   

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    func tap(sender:UITapGestureRecognizer){
        UIApplication .sharedApplication().keyWindow?.endEditing(true)
        print("我只行了")
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
