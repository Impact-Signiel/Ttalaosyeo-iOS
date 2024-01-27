import SwiftUI
import Service
import RxSwift
final class HomeViewModel: ObservableObject {
    private let homeService = HomeService()
    private let disposeBag = DisposeBag()
    @Published var bannerList: [HomeBannerResponse] = []
    @Published var sectionList: [HomeSectionResponse] = []
    @Published var searchList: [SearchTripTripsResponse] = []

    func fetchLanding() {
        homeService.landing()
            .asObservable()
            .subscribe(onNext: { [weak self] in
                self?.bannerList = $0.0
                self?.sectionList = $0.1
            }).disposed(by: disposeBag)
    }
    
    func searchTrip() {
        homeService.searchTrip(
            request: .init(
                keyword: "",
                authorId: 0,
                minDays: 0,
                maxDays: 0,
                minPrice: 0,
                maxPrice: 0,
                tags: .init(
                    key: "",
                    value: ""
                )
            )
        )
        .asObservable()
        .subscribe(onNext: { [weak self] in
            self?.searchList = $0.0!.trips
        }).disposed(by: disposeBag)
    }
}
