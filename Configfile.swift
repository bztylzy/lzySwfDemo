//
//  Configfile.swift
//  lzySwfDemo
//
//  Created by 李宗瑶 on 16/1/27.
//  Copyright © 2016年 先花. All rights reserved.
//

import UIKit


class Configfile: NSObject {

}

//全局变量以及全局函数（代替宏）
let SCREENWIDTH=UIScreen.mainScreen().bounds.size.width
let SCREENHIGHT=UIScreen.mainScreen().bounds.size.height
func colorWithHexString (hex:String) -> UIColor {
    var cString:String = hex.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()).uppercaseString
    
    if (cString.hasPrefix("#")) {
        cString = (cString as NSString).substringFromIndex(1)
    }
    
    
    if (cString.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) != 6) {
        return UIColor.grayColor()
    }
    
    
    let rString = (cString as NSString).substringToIndex(2)
    let gString = ((cString as NSString).substringFromIndex(2) as NSString).substringToIndex(2)
    let bString = ((cString as NSString).substringFromIndex(4) as NSString).substringToIndex(2)
    
    var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
    NSScanner(string: rString).scanHexInt(&r)
    NSScanner(string: gString).scanHexInt(&g)
    NSScanner(string: bString).scanHexInt(&b)
    
    
    return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(1))
}

let THEMECOLOR=colorWithHexString("474d74")
let TINTCOLOR=colorWithHexString("c90000")

//单例模式
class UserSingTon {
    var name="kobe"
    static let shareInstance=UserSingTon()
    private init(){}
    
}
