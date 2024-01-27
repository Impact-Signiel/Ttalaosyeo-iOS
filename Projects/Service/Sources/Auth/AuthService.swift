import RxSwift
import RxMoya
import Moya

final class AuthService: BaseService<AuthAPI> {
    func login(_ email: String, _ password: String) -> Single<ResponseStatusCode> {
        return provider.rx.request(.signin)
            .filterSuccessfulStatusCodes()
            .map(TokenResponse.self)
            .map { response -> ResponseStatusCode in
                Token.accessToken = response.accessToken
                Token.refreshToken = response.refreshToken
                return .getSuccess
            }
            .catch {[unowned self] in return .just(setNetworkError($0))}
    }
    func signUp(_ name: String, _ email: String,
                _ password: String, _ phoneNumber: String, _ major: String) -> Single<ResponseStatusCode> {
        return provider.rx.request(.signup)
            .filterSuccessfulStatusCodes()
            .map { _ -> ResponseStatusCode in
                return .getSuccess
            }
    }
}
