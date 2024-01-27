import Foundation
import RxSwift
import RxCocoa
import Moya
import RxMoya

class BaseService<API: TargetType> {
    let provider = MoyaProvider<API>(plugins: [MoyaLoggingPlugin()])

    func setNetworkError(_ error: Error) -> ResponseStatusCode {
            print(error)
            print(error.localizedDescription)
            guard let status = (error as? MoyaError)?.response?.statusCode else { return (.fault) }
            return (ResponseStatusCode(rawValue: status) ?? .fault)
    }

}
