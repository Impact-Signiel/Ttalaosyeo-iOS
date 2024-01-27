import SwiftUI

struct Recommend5View: View {
    @State var isNavigation = false
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("추천드릴 투어는 아래와 같아요")
                .TtalaosyeoFont(.title)
                .padding(.top,32)
                .padding(.leading, 18)
                .padding(.bottom, 40)
            
            
            ScrollView{
                ForEach(1...3, id: \.self) { _ in
                    VStack(alignment: .leading, spacing: 8) {
                        ZStack(alignment: .topTrailing) {
                            TtalaosyeoAsset.Images.photo1svg
                                .swiftUIImage
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                            
                            TtalaosyeoAsset.Images.plusButton
                                .swiftUIImage
                                .resizable()
                                .frame(width: 32, height: 32)
                                .padding([.top, .trailing], 16)
                            
                        }
                        Text("한국의 괌 제주도로 떠나는 역대급 경치 투어")
                            .TtalaosyeoFont(.titleSmall)
                        
                        Text("제주도에서 태어나 결혼까지한 제주도 토박이의 숨겨진 경치 명소들을 알려드립니다!")
                            .TtalaosyeoFont(.text)
                            .foregroundColor(.Black.black400)
                            .lineLimit(2)
                        ScrollView(.horizontal) {
                            HStack(spacing: 4) {
                                ForEach(1...3, id: \.self) { _ in
                                    Text("1시")
                                        .TtalaosyeoFont(.textSmall, color: .Black.black100)
                                        .padding(.horizontal,16)
                                        .padding(.vertical, 4)
                                        .background(Color.Primary.Primary900)
                                        .cornerRadius(999, corners: .allCorners)
                                }
                                Spacer()
                            }
                        }
                    }
                    .onTapGesture {
                        isNavigation.toggle()
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 24)
                }
            }
        }
        .navigate(to: Recommend6View(), when: $isNavigation)
        .navigationBarBackButtonHidden()
    }
    
    
}




#Preview {
    Recommend5View()
}
