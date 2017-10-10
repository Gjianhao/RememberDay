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
    }

}
