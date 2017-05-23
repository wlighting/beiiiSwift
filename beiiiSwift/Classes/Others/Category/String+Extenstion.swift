//
//  Common.swift
//  beiiiSwift
//
//  Created by wlighting on 2017/5/23.
//  Copyright © 2017年 wlighting. All rights reserved.
//
import Foundation

import UIKit

extension String {
    // MARK:- 获取字符串的CGSize
    func getSize(with fontSize: CGFloat) -> CGSize {
        let str = self as NSString
        
        let size = CGSize(width: UIScreen.main.bounds.width, height: CGFloat(MAXFLOAT))
        return str.boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: fontSize)], context: nil).size
    }
}
