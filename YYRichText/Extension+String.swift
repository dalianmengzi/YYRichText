//
//  Extension+String.swift
//  YYRichText
//
//  Created by 尤增强 on 2019/8/26.
//  Copyright © 2019 zqyou. All rights reserved.
//

import UIKit

extension String {

    /// range转换为NSRange
    func nsRange(from range: Range<String.Index>) -> NSRange {
        return NSRange(range, in: self)
    }

}
