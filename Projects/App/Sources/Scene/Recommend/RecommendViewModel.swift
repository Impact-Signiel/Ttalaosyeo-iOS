import SwiftUI
import Service
import RxSwift
final class RecommendViewModel: ObservableObject {
    private let recommendService = RecommendService()
    private let disposeBag = DisposeBag()
    @Published var recommendItemList: [FetchRecommendItemResponse] = []
    @Published var recommendList: [PostRecommendTripResponse] = []

    func fetchRecommend() {
        recommendService.fetchRecommend(1)
            .asObservable()
            .subscribe(onNext: { [weak self] in
                self?.recommendItemList = $0.0!.items
            }).disposed(by: disposeBag)
    }

    func postRecommend() {
        recommendService.postRecommend(["sdf"])
            .asObservable()
            .subscribe(onNext: { [weak self] in
                self?.recommendList = $0.0
            }).disposed(by: disposeBag)
    }
}
