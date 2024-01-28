import SwiftUI
import Service
import Kingfisher

struct SearchListView: View {
    var tripsList: [SearchTripTripsResponse]
    @State var isNavigation = false
    init(tripsList: [SearchTripTripsResponse]) {
        self.tripsList = tripsList
    }
    var body: some View {
        ScrollView{
            ForEach(tripsList, id: \.id) { data in
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
                    isNavigation.toggle()
                }
                .padding(.bottom, 24)
            }
        }
        .navigate(to: TripDetailView(), when: $isNavigation)
        .navigationBarBackButtonHidden()
    }
    
    
}
