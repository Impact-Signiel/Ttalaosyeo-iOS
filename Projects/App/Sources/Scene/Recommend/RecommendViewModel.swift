import SwiftUI
import Service
import RxSwift
final class RecommendViewModel: ObservableObject {
    private let recommendService = RecommendService()
    private let disposeBag = DisposeBag()
    @Published var index: Int? = 1
    @Published var queryList: [String]
    @Published var recommendItemList: FetchRecommendDataResponse? = nil
    @Published var recommendList: [PostRecommendTripResponse] = []

    init(queryList: [String]) {
        self.queryList = queryList
    }

    func fetchRecommend() {
        guard let index else { return }
        recommendService.fetchRecommend(index)
            .asObservable()
            .subscribe(onNext: { [weak self] in
                self?.recommendItemList = $0.0
            }).disposed(by: disposeBag)
    }

    func postRecommend() {
        recommendService.postRecommend(queryList)
            .asObservable()
            .subscribe(onNext: { [weak self] in
                self?.recommendList = $0.0
            }).disposed(by: disposeBag)
    }
}
