import RxSwift
import RxMoya
import Moya

public final class RecommendService: BaseService<RecommendAPI> {
    public func fetchRecommend(_ id: Int) -> Single<(RecommendDataResponse?, ResponseStatusCode)> {
        return provider.rx.request(.fetchRecommend(id: id))
            .filterSuccessfulStatusCodes()
            .map(RecommendResponse.self)
            .map { return ($0.data, .getSuccess) }
            .catch { error in
                print(error)
                return .just((nil, .getSuccess))
            }
    }
}
