import Foundation

public struct SearchTripRequest: Codable {
    public let keyword: String?
    public let authorId, minDays, maxDays, minPrice, maxPrice: Int?
    public let tags: SearchTripTagsRequest?

    public init(keyword: String?, authorId: Int?, minDays: Int?, maxDays: Int?, minPrice: Int?, maxPrice: Int?, tags: SearchTripTagsRequest?) {
        self.keyword = keyword
        self.authorId = authorId
        self.minDays = minDays
        self.maxDays = maxDays
        self.minPrice = minPrice
        self.maxPrice = maxPrice
        self.tags = tags
    }
}

public struct SearchTripTagsRequest: Codable {
    public let key, value: String
    public init(key: String, value: String) {
        self.key = key
        self.value = value
    }
}
