//
//  MBTabBarViewController.swift
//  MBMusic
//
//  Created by Maxb on 2020/4/27.
//  Copyright © 2020 Maxb. All rights reserved.
//

import UIKit

class MBTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configTabBarItems()
    }
    
    func configTabBarItems() {
        let _ = configTabBarItem(title: "推荐",
                                 imageName: "gt_tab_asset",
                                 selectedImage: "gt_tab_asset_press",
                                 viewController: MBRecommendViewController.init())
        let _ = configTabBarItem(title: "歌手",
                                 imageName: "gt_tab_invest",
                                 selectedImage: "gt_tab_invest_press",
                                 viewController: MBSingerViewController.init())
        let _ = configTabBarItem(title: "排行",
                                 imageName: "gt_tab_faxian",
                                 selectedImage: "gt_tab_faxian_press",
                                 viewController: MBRankViewController.init())
        let _ = configTabBarItem(title: "搜索",
                                 imageName: "gt_tab_me",
                                 selectedImage: "gt_tab_me_press",
                                 viewController: MBSearchViewController.init())
    }

    func configTabBarItem(title: String, imageName: String, selectedImage: String, viewController: UIViewController) -> MBNavigationController {
        let nav = MBNavigationController.init(rootViewController: viewController)
        nav.tabBarItem = UITabBarItem.init(title: title,
                                           image: UIImage.init(named: imageName)?.withRenderingMode(.alwaysOriginal),
                                           selectedImage: UIImage.init(named: selectedImage)?.withRenderingMode(.alwaysOriginal))
        let textTitleOptions = [kCTForegroundColorAttributeName: UIColor.mb_color(hexString: "9999"), kCTFontAttributeName: UIFont.systemFont(ofSize: 10)]
        let textTitleOptionsSelected = [kCTForegroundColorAttributeName: UIColor.mb_color(hexString: "057ADC"), kCTFontAttributeName: UIFont.systemFont(ofSize: 10)]
        nav.tabBarItem.setTitleTextAttributes(textTitleOptions as [NSAttributedString.Key : Any], for: .normal)
        nav.tabBarItem.setTitleTextAttributes(textTitleOptionsSelected as [NSAttributedString.Key : Any], for: .selected)
        nav.tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 2, vertical: -3)
        self.addChild(nav)
        return nav
    }
    
}
