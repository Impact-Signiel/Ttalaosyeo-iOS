import Foundation
import Moya

public enum TripDetailAPI {
    case fetchTripDetail(id: Int)
}

extension TripDetailAPI: TargetType {
    
    public var baseURL: URL {
        return URL(string: "https://xx.nekos.me/api/trips")!
    }

    public var path: String {
        switch self {
        case let .fetchTripDetail(id):
            return "\(id)"
        }
    }

    public var method: Moya.Method {
        switch self {
        case .fetchTripDetail:
            return .get
        }
    }

    public var task: Task {
        switch self {
        default:
            return .requestPlain
        }
    }

    public var headers: [String: String]? {
        return [:]
    }

}
