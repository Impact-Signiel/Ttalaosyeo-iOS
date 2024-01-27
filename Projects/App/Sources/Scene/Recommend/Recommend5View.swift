//
//  Recommend5View.swift
//  Ttalaosyeo
//
//  Created by 서지완 on 1/27/24.
//  Copyright © 2024 com.team.signiel. All rights reserved.
//

import SwiftUI

struct Recommend5View: View {
    @State var isNavigation = false
    var body: some View {
        VStack(alignment: .leading,spacing: 0) {
            Text("추천드릴 투어는 아래와 같아요")
                .TtalaosyeoFont(.title)
                .padding(.top,32)
                .padding(.leading,18)
                .padding(.bottom,40)
            
            
            ScrollView{
                ForEach(1...3, id: \.self) { _ in
                    ZStack {
                        TtalaosyeoAsset.Images.photo1svg
                            .swiftUIImage
                            .resizable()
                            .frame(width: 335, height: 200)
                            .padding(.top, 32)
                            .padding(.horizontal, 20)
                            .contentShape(Rectangle())

                        Button {
                            isNavigation.toggle()
                        } label: {
                            TtalaosyeoAsset.Images.plusButton
                                .swiftUIImage
                                .resizable()
                                .frame(width: 32, height: 32)
                                .padding(.bottom, 105)
                                .padding(.leading, 270)
                        }
                    }
                    Text("한국의 괌 제주도로 떠나는 역대급 경치 투어")
                        .TtalaosyeoFont(.titleSmall)
                        .padding(.horizontal,20)
                        .padding(.top,8)
                        //.lineLimit(2)
                    
                    Text("제주도에서 태어나 결혼까지한 제주도 토박이의 숨겨진 경치 명소들을 알려드립니다!")
                        .TtalaosyeoFont(.text)
                        .foregroundColor(.Black.black400)
                        .padding(.horizontal,20)
                        .padding(.top,8)
                        .lineLimit(2)

                HStack{
                    Text("1시간 이상 걷기")
                        .TtalaosyeoFont(.textSmall)
                        .padding(.horizontal,16)
                        .padding(.vertical, 4)
                        .background(Color.Primary.Primary900)
                        .cornerRadius(999, corners: .allCorners)
                            .padding(.top,12)
                            .padding(.trailing,4)
                    Text("바다")
                        .TtalaosyeoFont(.textSmall)
                        .padding(.horizontal,16)
                        .padding(.vertical, 4)
                        .background(Color.Primary.Primary900)
                        .cornerRadius(999, corners: .allCorners)
                        
                            .padding(.top,12)
                            .padding(.trailing,4)
                    Text("경치")
                        .TtalaosyeoFont(.textSmall)
                        .padding(.horizontal,16)
                        .padding(.vertical, 4)
                        .background(Color.Primary.Primary900)
                        .cornerRadius(999, corners: .allCorners)
                        .padding(.trailing,4)
                            .padding(.top,12)
                        
                   Spacer()
                }.padding(.horizontal,28)
                }
            }
            Spacer()
        }.navigate(to: Recommend6View(), when: $isNavigation)
            .navigationBarBackButtonHidden()
        
        
    }
}



#Preview {
    Recommend5View()
}
