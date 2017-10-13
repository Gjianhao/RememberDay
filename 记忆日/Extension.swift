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
}
