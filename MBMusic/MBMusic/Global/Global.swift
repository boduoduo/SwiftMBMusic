//
//  Global.swift
//  MBMusic
//
//  Created by Maxb on 2020/5/9.
//  Copyright © 2020 Maxb. All rights reserved.
//

import Foundation
import UIKit

// 接口域名
let MB_BASE_URL = "http://127.0.0.1:3000"

let SCREEN_WIDTH = UIScreen.main.bounds.size.width
let SCREEN_HEIGHT = UIScreen.main.bounds.size.height

func isiPhoneX() ->Bool {
    let screenHeight = UIScreen.main.nativeBounds.size.height;
    if screenHeight == 2436 || screenHeight == 1792 || screenHeight == 2688 || screenHeight == 1624 {
        return true
    }
    return false
}

// 导航栏高度
let NAV_HEIGHT = isiPhoneX() ? 88.0 : 64.0
// 状态栏高度
let STATEBAR_HEIGHT = isiPhoneX() ? 44.0 : 20.0

func MB_HEIGHT(height: CGFloat) -> CGFloat {
    return height * SCREEN_WIDTH/375.0
}
