import Foundation
import Moya

public enum HomeAPI {
    case landing
    case searchTrip(request: SearchRequest)
}

extension HomeAPI: TargetType {
    
    public var baseURL: URL {
        return URL(string: "https://xx.nekos.me/api")!
    }

    public var path: String {
        switch self {
        case .landing:
            return "/landing"
        case .searchTrip:
            return "trips/search"
        }
    }

    public var method: Moya.Method {
        switch self {
        case .landing:
            return .get
        case .searchTrip:
            return .post
        }
    }

    public var task: Task {
        switch self {
        case let .searchTrip(request):
            return .requestJSONEncodable(request)
        default:
            return.requestPlain
        }
    }

    public var headers: [String: String]? {
        return [:]
    }

}
