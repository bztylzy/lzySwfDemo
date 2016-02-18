//
//  FirstViewController.swift
//  lzySwfDemo
//
//  Created by 李宗瑶 on 16/1/21.
//  Copyright © 2016年 先花. All rights reserved.
//

import UIKit

class FirstViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.autoKeybord=true
         self.title="投资"
        self.view.backgroundColor=UIColor.whiteColor()
        
        var player=Player(name: "lzy")
        player.completedLevel(1)
        print("highest unlocked level is now\(LevelTracker.highestUnlockedLevel)")
        
        player=Player(name: "jrodan")
        
        if player.tracker.advanceToLevel(6){
            print("player is now on level 6")
        }else{
            print("level 6 has not yet been unlocked")
        }
        
        
        func backwards(s1: String, s2: String) -> Bool {
            return s1 > s2
        }
        
        let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
        
        let reversed = names.sort(backwards)
        
        
        print("\(reversed)")
        
        
        let digitNames = [
            0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four",
            5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
        ]
        let numbers = [16, 58, 510]
        
        let strings = numbers.map {
            (var number) -> String in
            var output = ""
            while number > 0 {
                output = digitNames[number % 10]! + output
                number /= 10
            }
            return output
        }
        
        
        print("\(strings)")
        
        
        //单例测试
        
        let s1=UserSingTon.shareInstance
        let s2=UserSingTon.shareInstance
        s1.name="张飞"
        s2.name="关羽"
        
        print("s1－>\(s1.name) s2->\(s2.name)")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

//创建结构体
struct LevelTracker {
    //静态属性
    static var highestUnlockedLevel=1
    //类型方法一旦新等级被解锁就保存最新等级
    static func unlockLevel(level:Int){
        if level>highestUnlockedLevel {
            highestUnlockedLevel=level
        }
    }
    //类型方法 如果某个等级被解锁 返回true
    static func levelIsUnlocked(level:Int)->Bool{
        return level<=highestUnlockedLevel
    }
    var currentLevel=1
    mutating func advanceToLevel(level:Int)->Bool{
        if LevelTracker.levelIsUnlocked(level){
            currentLevel=level
            return true
        }else{
            return false
        }
    }
}


class Player {
    var tracker=LevelTracker()
    let playerName:String
    func completedLevel(level:Int){
        LevelTracker.unlockLevel(level+1)
        tracker.advanceToLevel(level+1)
    }
    
    init(name:String){
        playerName=name
    }
}
