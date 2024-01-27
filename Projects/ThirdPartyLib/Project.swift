import ProjectDescription
import ProjectDescriptionHelpers
import DependencyPlugin

let project = Project.makeModule(
    name: "ThirdPartyLib",
    product: .framework,
    dependencies: [
        .SPM.RxCocoa,
        .SPM.RxSwift,
        .SPM.Moya,
        .SPM.RxMoya,
        .SPM.kingfisher,
        .SPM.KeychainSwift
    ], sources: []
)
