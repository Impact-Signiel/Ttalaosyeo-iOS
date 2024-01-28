import SwiftUI

struct Recommend2View: View {
    @StateObject var viewModel: RecommendViewModel
    @State var isNavigation = false
    @State var currentItem: (String, Int?) = ("", 1)
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Text(viewModel.recommendItemList?.title ?? "")
                .TtalaosyeoFont(.title)
                .padding(.top, 78)
                .padding(.leading,19)
            Spacer()
                .frame(height: 32)
            VStack(spacing: 12) {
                ForEach(viewModel.recommendItemList?.items ?? [], id: \.text) { data in
                    RecommendButtonView(text: data.text, id: data.query, currentItem: currentItem.0)
                        .onTapGesture {
                            currentItem.0 = data.query
                            currentItem.1 = data.next
                        }
                }
            }
            Spacer()


            Button{
                viewModel.queryList.append(currentItem.0)
                if viewModel.index != 4 {
                    viewModel.index = currentItem.1
                } else {
                    self.isNavigation = true
                }
            }label: {
                HStack {
                    Spacer()
                    Text(viewModel.index != 4 ? "다음으로" : "추천하기")
                        .foregroundStyle(.white)
                        .TtalaosyeoFont(.titleSmall)
                    Spacer()
                }
                .padding(.vertical, 20)
                .background(Color.black)
                .cornerRadius(8, corners: .allCorners)
                .padding(.top,70)
            }
            .padding(.horizontal, 16)
            
            Spacer()
        }
        .onChange(of: viewModel.index) { _ in
            viewModel.fetchRecommend()
        }
        .navigate(to: Recommend5View(viewModel: viewModel), when: $isNavigation)
        .navigationBarBackButtonHidden()
        .toNavigationView()
        .eraseToAnyView()
        .onAppear {
            viewModel.fetchRecommend()
        }
    }
}

struct RecommendButtonView: View {
    var text: String
    var id: String
    var currentItem: String
    @State var forty = false
    @State var fifty = false
    @State var sixty = false
    @State var seventy = false
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 8)
                .frame(height: 80)
                .foregroundColor(self.currentItem == self.id ? .Primary.Primary900 : .white)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(self.currentItem == self.id ? .white : .black, lineWidth: 1)
                )
            HStack{
                Circle()
                    .frame(width: 32,height: 32)
                    .foregroundStyle(.white)
                    .overlay(
                        Circle()
                            .frame(width: 16,height: 16)
                            .foregroundStyle(self.currentItem == self.id ? .black : .white)
                        
                    ).overlay(
                        Circle()
                            .stroke(self.currentItem == self.id ? .white : .black, lineWidth: 1)
                    )
                
                Text(text)
                    .TtalaosyeoFont(.title)
                    .foregroundStyle(self.currentItem == self.id ? .white : .black)
                
                Spacer()
            }.padding(.leading,24)
        }
        .padding(.horizontal, 20)
    }
}
