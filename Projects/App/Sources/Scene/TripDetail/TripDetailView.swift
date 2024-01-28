//
//  Recommend6View.swift
//  Ttalaosyeo
//
//  Created by 서지완 on 1/28/24.
//  Copyright © 2024 com.team.signiel. All rights reserved.
//

import SwiftUI
import Kingfisher
import Service

struct TripDetailView: View {
    @StateObject var viewModel = TripDetailViewModel()
    @State var id: Int = 0
    @State var isStatus = true
    @State var isStatus2 = true
    @State var isNavigation = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 0){
                
                ZStack(alignment: .leading){
                    KFImage(URL(string: viewModel.data.thumbnail))
                        .resizable()
                        .frame(height: 241)
                    
                    Button{
                        dismiss()
                    }label: {
                        TtalaosyeoAsset.Images.left
                            .swiftUIImage
                            .resizable()
                            .frame(width: 32,height: 32)
                            .padding(.bottom, 170)
                            .padding(.leading,12)
                    }
                }
                Text(viewModel.data.title)
                    .TtalaosyeoFont(.titleSmall)
                    .padding(.top,24)
                    .padding(.horizontal,20)
                Text(viewModel.data.content)
                    .padding(.horizontal,20)
                    .padding(.top,8)
                    .TtalaosyeoFont(.text)
                    .foregroundColor(.Black.black400)
                HStack(spacing: 0){
                    TtalaosyeoAsset.Images.location
                        .swiftUIImage
                        .resizable()
                        .frame(width: 24,height: 24)
                        .padding(.leading,20)
                        .padding(.trailing,4)
                    
                    Text(viewModel.data.location)
                        .foregroundColor(.Black.black400)
                    
                    
                    Text("\(viewModel.data.price)원")
                        .padding(.leading,129)
                        .TtalaosyeoFont(.titleSmall)
                    Text("\(viewModel.data.personnel)인")
                        .padding(.leading,8)
                        .TtalaosyeoFont(.text)
                        .foregroundColor(.Black.black400)
                }.padding(.top,16)
                Rectangle()
                    .frame(height: 12)
                    .foregroundColor(.Black.black200)
                    .padding(.top, 32)
                
                HStack(spacing:0){
                    TtalaosyeoAsset.Images.clock
                        .swiftUIImage
                        .resizable()
                        .frame(width: 30,height: 30)
                        .padding(.leading,20)
                    
                    Text("\(viewModel.data.dayNights)")
                        .padding(.leading,12)
                        .TtalaosyeoFont(.text)
                    
                    
                }.padding(.top,36)
                
                HStack(spacing:0){
                    TtalaosyeoAsset.Images.car
                        .swiftUIImage
                        .resizable()
                        .frame(width: 30,height: 30)
                        .padding(.leading,20)
                    Text("이동수단 포함")
                        .padding(.leading,12)
                        .TtalaosyeoFont(.text)
                    
                }.padding(.top,19)
                
                HStack(spacing:0){
                    TtalaosyeoAsset.Images.shoes
                        .swiftUIImage
                        .resizable()
                        .frame(width: 30,height: 30)
                        .padding(.leading,20)
                    Text("예상 도보 시간 3시간")
                        .padding(.leading,12)
                        .TtalaosyeoFont(.text)
                    
                } .padding(.top,19)
                
                Rectangle()
                    .frame(height: 12)
                    .foregroundColor(.Black.black200)
                    .padding(.top, 39)
                
                Divider()
                    .background(Color.Black.black400)
                    .frame(width: 335,height: 1)
                    .padding(.top, 36)
                    .padding(.leading,27)
                VStack {
                    ForEach(viewModel.data.schedules, id: \.day) {
                        TripScheduleView(day: $0.day, schedule: $0)
                    }
                }
                Button{
                    isNavigation.toggle()
                }label: {
                    HStack{
                        Spacer()
                        Text("이 투어 선택하기")
                            .TtalaosyeoFont(.titleSmall)
                            .foregroundStyle(.white)
                            .padding(.horizontal,102)
                            .padding(.vertical, 20)
                            .background(Color.Primary.Primary900)
                            .cornerRadius(8, corners: .allCorners)
                            .padding(.top,32)
                        Spacer()
                    }
                }
                Spacer()
            }.navigate(to: Recommend7View(), when: $isNavigation)
                .navigationBarBackButtonHidden()
            
        }
        .onAppear {
            viewModel.fetchTripDetail(id: id)
        }
    }
}


struct TripScheduleView: View {
    @State var isStatus = false
    var day: Int
    var schedule: TripDetailScheduleResponse
    var body: some View {
        HStack(spacing:0){
            Text("\(day)일차")
                .padding(.leading,44)
                .TtalaosyeoFont(.titleSmall)
                .padding(.top,18)
                .padding(.bottom,18)
            if isStatus == true {
                Button{
                    isStatus.toggle()
                }label: {
                    TtalaosyeoAsset.Images.under
                        .swiftUIImage
                        .resizable()
                        .frame(width: 20,height: 20)
                        .padding(.leading,231)
                }
            }else {
                Button{
                    isStatus.toggle()
                }label: {
                    TtalaosyeoAsset.Images.underleft
                        .swiftUIImage
                        .resizable()
                        .frame(width: 20,height: 20)
                        .padding(.leading,231)
                }
            }
            
        }
        
        Divider()
            .background(Color.Black.black400)
            .frame(width: 335,height: 1)
            .padding(.leading,25)
        if isStatus == true {
            VStack {
                ForEach(schedule.locations, id: \.title) { locations in
                    HStack(spacing:0) {
                        Circle()
                            .frame(width: 20,height: 20)
                            .foregroundColor(.Primary.Primary900)
                            .padding(.leading,28)
                        
                        Text(locations.title)
                            .padding(.leading,20)
                            .TtalaosyeoFont(.titleSmall)
                        Spacer()
                    }
                    
                    HStack(spacing:0){
                        
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 4)
                            .padding(.leading,37)
                        Text(locations.description)
                            .foregroundColor(.Black.black400)
                            .padding(.leading,30)
                            .padding(.bottom,50)
                            .padding(.trailing, 20)
                        Spacer()
                    }
                }
            }
            HStack{
                Spacer()
                Text("일정 종료")
                    .foregroundColor(.Primary.Primary900)
                    .TtalaosyeoFont(.title)
                Spacer()
            }
            
        }
    }
}
