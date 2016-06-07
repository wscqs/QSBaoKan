//
//  String+Extension.swift
//  QSBaoKan
//
//  Created by mba on 16/6/7.
//  Copyright © 2016年 cqs. All rights reserved.
//

import UIKit

extension String{
    
    // MARK: 缓存目录
    /**
    将当前字符串拼接到cache目录后面
    */
    func cacheDir() -> String{
        let path = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.CachesDirectory, NSSearchPathDomainMask.UserDomainMask, true).last!  as NSString
        return path.stringByAppendingPathComponent((self as NSString).lastPathComponent)
    }
    /**
    将当前字符串拼接到doc目录后面
    */
    func docDir() -> String
    {
        let path = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true).last!  as NSString
        return path.stringByAppendingPathComponent((self as NSString).lastPathComponent)
    }
    /**
    将当前字符串拼接到tmp目录后面
    */
    func tmpDir() -> String
    {
        let path = NSTemporaryDirectory() as NSString
        return path.stringByAppendingPathComponent((self as NSString).lastPathComponent)
    }
    
    
    // MARK: 时间处理
    /**
     时间戳转为时间
     
     - returns: 时间字符串
     */
    func timeStampToString() -> String
    {
        let string = NSString(string: self)
        let timeSta: NSTimeInterval = string.doubleValue
        let dfmatter = NSDateFormatter()
        dfmatter.dateFormat = "yyyy年MM月dd日"
        let date = NSDate(timeIntervalSince1970: timeSta)
        return dfmatter.stringFromDate(date)
    }
    
    /**
     时间转为时间戳
     
     - returns: 时间戳字符串
     */
    func stringToTimeStamp()->String
    {
        let dfmatter = NSDateFormatter()
        dfmatter.dateFormat = "yyyy年MM月dd日"
        let date = dfmatter.dateFromString(self)
        let dateStamp: NSTimeInterval = date!.timeIntervalSince1970
        let dateSt:Int = Int(dateStamp)
        return String(dateSt)
    }
}