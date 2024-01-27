import RxSwift
import RxMoya
import Moya

public final class HomeService: BaseService<HomeAPI> {
    public func landing() -> Single<([HomeBannerResponse], [HomeSectionResponse], ResponseStatusCode)> {
        return provider.rx.request(.landing)
            .filterSuccessfulStatusCodes()
            .map(HomeResponse.self)
            .map { return ($0.data.banners, $0.data.sections, .getSuccess) }
            .catch { error in
                print(error)
                return .just(([],[], .getSuccess))
            }
    }
}
