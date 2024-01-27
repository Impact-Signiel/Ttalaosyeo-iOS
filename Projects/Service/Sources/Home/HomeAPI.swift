import Foundation
import Moya

public enum HomeAPI {
    case landing
}

extension HomeAPI: TargetType {
    
    public var baseURL: URL {
        return URL(string: "https://xx.nekos.me/api")!
    }

    public var path: String {
        switch self {
        case .landing:
            return "/landing"
        }
    }

    public var method: Moya.Method {
        switch self {
        case .landing:
            return .get
        }
    }

    public var task: Task {
        return .requestPlain
    }

    public var headers: [String: String]? {
        switch self {
        case .landing:
            return [:]
        }
    }

}
