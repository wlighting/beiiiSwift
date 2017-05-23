//
//  WLSpaceSizeTools.swift
//  beiiiSwift
//
//  Created by wlighting on 2017/5/23.
//  Copyright © 2017年 wlighting. All rights reserved.
//

import UIKit


class WLSpaceSizeTools: NSObject {
    static let shareInstance: WLSpaceSizeTools = {
        let tools = WLSpaceSizeTools()
        return tools
    }()
}


// MARK:- 获取磁盘空闲空间大小
extension WLSpaceSizeTools {
    func WLDiskSpaceFree() -> Int {
        //    var error: Error = nil
        guard let attrs = try? FileManager.default.attributesOfFileSystem(forPath: NSHomeDirectory()) else {
            return -1
        }
        guard let space = attrs.index(forKey: .systemFreeSize) else {
            return -1
        }
        guard let freeSpace = attrs.values[space] as? Int else {
            return -1
        }
        return freeSpace
    }
}

// MARK:- 获取空间大小对应的文字说明
extension WLSpaceSizeTools {
    func WLDiskSpaceFreeString(size: Int) -> String {
        let size:CGFloat      = CGFloat(size)
        let sizeUnit: CGFloat = 1024.0
        if size < sizeUnit { // B
            return String(format: "%lldB", size)
        } else if size < sizeUnit * sizeUnit {  // KB
            return String(format: "%.1fKB", size / sizeUnit)
        } else if size < sizeUnit * sizeUnit * sizeUnit {   // MB
            return String(format: "%.1fMB", size / (sizeUnit * sizeUnit))
        } else{ // GB
            return String(format: "%.1fG", size / (sizeUnit * sizeUnit * sizeUnit))
        }
    }
}
