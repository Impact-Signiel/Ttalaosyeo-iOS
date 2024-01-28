import SwiftUI
import Kingfisher

struct Recommend5View: View {
    @StateObject var viewModel: RecommendViewModel
    @State var isNavigation = false
    @State var id = 0
    
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("추천드릴 투어는 아래와 같아요")
                .TtalaosyeoFont(.title)
                .padding(.top,32)
                .padding(.leading, 18)
                .padding(.bottom, 40)
            
            ScrollView{
                ForEach(viewModel.recommendList, id: \.id) { data in
                    VStack(alignment: .leading, spacing: 8) {
                        KFImage(data.thumbnail)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .cornerRadius(8, corners: .allCorners)
                        Text(data.title)
                            .TtalaosyeoFont(.titleSmall)
                        
                        Text(data.dayNights)
                            .TtalaosyeoFont(.text)
                            .foregroundColor(.Black.black400)
                            .lineLimit(2)
                        ScrollView(.horizontal) {
                            HStack(spacing: 4) {
                                ForEach(data.tags, id: \.key) {
                                    Text($0.value)
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
                        id = data.id
                        isNavigation.toggle()
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 24)
                }
            }
        }
        .onAppear {
            viewModel.postRecommend()
        }
        .navigate(to: TripDetailView(id: id), when: $isNavigation)
        .navigationBarBackButtonHidden()
    }
    
    
}

