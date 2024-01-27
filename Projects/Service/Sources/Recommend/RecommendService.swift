import RxSwift
import RxMoya
import Moya

public final class RecommendService: BaseService<RecommendAPI> {
    public func fetchRecommend(_ id: Int) -> Single<(FetchRecommendDataResponse?, ResponseStatusCode)> {
        return provider.rx.request(.fetchRecommend(id: id))
            .filterSuccessfulStatusCodes()
            .map(FetchRecommendResponse.self)
            .map { return ($0.data, .getSuccess) }
            .catch { error in
                print(error)
                return .just((nil, .getSuccess))
            }
    }
    public func postRecommend(_ resultList: [String]) -> Single<([PostRecommendTripResponse], ResponseStatusCode)> {
        return provider.rx.request(.postRecommend(resultList: resultList))
            .filterSuccessfulStatusCodes()
            .map(PostRecommendResponse.self)
            .map { return ($0.data.trips, .getSuccess) }
            .catch { error in
                print(error)
                return .just(([], .getSuccess))
            }
    }
}
