import SwiftUI

public struct TtalaosyeoFont: ViewModifier {
    public var style: TtalaosyeoFontStyle

    public func body(content: Content) -> some View {
        return content.font(.custom("Pretendard-\(style.weight.rawValue)", size: style.size))
    }
}

public extension View {
    func TtalaosyeoFont(_ style: TtalaosyeoFontStyle) -> some View {
        self
            .modifier(Ttalaosyeo.TtalaosyeoFont(style: style))
    }

    func TtalaosyeoFont(_ style: TtalaosyeoFontStyle, color: Color) -> some View {
        self
            .TtalaosyeoFont(style)
            .foregroundColor(color)
    }
}
