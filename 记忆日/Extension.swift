//
//  Extension.swift
//  记忆日
//
//  Created by gjh on 2017/9/26.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

import UIKit

// 屏幕宽度
let SCREEN_WIDTH = UIScreen.main.bounds.size.width
// 屏幕高度
let SCREEN_HEIGHT = UIScreen.main.bounds.size.height

extension UIView {

    public var x: CGFloat {
        get {
            return self.frame.origin.x
        }
        set {
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }
    
    public var y: CGFloat {
        get {
            return self.frame.origin.y
        }
        set {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }

    public var width: CGFloat {
        get {
            return self.frame.size.width
        }
        set {
            var frame = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
    }
    
    public var height: CGFloat {
        get {
            return self.frame.size.height
        }
        set {
            var frame = self.frame
            frame.size.height = newValue
            self.frame = frame            
        }
    }
    /* 下 */
    public var bottom: CGFloat {
        get {
            return self.frame.origin.y + self.frame.size.height
        }
        set {
            var frame = self.frame
            frame.origin.y = newValue - self.frame.size.height
            self.frame = frame
        }
    }
    // 右
    public var right: CGFloat {
        get {
            return self.frame.origin.x + self.frame.size.width
        }
        set {
            var frame = self.frame
            frame.origin.x = newValue - self.frame.size.width
            self.frame = frame
        }
    }
    // 尺寸
    public var size: CGSize {
        get {
            return self.frame.size
        }
        set {
            var frame = self.frame
            frame.size = newValue
            self.frame = frame
        }
    }
    // 竖直中心对齐
    public var centerX: CGFloat {
        get {
            return self.center.x
        }
        set {
            var center = self.center
            center.x = newValue
            self.center = center
        }
    }
    // 水平中心对齐
    public var centerY: CGFloat {
        get {
            return self.center.y
        }
        set {
            var center = self.center
            center.y = newValue
            self.center = center
        }
    }
}

extension UIColor {
    class var Main: UIColor {
        return UIColor(red: 74/255, green: 163/255, blue: 243/255, alpha: 1.0)
    }
    class var Gray: UIColor {
        return UIColor(red: 242/255, green: 243/255, blue: 248/255, alpha: 1.0)
    }
    class func RGB_COLOR(r:CGFloat, g:CGFloat, b:CGFloat, alpha:CGFloat) -> UIColor {
        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: alpha)
    }
}
