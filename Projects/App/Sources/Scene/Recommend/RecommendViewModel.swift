import SwiftUI
import Service
import RxSwift
final class RecommendViewModel: ObservableObject {
    let recommendService = RecommendService()
    let disposeBag = DisposeBag()
    @Published var recommendItemList: [RecommendItemResponse] = []
    func onAppear() {
        recommendService.fetchRecommend(1)
            .asObservable()
            .subscribe(onNext: { [weak self] in
                self?.recommendItemList = $0.0!.items
            }).disposed(by: disposeBag)
    }
}
