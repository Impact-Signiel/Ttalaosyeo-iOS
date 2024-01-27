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
    let cards: [HomeCardsResponse]
}

// MARK: - Banner
public struct HomeBannerResponse: Codable, Equatable {
    public let title, description, query: String
    public let image: URL
}

// MARK: - Section
public struct HomeSectionResponse: Codable {
    public let label, image, query: String
    public let trips: [HomeTripResponse]
}

// MARK: - Trip
public struct HomeTripResponse: Codable, Equatable {
    public let id: Int
    public let author: HomeAuthorResponse
    public let title: String
    public let price, nights, days: Int
    public let dayNights: String
    public let tags: [HomeTagsResponse]
    public let thumbnail: URL
}

// MARK: - Tags
public struct HomeTagsResponse: Codable, Equatable {
    public let key, value: String
}

public struct HomeAuthorResponse: Codable, Equatable {
    let id: Int
    let nickname: String
}

public struct HomeCardsResponse: Codable {
    public let title: String
    public let image: URL
    public let query: String
    public let categories: [String]
}
