//
//  MBBanner.swift
//  MBMusic
//
//  Created by Maxb on 2020/5/17.
//  Copyright © 2020 Maxb. All rights reserved.
//

import Foundation
import ObjectMapper

class MBBanner: Mappable {
    var id: Int?
    var pic: String?
    var url: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        pic <- map["pic"]
        url <- map["url"]
    }
}
