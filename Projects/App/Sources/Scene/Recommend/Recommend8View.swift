//
//  Recommend8View.swift
//  Ttalaosyeo
//
//  Created by 서지완 on 1/28/24.
//  Copyright © 2024 com.team.signiel. All rights reserved.
//

import SwiftUI

struct Recommend8View: View {
    @State var isNavigation = false
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Button {
                dismiss()
            }label: {
                TtalaosyeoAsset.Images.underleft
                    .swiftUIImage
                    .resizable()
                    .frame(width: 20,height: 20)
                    .padding(.leading,20)
                    .padding(.top,28)
            }
            Text("한국의 괌 제주도로 떠나는 역대급...")
                .TtalaosyeoFont(.title)
                .padding(.leading,20)
                .padding(.top, 8)
            HStack(spacing:0){
                Text("300,000원")
                    .TtalaosyeoFont(.title)
                    .padding(.leading,20)
                    .foregroundStyle(Color.Primary.Primary900)
                Text("을 결제합니다")
                    .TtalaosyeoFont(.title)
            }
            
            TtalaosyeoAsset.Images.lastsvg
                .swiftUIImage
                .resizable()
                .frame(width: 222,height: 267)
                .padding(.top, 114)
                .padding(.horizontal,76)
            HStack(spacing: 0){
                Spacer()
                Text("1인당")
                    .foregroundStyle(Color.Black.black400)
                    .padding(.trailing,6)
                Text("75000원")
                Spacer()
            }.padding(.top, 68)
            Button{
                isNavigation.toggle()
            }label: {
                HStack{
                    Spacer()
                    Text("결제하기")
                        .TtalaosyeoFont(.titleSmall)
                        .foregroundStyle(.white)
                        .padding(.horizontal,152)
                        .padding(.vertical, 20)
                        .background(Color.Primary.Primary900)
                        .cornerRadius(8, corners: .allCorners)
                        .padding(.top,12)
                    Spacer()
                }
            }
            
            Spacer()
        }.navigate(to: HomeView(), when: $isNavigation)
            .navigationBarBackButtonHidden()
    }
}

#Preview {
    Recommend8View()
}
