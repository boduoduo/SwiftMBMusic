//
//  MBRecommendViewController.swift
//  MBMusic
//
//  Created by Maxb on 2020/4/27.
//  Copyright © 2020 Maxb. All rights reserved.
//

import UIKit
import Moya
import RxSwift
import RxCocoa

class MBRecommendViewController: MBBaseViewController {

    var bannerImages: [String] = []
    var banner: MBRecommendBanner?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        prepareUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        requestNetworkData()
    }
    
    func prepareUI() {
        let navigationView = MBNavigationView.navigation()
        self.view.addSubview(navigationView)
        let banner = MBRecommendBanner.banner(imageURLs: [])
        self.view.addSubview(banner)
        self.banner = banner
    }
    
    func requestNetworkData() {
        let provider = MoyaProvider<MBRecommendAPI>()
        let _ = provider.rx.request(.getMyBanner)
            .filterSuccessfulStatusCodes()
            .mapJSON()
            .subscribe(onSuccess: { (response) in
                print(response)
            })
    }
    
    func bindViewModel() {
        
    }
}
