//
//  MBRecommendProvider.swift
//  MBMusic
//
//  Created by Maxb on 2020/5/17.
//  Copyright © 2020 Maxb. All rights reserved.
//

import Foundation
import Moya

public enum MBRecommendAPI {
    // 获取Banner数据
    case getMyBanner
    // 获取推荐歌单
    case getPersonalized
    // 获取最新专辑
    case getNewestAlbum
    // 获取最新歌单
    case getNewestSong
}

extension MBRecommendAPI: TargetType {
    public var baseURL: URL {
        return URL(string: MB_BASE_URL)!
    }
    
    public var path: String {
        switch self {
        case .getMyBanner:
            return "/banner"
        case .getPersonalized:
            return "/personalized"
        case .getNewestAlbum:
            return "/album/newest"
        case .getNewestSong:
            return "/personalized/newsong"
        }
    }
    
    public var method: Moya.Method {
        return .get
    }
    
    public var sampleData: Data {
        return "".data(using: String.Encoding.utf8)!
    }
    
    public var task: Task {
        switch self {
        case .getMyBanner:
            return .requestParameters(parameters: ["type" : 2], encoding: URLEncoding.default)
        case .getPersonalized:
            return .requestParameters(parameters: ["limit" : 12], encoding: URLEncoding.default)
        default:
            return .requestPlain
        }
        
    }
    
    //是否执行Alamofire验证
    public var validate: Bool {
        return false
    }
    
    public var headers: [String : String]? {
        switch self {
        default:
            return ["Content-type": "application/json"]
        }
    }
}
