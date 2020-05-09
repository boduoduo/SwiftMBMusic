//
//  MBNavigationView.swift
//  MBMusic
//
//  Created by Maxb on 2020/5/9.
//  Copyright © 2020 Maxb. All rights reserved.
//

import Foundation
import UIKit

class MBNavigationView: UIView {
    
    let themes = ["d43c33", "22D59C", "333333"]
    
    static func navigation() -> MBNavigationView {
        return MBNavigationView.init(frame: CGRect(x: 0.00, y: 0.00, width: Double(SCREEN_WIDTH), height: NAV_HEIGHT))
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setupSubViews() {
        self.backgroundColor = UIColor.mb_color(hexString: "d43c33")
        let logoBtn = UIButton.init(type: .custom)
        logoBtn.frame = CGRect(x: 0, y: 12 + STATEBAR_HEIGHT, width: 28, height: 28)
        logoBtn.setImage(UIImage.init(named: "logo_163"), for: .normal)
        self.addSubview(logoBtn)
        
        let accountBtn = UIButton.init(type: .custom)
        accountBtn.frame = CGRect(x: Double(SCREEN_WIDTH - 28.0), y: 12 + STATEBAR_HEIGHT, width: 28.0, height: 28.0)
        accountBtn.setImage(UIImage.init(named: "account_163"), for: .normal)
        self.addSubview(accountBtn)
        
        let titleLab = UILabel.init(frame: CGRect(x: 40.0, y: STATEBAR_HEIGHT, width: Double(SCREEN_WIDTH-80.0), height: 44.0))
        titleLab.text = "网易云音乐"
        titleLab.font = UIFont.systemFont(ofSize: 14)
        titleLab.textColor = UIColor.white
        titleLab.textAlignment = .center
        self.addSubview(titleLab)
        titleLab.isUserInteractionEnabled = true
        titleLab.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(changeThemeColor)))
    }
//    $background-color-theme: #d43c33;//背景主题颜色默认(网易红)
//    $background-color-theme1: rgba(34,213,156,1);//背景主题颜色1(QQ绿)
//    $background-color-theme2: #333;//背景主题颜色2(夜间模式)
    @objc func changeThemeColor() {
        switch self.backgroundColor. {
        case <#pattern#>:
            <#code#>
        default:
            <#code#>
        }
        self.backgroundColor = UIColor.mb_color(hexString: "")
    }
}
