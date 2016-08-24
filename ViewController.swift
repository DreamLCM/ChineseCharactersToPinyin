//
//  ViewController.swift
//  ChineseCharactersToPinyin
//
//  Created by apple on 16/8/24.
//  Copyright © 2016年 CM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /**
         
         
         - parameter <Tstring:    需要传入CFMutableStringRef类型的字符串, 这个字符串就是这里的主角, 想转成拼音形式的汉字
         - parameter <Trange:     一个范围, 控制想输出拼音的范围, 如果填上NULL就是指全部输出.
         - parameter <Ttransform: 一个CFStringRef类型的transform, 也就是转换形式, 有不同种转换形式, 按照自己的需求来进行选择
         - parameter <Treverse:   指定该转换是否进行逆向转换
         */
//        CFStringTransform(<#T##string: CFMutableString!##CFMutableString!#>, <#T##range: UnsafeMutablePointer<CFRange>##UnsafeMutablePointer<CFRange>#>, <#T##transform: CFString!##CFString!#>, <#T##reverse: Bool##Bool#>)
        
//        let CFSTR:CFString = "中国"
//        let string:CFMutableStringRef = CFStringCreateMutableCopy(nil, 0, CFSTR)
        
        let myString = NSMutableString(string: "中国")
        
        let isSuccess = CFStringTransform(myString, nil, kCFStringTransformMandarinLatin, false)
        
        print(isSuccess)
        print(myString)
        
        // 去掉变音符号
        CFStringTransform(myString, nil, kCFStringTransformStripDiacritics, false)
        
        print(myString)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

