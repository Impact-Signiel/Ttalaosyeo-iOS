//
//  TourName.swift
//  Ttalaosyeo
//
//  Created by 노가현 on 1/28/24.
//  Copyright © 2024 com.team.signiel. All rights reserved.
//

import SwiftUI

struct TourName: View {
    var body: some View {
        VStack(alignment: .leading) {
            Name()
                Spacer()
                .frame(height:24)
            Date()
                Spacer()
                .frame(height:24)
        }
    }
}

struct Name: View {
    @State var input: String = ""
    var body: some View {
        VStack(alignment: .leading){
            Text("투어 이름")
                .TtalaosyeoFont(.titleSmall, color: .Black.black800)
            Spacer()
                .frame(height: 16)
            HStack(alignment: .center, spacing: 0){
                TextField("투어 이름을 입력해주세요.", text: $input)
                    .padding(.leading, 16)
                    .TtalaosyeoFont(.text, color: .Black.black400)
            }
            .frame(height:60, alignment: .leading)
            .background(Color.Black.black200)
            .cornerRadius(8)
        }
        .padding(.horizontal, 20)
    }
}

struct Date: View {
    @State var start: String = ""
    @State var end: String = ""
    @State var price: Int = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("투어 진행 날짜")
                .TtalaosyeoFont(.text, color: .Black.black800)
            Spacer()
                .frame(height: 16)
            HStack {
                HStack(alignment: .center, spacing: 0) {
                    TextField("시작일", text: $start)
                        .padding(.leading, 16)
                        .TtalaosyeoFont(.text, color: .Black.black400)
                }
                .frame(width: 160, height: 64)
                .background(Color.Black.black200)
                .cornerRadius(8)
                
                Spacer()
                    .frame(height: 12)
                
                HStack(alignment: .center, spacing: 0) {
                    TextField("마감일", text: $end)
                        .padding(.leading, 16)
                        .TtalaosyeoFont(.text, color: .Black.black400)
                }
                .frame(width: 160, height: 64)
                .background(Color.Black.black200)
                .cornerRadius(8)
            }
            Text("(예시 2024.01.23)")
                .TtalaosyeoFont(.text, color: .Black.black400)
            Spacer()
                .frame(height: 16)
            
            Text("투어 가격")
                .TtalaosyeoFont(.titleSmall, color: .Black.black800)
            VStack {
                TextField("투어 가격을 입력해주세요.", value: $price, formatter: NumberFormatter())
                    .TtalaosyeoFont(.text, color: .Black.black400)
                    .padding(.leading, 16)
            }
            .frame(width: 335, height: 60)
            .background(Color.Black.black200)
            .cornerRadius(8)
        }
        .padding(.horizontal, 20)
    }
}

#Preview {
    TourName()
}
