import ProjectDescription
import ProjectDescriptionHelpers
import DependencyPlugin

let project = Project.makeModule(
    name: "Service",
    product: .framework,
    dependencies: [
        .Projects.thirdPartyLib
    ], 
    sources: .sources
)
