import Foundation

// MARK: - RecommendResponse
public struct RecommendResponse: Codable {
    public let status: String
    public let data: RecommendDataResponse
}

// MARK: - DataClass
public struct RecommendDataResponse: Codable {
    public let id: Int
    public let title: String
    public let items: [RecommendItemResponse]
    public let hasImage: Bool
}

// MARK: - Item
public struct RecommendItemResponse: Codable {
    public let text: String
    public  let image: String?
    public let next: Int?
    public let query: String
}
