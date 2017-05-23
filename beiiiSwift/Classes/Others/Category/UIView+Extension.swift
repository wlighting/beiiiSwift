//
//  Common.swift
//  beiiiSwift
//
//  Created by wlighting on 2017/5/23.
//  Copyright © 2017年 wlighting. All rights reserved.
//

import Foundation
import UIKit


extension UIView {
    
    /// 裁剪 view 的圆角
    func clipRectCorner(direction: UIRectCorner, cornerRadius: CGFloat) {
        let cornerSize = CGSize(width: cornerRadius, height: cornerRadius)
        let maskPath = UIBezierPath(roundedRect: bounds, byRoundingCorners: direction, cornerRadii: cornerSize)
        let maskLayer = CAShapeLayer()
        maskLayer.frame = bounds
        maskLayer.path = maskPath.cgPath
        layer.addSublayer(maskLayer)
        layer.mask = maskLayer
    }
    
    public var wl_x: CGFloat{
        get{
            return self.frame.origin.x
        }
        set{
            var r = self.frame
            r.origin.x = newValue
            self.frame = r
        }
    }

    public var wl_y: CGFloat{
        get{
            return self.frame.origin.y
        }
        set{
            var r = self.frame
            r.origin.y = newValue
            self.frame = r
        }
    }
    /// 右边界的x值
    public var wl_rightX: CGFloat{
        get{
            return self.wl_x + self.wl_width
        }
        set{
            var r = self.frame
            r.origin.x = newValue - frame.size.width
            self.frame = r
        }
    }
    /// 下边界的y值
    public var wl_bottomY: CGFloat{
        get{
            return self.wl_y + self.wl_height
        }
        set{
            var r = self.frame
            r.origin.y = newValue - frame.size.height
            self.frame = r
        }
    }

    public var wl_centerX : CGFloat{
        get{
            return self.center.x
        }
        set{
            self.center = CGPoint(x: newValue, y: self.center.y)
        }
    }

    public var wl_centerY : CGFloat{
        get{
            return self.center.y
        }
        set{
            self.center = CGPoint(x: self.center.x, y: newValue)
        }
    }

    public var wl_width: CGFloat{
        get{
            return self.frame.size.width
        }
        set{
            var r = self.frame
            r.size.width = newValue
            self.frame = r
        }
    }
    public var wl_height: CGFloat{
        get{
            return self.frame.size.height
        }
        set{
            var r = self.frame
            r.size.height = newValue
            self.frame = r
        }
    }


    public var wl_origin: CGPoint{
        get{
            return self.frame.origin
        }
        set{
            self.wl_x = newValue.x
            self.wl_y = newValue.y
        }
    }

    public var wl_size: CGSize{
        get{
            return self.frame.size
        }
        set{
            self.wl_width = newValue.width
            self.wl_height = newValue.height
        }
    }

}
