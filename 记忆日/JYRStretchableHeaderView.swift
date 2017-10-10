//
//  JYRStretchableHeaderView.swift
//  记忆日
//
//  Created by gjh on 2017/9/23.
//  Copyright © 2017年 Gjianhao. All rights reserved.
//

import UIKit

public class JYRStretchableHeaderView: NSObject {
    /* 拉伸的视图 */
    private var stretchView = UIView()
    /* 图片的比例 */
    private var imageRatio : CGFloat
    /* 原始大小 */
    private var originFrame = CGRect()
    
    /* 初始化 */
    public init(stretchableView : UIView) {
        stretchView = stretchableView
        originFrame = stretchableView.frame
        imageRatio = stretchableView.bounds.height / stretchableView.bounds.width
    }
    
    public func scrollViewDidScroll(scrollView : UIScrollView) {
        /* 滚动y的偏移量 */
        let yOffset = scrollView.contentOffset.y
        /* 如果向上滚动 */
        if yOffset > 0 {
            var frame = originFrame
            frame.origin.y = originFrame.origin.y - yOffset
            stretchView.frame = frame
        } else {
            var frame = originFrame
            frame.size.height = originFrame.size.height - yOffset
            frame.size.width = frame.size.height / imageRatio
            frame.origin.x = originFrame.origin.x - (frame.size.width - originFrame.size.width) * 0.5
            stretchView.frame = frame
        }
    }
}
