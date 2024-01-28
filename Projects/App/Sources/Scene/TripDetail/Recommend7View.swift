//
//  Recommend7View.swift
//  Ttalaosyeo
//
//  Created by 서지완 on 1/28/24.
//  Copyright © 2024 com.team.signiel. All rights reserved.
//

import SwiftUI

struct Recommend7View: View {
    @State var isNavigation = false
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(alignment:.leading,spacing:0) {
            Button {
                dismiss()
            }label: {
                TtalaosyeoAsset.Images.underleft
                    .swiftUIImage
                    .resizable()
                    .frame(width: 20,height: 20)
                    .padding(.leading,20)
            }
            
            
            Text("여행자 정보 입력")
                .TtalaosyeoFont(.title)
                .padding(.top, 8)
                .padding(.leading,20)
            
            Text("여행 인원 수 입력")
                .TtalaosyeoFont(.text)
                .padding(.top, 57)
                .padding(.leading,20)
                .padding(.bottom,8)
            
            SearchBar1()
                .padding(.horizontal,20)
            
            
            Text("여행 날짜 선택")
                .padding(.leading,20)
                .padding(.top, 20)
                .padding(.bottom,8)
            SearchBar2()
                .padding(.horizontal,20)
            
            Text("(예시 01.23)")
                .foregroundStyle(Color.Black.black400)
                .padding(.top, 12)
                .padding(.leading,20)
            
            Button{
                isNavigation.toggle()
            }label: {
                HStack{
                    Spacer()
                    Text("정보 입력하기")
                        .TtalaosyeoFont(.titleSmall)
                        .foregroundStyle(.white)
                        .padding(.horizontal,113)
                        .padding(.vertical, 20)
                        .background(Color.Primary.Primary900)
                        .cornerRadius(8, corners: .allCorners)
                        .padding(.top,32)
                    Spacer()
                }
            }
            Spacer()
        }.navigate(to: Recommend8View(), when: $isNavigation)
            .navigationBarBackButtonHidden()
    }
}

struct SearchBar1: View {
    @State var input: String = ""
    var body: some View {
        HStack(alignment: .center, spacing: 0){
            TextField("여행을 함께가는 총 인원 수를 입력해주세요", text: $input)
                .padding(.leading, 12)
                .TtalaosyeoFont(.textSmall, color: .Black.black400)
        }
        .frame(height:48, alignment: .leading)
        .background(Color.Black.black200)
        .cornerRadius(8)
    }
}
struct SearchBar2: View {
    @State var input: String = ""
    var body: some View {
        HStack(alignment: .center, spacing: 0){
            TextField("투어 시작일을 입력해주세요", text: $input)
                .padding(.leading, 12)
                .TtalaosyeoFont(.textSmall, color: .Black.black400)
        }
        .frame(height:48, alignment: .leading)
        .background(Color.Black.black200)
        .cornerRadius(8)
    }
}

#Preview {
    Recommend7View()
}
