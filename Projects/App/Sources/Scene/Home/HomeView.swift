import SwiftUI

struct HomeView: View {
    @State var input: String = ""
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                SearchBar()
                Spacer()
                    .frame(height:24)
                HomeBanner()
                Spacer()
                    .frame(height: 28)
                LocalSelect()
                Spacer()
                    .frame(height: 24)
                Spa()
                Spacer()
                    .frame(height:23)
                Course()
                Spacer()
                    .frame(height:24)
                Flower()
                Spacer()
                    .frame(height:24)
                Hanok()
            }
        }
        .padding(.horizontal, 20)
    }
}

struct SearchBar: View {
    @State var input: String = ""
    var body: some View {
        HStack(alignment: .center, spacing: 0){
            Image(systemName: "magnifyingglass")
                .frame(width:20, height:20)
                .padding(.leading, 12)
                .foregroundColor(.Primary.Primary900)
            TextField("여행을 떠나고 싶은 곳을 검색해보세요.", text: $input)
                .padding(.leading, 12)
                .TtalaosyeoFont(.textSmall, color: .Black.black400)
        }
        .frame(height:48, alignment: .leading)
        .background(Color.Black.black200)
        .cornerRadius(8)
    }
}

struct HomeBanner: View {
    var body: some View {
        @State var num: Int = 0
        VStack(alignment: .leading) {
            ZStack {
                VStack(alignment: .leading) {
                    Image("HomeBanner")
                        .resizable()
                    Spacer()
                        .frame(height: 12)
                    // 사진 위 버튼
                    //            Button {
                    //                num += 1
                    //            } label: {
                    //
                    //            }
                    Text("따라오셔 선정 탑 5 여행지")
                        .TtalaosyeoFont(.title, color: .Black.black800)
                    Spacer()
                        .frame(height:4)
                    // semibold
                    Text("항공, 투어, 숙소가 포함된 여행을 경험해보세요")
                        .TtalaosyeoFont(.textSmall, color: .Black.black800)
                    // light
                }
            }
        }
    }
}

struct LocalSelect: View {
    let columns = [GridItem(.adaptive(minimum: 72, maximum: 100))]
    let local: [(Image, String)] = [
        (.init("Seoul") ,"수도권"),
        (.init("Jeju") ,"제주"),
        (.init("Jeonla") ,"전라"),
        (.init("Chungcheong"), "충청"),
        (.init("Gyeongsang"), "경상"),
        (.init("Gangwon"), "강원")
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, alignment: .leading, spacing: 15) {
            ForEach(local, id: \.1) { data in
                ZStack {
                    data.0
                        .resizable()
                    Text(data.1)
                        .TtalaosyeoFont(.text, color: .white)
                }
            }
        }
    }
}

struct Spa: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image("Spa")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
            VStack(alignment: .trailing) {
                Image("plus")
                    .padding(8)
                    .background(Color.Black.black800)
                    .cornerRadius(999)
                Spacer()
                VStack(alignment: .leading) {
                    HStack {
                        Text("겨울")
                            .TtalaosyeoFont(.textSmall, color: .Black.black100)
                            .frame(width:56, height:32)
                            .background(Color.Primary.Primary900)
                            .cornerRadius(999)
                        Text("온천")
                            .TtalaosyeoFont(.textSmall, color: .Black.black100)
                            .frame(width:56, height:32)
                            .background(Color.Primary.Primary900)
                            .cornerRadius(999)
                    }
                    Spacer()
                        .frame(height:8)
                    Text("뼈 시리도록 추운 겨울에 따뜻한 온천은 어때요?")
                        .TtalaosyeoFont(.title, color: .Black.black100)
                }
                .padding(.bottom, 4)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 20)
        }
    }
}

struct Course: View {
    let nums = [GridItem(.flexible(), spacing: 15),
                GridItem(.flexible(), spacing: 15)]
    let course: [(Image, String)] = [
        (.init("course"), "[역대급 특가] 불교의 뿌리를 찾아서, 3박 4일"),
        (.init("course_animal"), "귀여운 동물들과 함계 1박 2일을! 강원도 양양 투어"),
        (.init("course_busan"), "[부산 시그니엘]부산하면 떠오르는 건 바로 바다! 바다와 함께"),
        (.init("course_flower"), "눈 녹으면 열리는 분홍빛의 축제 벚꽃 성지 창원에서 꽃놀이 어떠세요?")
    ]
    
    var body: some View {
        LazyVGrid(columns: nums, alignment: .center, spacing: 15) {
            ForEach(course, id: \.1) { a in
                VStack(alignment: .leading) {
                    a.0
                        .resizable()
                    Text(a.1)
                        .TtalaosyeoFont(.textSmall, color: .Black.black800)
                    Spacer()
                }
            }
        }
    }
}

struct Flower: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image("flower")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
            VStack(alignment: .trailing) {
                Image("plus")
                    .padding(8)
                    .background(Color.Black.black800)
                    .cornerRadius(999)
                Spacer()
                VStack(alignment: .leading) {
                    HStack {
                        Text("봄")
                            .TtalaosyeoFont(.textSmall, color: .Black.black100)
                            .frame(width:56, height:32)
                            .background(Color.Primary.Primary900)
                            .cornerRadius(999)
                        Text("개화")
                            .TtalaosyeoFont(.textSmall, color: .Black.black100)
                            .frame(width:56, height:32)
                            .background(Color.Primary.Primary900)
                            .cornerRadius(999)
                    }
                    Spacer()
                        .frame(height:8)
                    Text("차디찬 겨울 바람을 이겨낸 꽃들의 향연을 만나보세요")
                        .TtalaosyeoFont(.title, color: .Black.black100)
                }
                .padding(.bottom, 4)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 20)
        }
    }
}

struct Hanok: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image("Hanok")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
            VStack(alignment: .trailing) {
                Image("plus")
                    .padding(8)
                    .background(Color.Black.black800)
                    .cornerRadius(999)
                Spacer()
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("사계절")
                            .TtalaosyeoFont(.textSmall, color: .Black.black100)
                            .frame(width:56, height:32)
                            .background(Color.Primary.Primary900)
                            .cornerRadius(999)
                        Text("한옥")
                            .TtalaosyeoFont(.textSmall, color: .Black.black100)
                            .frame(width:56, height:32)
                            .background(Color.Primary.Primary900)
                            .cornerRadius(999)
                        Text("궁궐")
                            .TtalaosyeoFont(.textSmall, color: .Black.black100)
                            .frame(width:56, height:32)
                            .background(Color.Primary.Primary900)
                            .cornerRadius(999)
                    }
                    Spacer()
                        .frame(height:8)
                    Text("우리들의 근본을 찾아가는 여행")
                        .TtalaosyeoFont(.title, color: .Black.black100)
                }
                .padding(.bottom, 4)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 20)
        }
    }
}

#Preview {
    MainTabView()
}
