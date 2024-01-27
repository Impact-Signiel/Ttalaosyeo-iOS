import SwiftUI
import Service
import RxSwift
final class HomeViewModel: ObservableObject {
    private let homeService = HomeService()
    private let disposeBag = DisposeBag()
    @Published var searchText: String = ""
    @Published var bannerList: [HomeBannerResponse] = []
    @Published var sectionList: [HomeSectionResponse] = []
    @Published var cardList: [HomeCardsResponse] = []
    @Published var searchList: [SearchTripTripsResponse] = []

    func fetchLanding() {
        homeService.landing()
            .asObservable()
            .subscribe(onNext: { [weak self] in
                self?.bannerList = $0.0
                self?.sectionList = $0.1
                self?.cardList = $0.2
            }).disposed(by: disposeBag)
    }
    
    func searchTrip() {
        homeService.searchTrip(
            request:
                .init(
                    page: 1,
                    filter: .init(
                        keyword: searchText,
                        authorId: nil,
                        minDays: nil,
                        maxDays: nil,
                        minPrice: nil,
                        maxPrice: nil,
                        tags: nil
                    )
                )
        )
        .asObservable()
        .subscribe(onNext: { [weak self] in
            self?.searchList = $0.0?.trips ?? []
        }).disposed(by: disposeBag)
    }
}
