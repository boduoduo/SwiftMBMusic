//
//  MBRequestLoadingPlugin.swift
//  MBMusic
//
//  Created by Maxb on 2020/5/17.
//  Copyright © 2020 Maxb. All rights reserved.
//

import Foundation
import Moya

class RequestLoadingPlugin: PluginType {
    
    func prepare(_ request: URLRequest, target: TargetType) -> URLRequest {
        var mRequest = request
        mRequest.timeoutInterval = 20
        return mRequest
    }
    
//    func didReceive(_ result: Result<Response, MoyaError>, target: TargetType) {
//
//    }
}
