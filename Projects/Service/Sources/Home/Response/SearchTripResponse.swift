import Foundation

// MARK: - SearchTripResponse
public struct SearchTripResponse: Codable {
    public let status: String
    public let data: SearchTripDataResponse
}

// MARK: - DataClass
public struct SearchTripDataResponse: Codable {
    public let page, limit, total, totalPage: Int
    public let trips: [SearchTripTripsResponse]
}

// MARK: - Trip
public struct SearchTripTripsResponse: Codable {
    public let id: Int
    public let author: SearchTripAuthorResponse
    public let title: String
    public let price, nights, days: Int
    public let dayNights: String
    public let tags: [SearchTripTagResponse]
    public let thumbnail: String
}

// MARK: - Author
public struct SearchTripAuthorResponse: Codable {
    public let id: Int
    public let nickname: String
}

// MARK: - Tag
public struct SearchTripTagResponse: Codable {
    public let key, value: String
}
