import Foundation

public enum ResponseStatusCode: Int {
    case getSuccess = 200
    case deleteSuccess = 204
    case postSuccess = 201
    case wrongRq = 400
    case tokenError = 401
    case notFound = 404
    case conflict = 409
    case fault = 0
}
