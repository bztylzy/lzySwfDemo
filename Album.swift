//
//  Album.swift
//  lzySwfDemo
//
//  Created by 李宗瑶 on 16/1/28.
//  Copyright © 2016年 先花. All rights reserved.
//

import UIKit

class Album: NSObject {
    var title:String!
    var artist:String!
    var genre:String!
    var coverUrl:String!
    var year:String!
    
    //初始化方法
    init(title:String,artist:String,genre:String,coverUrl:String,year:String) {
        super.init()
        
        self.title=title
        self.artist=artist
        self.genre=genre
        self.coverUrl=coverUrl
        self.year=year
    }
    
//    func description()->String{
//        return "title:\(title)+artist:\(artist)+genre:\(genre)+coverUrl:\(coverUrl)+year:\(year)"
//    }
}
