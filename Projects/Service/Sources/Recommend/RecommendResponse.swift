import Foundation

// MARK: - RecommendResponse
public struct FetchRecommendResponse: Codable {
    public let status: String
    public let data: FetchRecommendDataResponse
}

// MARK: - DataClass
public struct FetchRecommendDataResponse: Codable {
    public let id: Int
    public let title: String
    public let items: [FetchRecommendItemResponse]
    public let hasImage: Bool
}

// MARK: - Item
public struct FetchRecommendItemResponse: Codable, Equatable {
    public let text: String
    public  let image: String?
    public let next: Int?
    public let query: String
}
// MARK: - RecommendResponse
public struct PostRecommendResponse: Codable {
    public let status: String
    public let data: PostRecommendDataResponse
}

// MARK: - DataClass
public struct PostRecommendDataResponse: Codable {
    public let trips: [PostRecommendTripResponse]
}

// MARK: - Trip
public struct PostRecommendTripResponse: Codable, Equatable {
    public let id: Int
    public let author: PostRecommendTriAuthorResponse
    public let title: String
    public let price, nights, days: Int
    public let dayNights: String
    public let tags: [PostRecommendTagsResponse]
    public let thumbnail: URL

    enum CodingKeys: String, CodingKey {
        case id
        case author, title, price, nights, days, dayNights, tags, thumbnail
    }
}
public struct PostRecommendTriAuthorResponse: Codable, Equatable {
    public let id: Int
    public let nickname: String
}


// MARK: - Tag
public struct PostRecommendTagsResponse: Codable, Equatable {
    public let key, value: String
}
