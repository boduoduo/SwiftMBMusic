//
//  MBRecommendViewController.swift
//  MBMusic
//
//  Created by Maxb on 2020/4/27.
//  Copyright © 2020 Maxb. All rights reserved.
//

import UIKit

class MBRecommendViewController: MBBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        prepareUI()
    }
    
    func prepareUI() {
        let navigationView = MBNavigationView.navigation()
        self.view.addSubview(navigationView)
        let banner = MBRecommendBanner.banner(imageURLs: [])
        self.view.addSubview(banner)
    }
}
