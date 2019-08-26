//
//  YYRichText.swift
//  YYRichText
//
//  Created by 尤增强 on 2019/8/26.
//  Copyright © 2019 zqyou. All rights reserved.
//

import UIKit

class YYRichText: NSObject {


    /// 返回普通富文本内容 -
    ///
    /// - Parameters:
    ///   - str: 需要编辑的文字
    ///   - font: 字体样式 默认系统 16px
    /// - Returns: 默认黑色 16px的富文本标签
    func getAttributedString(_ str:String ,_ font:UIFont = UIFont.boldSystemFont(ofSize: 16),_ textColor:UIColor = UIColor.black)->NSAttributedString{

        let attributes = [NSAttributedString.Key.font: font,NSAttributedString.Key.foregroundColor:textColor]
        return NSAttributedString(string: str, attributes: attributes)
    }

    /// 返回普通富文本内容 - 有行高
    ///
    /// - Parameters:
    ///   - str: 需要编辑的文字
    ///   - font: 字体样式 默认系统 16px
    /// - Returns: 默认黑色 16px的富文本标签
    func getAttributedString(_ str:String ,_ font:UIFont = UIFont.boldSystemFont(ofSize: 16),_ textColor:UIColor = UIColor.black,_ paragraph:NSMutableParagraphStyle)->NSAttributedString{

        let attributes = [NSAttributedString.Key.font: font,NSAttributedString.Key.foregroundColor:textColor,
                          NSAttributedString.Key.paragraphStyle:paragraph]
        return NSAttributedString(string: str, attributes: attributes)
    }

    /// 返回全字体颜色改变富文本内容
    ///
    /// - Parameters:
    ///   - str: 需要编辑的文字
    ///   - font: 字体样式 默认系统 16px
    ///   - tintColor: 需要设置的颜色
    /// - Returns: 返回特定颜色的富文本
    func getAttributedString(_ str:String ,_ font:UIFont = UIFont.boldSystemFont(ofSize: 16),_ tintColor:UIColor,_ textColor:UIColor = UIColor.lightGray)->NSAttributedString{

        let rang = NSRange(location:0, length:str.count)
        return getAttributedString(str:str,font:font,tintColor:tintColor,textColor:textColor,range:rang)
    }

    /// 返回特定的字体颜色改变富文本内容
    ///
    /// - Parameters:
    ///   - str: 需要编辑的文字
    ///   - font: 字体样式 默认系统 16px
    ///   - tintColor: 需要设置的颜色
    ///   - range: 区间
    /// - Returns: 返回特定位置文字颜色标记的富文本
    func getAttributedString(str:String ,font:UIFont = UIFont.boldSystemFont(ofSize: 16),tintColor:UIColor, textColor:UIColor ,range: NSRange)->NSAttributedString{

        let mutableStr = NSMutableAttributedString(string:str, attributes:[NSAttributedString.Key.font:font,
                                                                           NSAttributedString.Key.foregroundColor:textColor])

        mutableStr.addAttribute(NSAttributedString.Key.foregroundColor, value:tintColor, range:range)

        return mutableStr
    }


    /// 对特定的文字设置特定的字体颜色 - 富文本
    ///
    /// - Parameters:
    ///   - str: 全文本文字
    ///   - font: 字体图标
    ///   - color: 特定颜色
    ///   - rangeStrs: 需要特定颜色的文字 数组
    /// - Returns: NSAttributedString
    func getAttributedString(_ str:String ,_ font:UIFont = UIFont.boldSystemFont(ofSize: 16),_ tintColor:UIColor,_ textColor:UIColor, _ rangeStr: [String])->NSAttributedString{

        let mutableStr = NSMutableAttributedString(string:str, attributes:[NSAttributedString.Key.font:font,
                                                                           NSAttributedString.Key.foregroundColor:textColor])

        for v in rangeStr {
            let range = str.range(of: v),
            nsRange = "".nsRange(from: range!);
            mutableStr.addAttribute(NSAttributedString.Key.foregroundColor, value:tintColor, range:nsRange)
        }
        return mutableStr
    }




    /// 对一些特定的文字设置固定的属性 - 富文本
    ///
    func getAttributedString(_ str:String ,_ attributes: [(String,UIFont,UIColor)],_ textColor:UIColor)->NSAttributedString{
        let mutableStr = NSMutableAttributedString(string:str, attributes:[NSAttributedString.Key.foregroundColor:textColor])

        for v in attributes {
            let range = str.range(of: v.0),
            nsRange = "".nsRange(from: range!);
            mutableStr.addAttribute(NSAttributedString.Key.font,
                                    value:v.1,range:nsRange)
            mutableStr.addAttribute(NSAttributedString.Key.foregroundColor, value:v.2, range:nsRange)
        }
        return mutableStr
    }

}
