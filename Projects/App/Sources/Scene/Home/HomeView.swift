import SwiftUI
import Service
import Kingfisher

struct HomeView: View {
    @State var isSearching: Bool = false
    @StateObject var viewModel = HomeViewModel()
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 24) {
                SearchBar(input: $viewModel.searchText)
                    .onChange(of: viewModel.searchText) { _ in
                        if viewModel.searchText.isEmpty {
                            isSearching = false
                        } else {
                            isSearching = true
                            self.viewModel.searchTrip()
                        }
                    }
                if isSearching {
                    
                } else {
                    HomeBanner(
                        bannerList: viewModel.bannerList
                    )
                    LocalSelect()
                    ForEach(viewModel.sectionList, id: \.label) {
                        Course(
                            title: $0.label, trips: $0.trips
                        )
                    }
                    ForEach(viewModel.cardList, id: \.title) {
                        Card(
                            imageUrl: $0.image,
                            tags: $0.categories,
                            title: $0.title
                        )
                    }
                }
            }
            .padding(.bottom, 60)
        }
        .padding(.horizontal, 20)
        .onAppear {
            viewModel.fetchLanding()
        }
    }
}

struct SearchBar: View {
    @Binding var input: String
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
    var bannerList: [HomeBannerResponse]

    init(bannerList: [HomeBannerResponse]) {
        self.bannerList = bannerList
    }

    var body: some View {
        @State var num: Int = 0
        VStack(alignment: .leading) {
            ZStack {
                VStack(alignment: .leading) {
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(bannerList, id: \.title) {
                                KFImage($0.image)
                                    .resizable()
                                    .frame(width: 356, height: 156)
                                    .aspectRatio(contentMode: .fill)
                                    .cornerRadius(8, corners: .allCorners)
                            }
                        }
                    }
                    Spacer()
                        .frame(height: 12)
                    Text(bannerList.first?.title ?? "")
                        .TtalaosyeoFont(.title, color: .Black.black800)
                    Spacer()
                        .frame(height:4)
                    // semibold
                    Text(bannerList.first?.description ?? "")
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

struct Card: View {
    var imageUrl: URL
    var tags: [String]
    var title: String

    init(imageUrl: URL, tags: [String], title: String) {
        self.imageUrl = imageUrl
        self.tags = tags
        self.title = title
    }
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            KFImage(imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(8, corners: .allCorners)
            VStack(alignment: .leading) {
                Spacer()
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(tags, id: \.self) {
                            Text($0)
                                .TtalaosyeoFont(.textSmall, color: .Black.black100)
                                .frame(width:56, height:32)
                                .background(Color.Primary.Primary900)
                                .cornerRadius(999)
                        }
                    }
                }
                Spacer()
                    .frame(height:8)
                Text(title)
                    .TtalaosyeoFont(.title, color: .Black.black100)
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 30)
        }
    }
}

struct Course: View {
    var title: String
    var trips: [HomeTripResponse]

    init(title: String, trips: [HomeTripResponse]) {
        self.title = title
        self.trips = trips
    }

    let nums = [GridItem(.flexible(), spacing: 15),
                GridItem(.flexible(), spacing: 15)]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(title)
                .TtalaosyeoFont(.titleSmall)
            LazyVGrid(columns: nums, alignment: .center, spacing: 15) {
                ForEach(trips, id: \.title) { data in
                    VStack(alignment: .leading) {
                        KFImage(data.thumbnail)
                            .resizable()
                            .frame(height: 128)
                            .cornerRadius(8, corners: .allCorners)
                        Text(data.title)
                            .TtalaosyeoFont(.textSmall, color: .Black.black800)
                        Spacer()
                    }
                }
            }
        }
    }
}


