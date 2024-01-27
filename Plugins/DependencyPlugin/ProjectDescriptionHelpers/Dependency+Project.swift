import ProjectDescription

public extension TargetDependency {
    struct Projects {}
}

public extension TargetDependency.Projects {
    static let thirdPartyLib = TargetDependency.project(
        target: "ThirdPartyLib",
        path: .relativeToRoot("Projects/ThirdPartyLib")
    )
    static let service = TargetDependency.project(
        target: "Service",
        path: .relativeToRoot("Projects/Service")
    )
}
