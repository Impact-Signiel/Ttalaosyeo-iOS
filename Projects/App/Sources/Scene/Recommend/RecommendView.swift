import SwiftUI

struct RecommendView: View {
    @State var isNavigation = false
    var body: some View {
        ZStack{
            VStack(alignment: .leading, spacing: 0) {
                Text("투어 추천을 위해 몇가지 질문이 \n있을 예정이에요.")
                    .TtalaosyeoFont(.title)
                    .padding(.top, 78)
                    .padding(.leading,18)
                Text("계속하려면 아래 버튼을 눌러주세요.")
                    .TtalaosyeoFont(.text)
                    .padding(.top, 16)
                    .padding(.leading,18)
                ZStack{
                    TtalaosyeoAsset.Images.mapsvg
                        .swiftUIImage
                        .resizable()
                        .frame(width: 130,height: 180)
                        .padding(.horizontal,106)
                        .padding(.top,54)
                }
                
                Button{
                    self.isNavigation = true
                }label: {
                    Text("계속하기")
                        .foregroundStyle(.white)
                        .TtalaosyeoFont(.titleSmall)
                        .padding(.horizontal,153)
                        .padding(.top,180)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 337,height: 64)
                                .foregroundStyle(.black)
                                .padding(.top,180)
                            )
                }
                
                    
                
                Spacer()
            }
        }
        .navigate(to: Recommend2View(), when: $isNavigation)
    }
}

#Preview {
    RecommendView()
}
