import Foundation

// MARK: - HomeResponse
public struct HomeResponse: Codable {
    let status: String
    let data: HomeDataResponse
}

// MARK: - DataClass
public struct HomeDataResponse: Codable {
    let banners: [HomeBannerResponse]
    let sections: [HomeSectionResponse]
}

// MARK: - Banner
public struct HomeBannerResponse: Codable {
    let title, description, image, query: String
}

// MARK: - Section
public struct HomeSectionResponse: Codable {
    let label, image, query: String
    let trips: [HomeTripResponse]
}

// MARK: - Trip
public struct HomeTripResponse: Codable {
    let id, authorID: Int
    let author, title: String
    let price, nights, days: Int
    let dayNights: String
    let tags: [HomeTagsResponse]

    enum CodingKeys: String, CodingKey {
        case id
        case authorID = "authorId"
        case author, title, price, nights, days, dayNights, tags
    }
}

// MARK: - Tags
public struct HomeTagsResponse: Codable {
    let key, value: String
}
