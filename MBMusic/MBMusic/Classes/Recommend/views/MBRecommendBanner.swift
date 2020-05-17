//
//  MBRecommendBanner.swift
//  MBMusic
//
//  Created by Maxb on 2020/5/16.
//  Copyright © 2020 Maxb. All rights reserved.
//

import Foundation
import UIKit
import LLCycleScrollView

class MBRecommendBanner: UIView {
    
    open var imageURLStrings : Array<String> = [] {
        didSet {
            if imageURLStrings.count > 0 {
                banner!.imagePaths = imageURLStrings
            }
        }
    }
    var banner: LLCycleScrollView?
    
    open class func banner() -> MBRecommendBanner {
        return MBRecommendBanner.init(frame: CGRect.init(x: 0, y: Int(NAV_HEIGHT), width: Int(SCREEN_WIDTH), height: Int(MB_HEIGHT(height: 300.0))), imageURLs: [])
    }
    
    open class func banner(imageURLs: [String]) -> MBRecommendBanner {
        return MBRecommendBanner.init(frame: CGRect.init(x: 0, y: Int(NAV_HEIGHT), width: Int(SCREEN_WIDTH), height: Int(MB_HEIGHT(height: 300.0))), imageURLs: imageURLs)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        prepareUI()
    }
    
    init(frame: CGRect, imageURLs: [String]) {
        super.init(frame: frame)
        prepareUI()
        imageURLStrings = imageURLs
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        prepareUI()
    }
    
    func prepareUI() {
        let banner = LLCycleScrollView.llCycleScrollViewWithFrame(self.bounds)
        // 是否自动滚动
        banner.autoScroll = true
        // 是否无限循环，此属性修改了就不存在轮播的意义了 😄
        banner.infiniteLoop = true
        // 滚动间隔时间(默认为2秒)
        banner.autoScrollTimeInterval = 3.0
        // 等待数据状态显示的占位图
//        bannerDemo.placeHolderImage =
        // 如果没有数据的时候，使用的封面图
//        bannerDemo.coverImage = #UIImage
        // 设置图片显示方式=UIImageView的ContentMode
        banner.imageViewContentMode = .scaleToFill
        // 设置滚动方向（ vertical || horizontal ）
        banner.scrollDirection = .vertical
        // 设置当前PageControl的样式 (.none, .system, .fill, .pill, .snake)
        banner.customPageControlStyle = .snake
        // 非.system的状态下，设置PageControl的tintColor
        banner.customPageControlInActiveTintColor = UIColor.red
        // 设置.system系统的UIPageControl当前显示的颜色
        banner.pageControlCurrentPageColor = UIColor.white
        // 非.system的状态下，设置PageControl的间距(默认为8.0)
        banner.customPageControlIndicatorPadding = 8.0
        // 设置PageControl的位置 (.left, .right 默认为.center)
        banner.pageControlPosition = .center
        // 背景色
        banner.collectionViewBackgroundColor = UIColor.white
        // 添加到view
        self.addSubview(banner)
        self.banner = banner
    }
}
