//
//  FourViewController.swift
//  lzySwfDemo
//
//  Created by 李宗瑶 on 16/1/21.
//  Copyright © 2016年 先花. All rights reserved.
//

import UIKit

class FourViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
         self.title="我的家在邯郸"
        self.view.backgroundColor=UIColor.whiteColor()
        let lableHight: Float = 4
        
       print(lableHight)
        
        let label = "The width is"
        let width = 94
        let widthLabel = label + String(width)
        
        print(widthLabel)
        
        let money=2.5
        print("I have \(money)")
        
        //创建一个数组
        var heros=["liu","guan","zhang"]
        //替换数组
        heros[0]="zhao"
        print(heros[0])
        
       //创建字典
        var studentInfo=["zhangfei":10,"zhaoyun":20]
        studentInfo["zhangfei"]=30
        print(studentInfo["zhangfei"])
        
        //创建空数组
        var emptyArray=[String]()
        
        emptyArray=["zhangfei","guanyu"]
        
        print(emptyArray[0])
        //创建空字典
        var empatyDictionary=[String:Float]()
        empatyDictionary=["zhangfei":25,"guanyu":30]
        print(empatyDictionary["guanyu"])
        
        
        //控制流
        let numbers=[10,20,30,40,50]
        for nub in numbers{
            print(nub)
        }
        
        
        
        // ？用来表示一个可选的值（是一个空值或者是nil）
        var optionString:String?="hello swift"
        optionString=nil
        print(optionString==nil)
        
        //优化switch  符合条件后swich 会自动跳出，所以不会用到break
        let greencolor="green"
        switch greencolor{
            case "red": print("red")
            case "black":print("black")
            case "green":print("green")
        default:
            print("以上情况都没有时会执行")
        }
        
        //遍历字典 _ 有时用于忽略没有用的参数
        let interestingNumbers = [
            "Prime": [2, 3, 5, 7, 11, 13],
            "Fibonacci": [1, 1, 2, 3, 5, 8],
            "Square": [1, 4, 9, 16, 25],
        ]
        var largest = 0
        for (_, numbers) in interestingNumbers {
            for number in numbers {
                if number > largest {
                    largest = number
                }
            }
        }
        print(largest)
        
        //while 循环
        var a=1
        while a<20{
            
            print(++a)//先运算后赋值
        }

        var b=1
        while b<20{
            print(b++)//先赋值后运算
        }
        //... ..<来表示范围
        let anumber=0
        for x in 0..<10 {
            print(anumber+x)
           

        }
        
        
        var secondForLoop = 0
        for var i = 0; i < 4; ++i {
            secondForLoop += i
        }
        print(secondForLoop)
        
        
        //用func 声明函数 使用函数名字＋参数来调用函数  用->来代表返回值
        func she(s:Int,h:Int,e:Int) ->String{
            return("\(s+h+e)+\(h)+\(e)")
        }
        
        
        print(she(2, h: 3, e: 5))
        
        //求最大值 最小值  求和 元组来返回多个参数
        func calculateStatistics(scores:[Int])->(min:Int,max:Int,sum:Int){
            var min=scores[0]
            var max=scores[0]
            var sum=0
            
            for score in scores{
                if score > max {
                    max=score
                }else if score<min{
                    min=score
                }
                sum+=score
            }
            
            return(min,max,sum)
        }
        
        let statistics=calculateStatistics([90,85,100,76,69,93])
        print(statistics.max)
        print(statistics.min)
        print(statistics.sum)
        
        
        //函数可以带有可变个数的参数 用...来表示
        func sumOf(numbers:Int...)->Int{
            var sum=0
            for number in numbers{
                sum+=number
            }
            return sum
        }
   print(sumOf(5,3,2))
        
        
        //函数可以被嵌套 内部函数可以访问外部函数的变量
        
        func returnFifteen()->Int{
            var y=10
            func add(){
                y+=5
            }
            add()
            return y
        }
        returnFifteen()
        
        print(returnFifteen())
        
        
        //函数是第一等类型，这意味着函数可以作为函数的返回值
        func makcice()->(Int->Int){
            func addone(number:Int)->Int{
                return 1+number
            }
            return addone
        }
        
        let  makin=makcice()
        print(makin(8))
        
        
        //函数可以作为参数
        func hasAnyMatches(list:[Int],condition:Int ->Bool)->Bool{
            for item in list {
                if condition(item){
                    return true
                }
            }
            return false
        }
        
        
        func lessThanTen(number:Int)->Bool{
            return number<10
        }
        
        let nums=[20,19,7,17]
        hasAnyMatches(nums, condition: lessThanTen)
        
        print(hasAnyMatches(nums, condition: lessThanTen))
        
        //排序
        let sortedNumbers = nums.sort { $0 < $1 }
        print(sortedNumbers)
        
        
        let sp=Shape()
        sp.numberofsides=7
        print(sp.simpleDescription())
        
        let test = square(sideLength: 5.2, name: "my test square")
        test.area()
        test.simpleDescription()

    print(test.simpleDescription())
        print(test.area())
        // Do any additional setup after loading the view.
    }
    
    class Shape {
        internal
        var numberofsides = 0
        func simpleDescription()->String{
            return "a shape with \(numberofsides)"
        }

    }
    
    
    class NameShape {
        var numberofsides:Int = 0
        var name:String
        init(name: String){
            self.name=name
        }
        
        func simpleDescription()->String{
            return "A shape with \(numberofsides)sides"
        }
    }
    
    class square: NameShape {
        var sideLength:Double
        init(sideLength:Double,name:String){
            self.sideLength=sideLength
            super.init(name: name)
            numberofsides=4
        }
        func area()->Double{
            return sideLength * sideLength
        }
        
        override func simpleDescription() -> String {
            return "A sqaure with sides of lengh\(sideLength)"
        }
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
