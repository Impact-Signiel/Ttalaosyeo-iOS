import Foundation
import Moya

public enum RecommendAPI {
    case fetchRecommend(id: Int)
    case postRecommend(resultList: [String])
}

extension RecommendAPI: TargetType {
    
    public var baseURL: URL {
        return URL(string: "https://xx.nekos.me/api/trips")!
    }

    public var path: String {
        switch self {
        case let .fetchRecommend(id):
            return "/recommends/\(id)"
        case .postRecommend:
            return "/recommends"
        }
    }

    public var method: Moya.Method {
        switch self {
        case .postRecommend:
            return .post
        case .fetchRecommend:
            return .get
        }
    }

    public var task: Task {
        switch self {
        case let .postRecommend(resultList):
            return .requestParameters(parameters:
                                        [
                                            "queries": resultList
                                        ], encoding: URLEncoding.queryString)
        default:
            return .requestPlain
        }
    }

    public var headers: [String: String]? {
        return [:]
    }

}
