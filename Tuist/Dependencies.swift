import ProjectDescription
import ProjectDescriptionHelpers

let dependencies = Dependencies(
    swiftPackageManager: .init(
        [
            .remote(
                url: "https://github.com/ReactiveX/RxSwift.git",
                requirement: .upToNextMinor(from: "6.5.0")
            ),
            .remote(
                url: "https://github.com/RxSwiftCommunity/RxFlow.git",
                requirement: .upToNextMajor(from: "2.13.0")
            ),
            .remote(
                url: "https://github.com/Moya/Moya.git",
                requirement: .upToNextMajor(from: "15.0.0")
            ),
            .remote(
                url: "https://github.com/onevcat/Kingfisher",
                requirement: .upToNextMajor(from: "7.0.0")
            ),
            .remote(
                url: "https://github.com/evgenyneu/keychain-swift",
                requirement: .upToNextMajor(from: "20.0.0")
            )
        ]
    ),
    platforms: [.iOS]
)
