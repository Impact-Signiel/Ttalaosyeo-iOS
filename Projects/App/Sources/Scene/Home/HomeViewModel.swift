import SwiftUI
import Service
import RxSwift
final class HomeViewModel: ObservableObject {
    let homeService = HomeService()
    let disposeBag = DisposeBag()
    @Published var bannerList: [HomeBannerResponse] = []
    @Published var sectionList: [HomeSectionResponse] = []
    func onAppear() {
        homeService.landing()
            .asObservable()
            .subscribe(onNext: { [weak self] in
                self?.bannerList = $0.0
                self?.sectionList = $0.1
            }).disposed(by: disposeBag)
    }
}
