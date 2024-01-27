import SwiftUI

protocol TtalaosyeoFontable {
    var size: CGFloat { get }
    var weight: TtalaosyeoFontWeight { get }
}

public enum TtalaosyeoFontWeight: String {
    case semibold = "SemiBold"
    case light = "Light"
}

public enum TtalaosyeoFontStyle: CGFloat, Hashable, TtalaosyeoFontable {
    case text
    case textSmall
    case title
    case titleSmall
    case caption

    var size: CGFloat {
        switch self {
        case .caption:
            return 12
        case .title:
            return 24
        case .titleSmall:
            return 20
        case .text:
            return 18
        case .textSmall:
            return 14
        }
    }
}

// MARK: - FontableSize
extension TtalaosyeoFontable where Self: RawRepresentable, Self.RawValue == CGFloat {
    var size: CGFloat {
        self.rawValue
    }
}

// MARK: - Button
public extension TtalaosyeoFontStyle {
    var weight: TtalaosyeoFontWeight {
        switch self {
        case .title, .titleSmall:
            return .semibold
        case .caption, .text, .textSmall:
            return .light
        }
    }
}
