import SwiftUI
import Service
import RxSwift
final class TripDetailViewModel: ObservableObject {
    private let recommendService = TripDetailService()
    private let disposeBag = DisposeBag()
    @Published var data: TripDetailDataResponse = .init(
        id: 0,
        author: .init(id: 0, nickname: ""),
        title: "",
        content: "",
        location: "",
        personnel: 0,
        price: 0,
        nights: 0,
        days: 0,
        dayNights: "",
        createdAt: "",
        tags: [],
        thumbnail: "",
        schedules: []
    )

    func fetchTripDetail(id: Int) {
        recommendService.fetchTripDetail(id)
            .asObservable()
            .subscribe(onNext: { [weak self] in
                self?.data = $0.0!
            }).disposed(by: disposeBag)
    }
}
