import RxSwift
import RxMoya
import Moya

public final class HomeService: BaseService<HomeAPI> {
    public func landing() -> Single<(
        [HomeBannerResponse],
        [HomeSectionResponse],
        [HomeCardsResponse],
        ResponseStatusCode
    )> {
        return provider.rx.request(.landing)
            .filterSuccessfulStatusCodes()
            .map(HomeResponse.self)
            .map { $0.data }
            .map { return ($0.banners, $0.sections, $0.cards, .getSuccess) }
            .catch { error in
                print(error)
                return .just(([], [], [], .getSuccess))
            }
    }

    public func searchTrip(request: SearchRequest) -> Single<(SearchTripDataResponse?, ResponseStatusCode)> {
        return provider.rx.request(.searchTrip(request: request))
            .filterSuccessfulStatusCodes()
            .map(SearchTripResponse.self)
            .map { return ($0.data, .getSuccess) }
            .catch { error in
                print(error)
                return .just((nil, .getSuccess))
            }
    }
}
