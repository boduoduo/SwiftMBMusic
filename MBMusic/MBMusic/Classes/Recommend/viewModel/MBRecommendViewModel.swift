//
//  MBRecommendViewModel.swift
//  MBMusic
//
//  Created by Maxb on 2020/5/17.
//  Copyright © 2020 Maxb. All rights reserved.
//

import Foundation
import Moya
import RxSwift
import SwiftyJSON
import ObjectMapper

class MBRecommendViewModel: NSObject {
    
    private let provider = MoyaProvider<MBRecommendAPI>()
    
    func getBanner() -> Observable<[MBBanner]> {
        let observable = Observable<[MBBanner]>.create { [weak self](observer) -> Disposable in
            return (self?.provider.rx.request(.getMyBanner).filterSuccessfulStatusCodes().subscribe(onSuccess: { (response) in
                let json = JSON(response)
                let code = json["code"].int
                var arr: [MBBanner] = []
                if code == 200 {
                    let bannner = json["bannner"].array as! [String: Any]
//                    arr = Mapper<MBBanner>().mapArray(JSONArray: bannner)
                }
                observer.onNext(arr)
                observer.onCompleted()
            }, onError: { (error) in
                observer.onError(error)
            }))!
            
//            return Disposables.create{}
        }
        return observable
    }
}
