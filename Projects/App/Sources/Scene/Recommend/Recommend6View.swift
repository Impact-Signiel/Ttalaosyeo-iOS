//
//  Recommend6View.swift
//  Ttalaosyeo
//
//  Created by 서지완 on 1/28/24.
//  Copyright © 2024 com.team.signiel. All rights reserved.
//

import SwiftUI

struct Recommend6View: View {
    @State var isStatus = true
    @State var isStatus2 = true
    @State var isNavigation = false
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 0){
                
                ZStack(alignment: .leading){
                    TtalaosyeoAsset.Images.photo2svg
                        .swiftUIImage
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
                Text("한국의 괌 제주도로 떠나는 역대급 경치 투어")
                    .TtalaosyeoFont(.titleSmall)
                    .padding(.top,24)
                    .padding(.horizontal,20)
                Text("제주도에서 태어나 결혼까지한 제주도 토박이의 숨겨진 경치 명소들을 알려드립니다!")
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
                    
                    Text("제주도")
                        .foregroundColor(.Black.black400)
                    
                    
                    Text("300,000원")
                        .padding(.leading,129)
                        .TtalaosyeoFont(.titleSmall)
                    Text("4인")
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
                    
                    Text("2박 3일")
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
                HStack(spacing:0){
                    Text("1일차")
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
                    HStack(spacing:0){
                        Circle()
                            .frame(width: 20,height: 20)
                            .foregroundColor(.Primary.Primary900)
                            .padding(.leading,28)
                        
                        Text("유성커피 앞에서 집합")
                            .padding(.leading,20)
                            .TtalaosyeoFont(.titleSmall)
                        
                    }.padding(.top, 54)
                    
                    HStack(spacing:0){
                        
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 4,height: 76)
                            .padding(.leading,37)
                        
                        Text("오전 8시 차로 이동")
                            .foregroundColor(.Black.black400)
                            .padding(.leading,30)
                            .padding(.bottom,50)
                        
                    }
                    
                    HStack(spacing:0){
                        Circle()
                            .frame(width: 20,height: 20)
                            .foregroundColor(.Primary.Primary900)
                            .padding(.leading,28)
                        
                        Text("~ 도착 & 1시간 감상")
                            .padding(.leading,20)
                            .TtalaosyeoFont(.titleSmall)
                        
                    }
                    
                    HStack(spacing:0){
                        
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 4,height: 76)
                            .padding(.leading,37)
                        Text("오전 8 : 30분")
                            .foregroundColor(.Black.black400)
                            .padding(.leading,30)
                            .padding(.bottom,50)
                        
                    }
                    
                    HStack(spacing:0){
                        Circle()
                            .frame(width: 20,height: 20)
                            .foregroundColor(.Primary.Primary900)
                            .padding(.leading,28)
                        
                        Text("~ 도착 & 1시간 감상")
                            .padding(.leading,20)
                            .TtalaosyeoFont(.titleSmall)
                        
                    }
                    
                    HStack(spacing:0){
                        
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 4,height: 76)
                            .padding(.leading,37)
                        Text("오전 9 : 30분")
                            .foregroundColor(.Black.black400)
                            .padding(.leading,30)
                            .padding(.bottom,50)
                        
                    }
                    HStack(spacing:0){
                        Circle()
                            .frame(width: 20,height: 20)
                            .foregroundColor(.Primary.Primary900)
                            .padding(.leading,28)
                        
                        Text("~ 도착 & 1시간 감상")
                            .padding(.leading,20)
                            .TtalaosyeoFont(.titleSmall)
                        
                    }
                    
                    HStack(spacing:0){
                        
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 4,height: 76)
                            .padding(.leading,37)
                        Text("오전 9 : 30분")
                            .foregroundColor(.Black.black400)
                            .padding(.leading,30)
                            .padding(.bottom,50)
                        
                    }
                    
                    HStack(spacing:0){
                        Circle()
                            .frame(width: 20,height: 20)
                            .foregroundColor(.Primary.Primary900)
                            .padding(.leading,28)
                        
                        Text("호텔 도착 & 뷔페 식사")
                            .padding(.leading,20)
                            .TtalaosyeoFont(.titleSmall)
                        
                    }
                    
                    Text("오전 9 : 30분")
                        .foregroundColor(.Black.black400)
                        .padding(.leading,67)
                        .padding(.bottom,50)
                    HStack{
                        Spacer()
                        Text("일정 종료")
                            .foregroundColor(.Primary.Primary900)
                            .TtalaosyeoFont(.title)
                        Spacer()
                    }
                    
                }
                
                HStack(spacing:0){
                    Text("2일차")
                        .padding(.leading,44)
                        .TtalaosyeoFont(.titleSmall)
                        .padding(.top,18)
                        .padding(.bottom,18)
                    if isStatus2 == true {
                        Button{
                            isStatus2.toggle()
                        }label: {
                            TtalaosyeoAsset.Images.under
                                .swiftUIImage
                                .resizable()
                                .frame(width: 20,height: 20)
                                .padding(.leading,231)
                        }
                    }else {
                        Button{
                            isStatus2.toggle()
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
                if isStatus2 == true {
                    HStack(spacing:0){
                        Circle()
                            .frame(width: 20,height: 20)
                            .foregroundColor(.Primary.Primary900)
                            .padding(.leading,28)
                        
                        Text("유성커피 앞에서 집합")
                            .padding(.leading,20)
                            .TtalaosyeoFont(.titleSmall)
                        
                    }.padding(.top, 54)
                    
                    HStack(spacing:0){
                        
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 4,height: 76)
                            .padding(.leading,37)
                        
                        Text("오전 8시 차로 이동")
                            .foregroundColor(.Black.black400)
                            .padding(.leading,30)
                            .padding(.bottom,50)
                        
                    }
                    
                    HStack(spacing:0){
                        Circle()
                            .frame(width: 20,height: 20)
                            .foregroundColor(.Primary.Primary900)
                            .padding(.leading,28)
                        
                        Text("~ 도착 & 1시간 감상")
                            .padding(.leading,20)
                            .TtalaosyeoFont(.titleSmall)
                        
                    }
                    
                    HStack(spacing:0){
                        
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 4,height: 76)
                            .padding(.leading,37)
                        Text("오전 8 : 30분")
                            .foregroundColor(.Black.black400)
                            .padding(.leading,30)
                            .padding(.bottom,50)
                        
                    }
                    
                    HStack(spacing:0){
                        Circle()
                            .frame(width: 20,height: 20)
                            .foregroundColor(.Primary.Primary900)
                            .padding(.leading,28)
                        
                        Text("~ 도착 & 1시간 감상")
                            .padding(.leading,20)
                            .TtalaosyeoFont(.titleSmall)
                        
                    }
                    
                    HStack(spacing:0){
                        
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 4,height: 76)
                            .padding(.leading,37)
                        Text("오전 9 : 30분")
                            .foregroundColor(.Black.black400)
                            .padding(.leading,30)
                            .padding(.bottom,50)
                        
                    }
                    HStack(spacing:0){
                        Circle()
                            .frame(width: 20,height: 20)
                            .foregroundColor(.Primary.Primary900)
                            .padding(.leading,28)
                        
                        Text("~ 도착 & 1시간 감상")
                            .padding(.leading,20)
                            .TtalaosyeoFont(.titleSmall)
                        
                    }
                    
                    HStack(spacing:0){
                        
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 4,height: 76)
                            .padding(.leading,37)
                        Text("오전 9 : 30분")
                            .foregroundColor(.Black.black400)
                            .padding(.leading,30)
                            .padding(.bottom,50)
                        
                    }
                    
                    HStack(spacing:0){
                        Circle()
                            .frame(width: 20,height: 20)
                            .foregroundColor(.Primary.Primary900)
                            .padding(.leading,28)
                        
                        Text("호텔 도착 & 뷔페 식사")
                            .padding(.leading,20)
                            .TtalaosyeoFont(.titleSmall)
                        
                    }
                    
                    Text("오전 9 : 30분")
                        .foregroundColor(.Black.black400)
                        .padding(.leading,67)
                        .padding(.bottom,50)
                    HStack{
                        Spacer()
                        Text("일정 종료")
                            .foregroundColor(.Primary.Primary900)
                            .TtalaosyeoFont(.title)
                        Spacer()
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
    }
}

#Preview {
    Recommend6View()
}
