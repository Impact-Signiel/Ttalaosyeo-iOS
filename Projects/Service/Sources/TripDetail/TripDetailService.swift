import RxSwift
import RxMoya
import Moya

public final class TripDetailService: BaseService<TripDetailAPI> {
    public func fetchTripDetail(_ id: Int) -> Single<(TripDetailDataResponse?, ResponseStatusCode)> {
        return provider.rx.request(.fetchTripDetail(id: id))
            .filterSuccessfulStatusCodes()
            .map(TripDetailResponse.self)
            .map { return ($0.data, .getSuccess) }
            .catch { error in
                print(error)
                return .just((nil, .getSuccess))
            }
    }
}
