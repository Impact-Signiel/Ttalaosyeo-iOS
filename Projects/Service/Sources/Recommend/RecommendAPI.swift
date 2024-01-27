import Foundation
import Moya

public enum RecommendAPI {
    case fetchRecommend(id: Int)
}

extension RecommendAPI: TargetType {
    
    public var baseURL: URL {
        return URL(string: "https://xx.nekos.me/api/trips")!
    }

    public var path: String {
        switch self {
        case let .fetchRecommend(id):
            return "/recommends/\(id)"
        }
    }

    public var method: Moya.Method {
        switch self {
        case .fetchRecommend:
            return .get
        }
    }

    public var task: Task {
        return .requestPlain
    }

    public var headers: [String: String]? {
        switch self {
        case .fetchRecommend:
            return [:]
        }
    }

}
