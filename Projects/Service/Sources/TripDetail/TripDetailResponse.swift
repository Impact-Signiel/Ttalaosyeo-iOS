// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let tripDetailResponse = try? JSONDecoder().decode(TripDetailResponse.self, from: jsonData)

import Foundation

// MARK: - TripDetailResponse
public struct TripDetailResponse: Codable {
    public let status: String
    public let data: TripDetailDataResponse
}

// MARK: - DataClass
public struct TripDetailDataResponse: Codable {
    public let id: Int
    public let author: TripDetailAuthorResponse
    public let title, content, location: String
    public let personnel, price, nights, days: Int
    public let dayNights, createdAt: String
    public let tags: [TripDetailTagResponse]
    public let thumbnail: String
    public let schedules: [TripDetailScheduleResponse]
}

// MARK: - Author
public struct TripDetailAuthorResponse: Codable {
    public let id: Int
    public let nickname: String
}

// MARK: - Schedule
public struct TripDetailScheduleResponse: Codable {
    public let day: Int
    public let title, description: String
    public let locations: [Location]
}

// MARK: - Location
public struct Location: Codable {
    public let location, title, description: String
    public let images: [String]
}

// MARK: - Tag
public struct TripDetailTagResponse: Codable {
    public let key, value: String
}
