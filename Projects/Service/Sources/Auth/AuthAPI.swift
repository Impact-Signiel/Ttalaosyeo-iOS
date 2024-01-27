import Foundation
import Moya

enum AuthAPI {
    case signin
    case signup
}

extension AuthAPI: TargetType {
    
    var baseURL: URL {
        return URL(string: "https://")!
    }

    var path: String {
        return ""
    }

    var method: Moya.Method {
        return .post
    }

    var task: Task {
        return .requestPlain
    }

    var headers: [String: String]? {
        return nil
    }

}
