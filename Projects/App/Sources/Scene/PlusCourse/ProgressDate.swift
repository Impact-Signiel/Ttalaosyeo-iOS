//
//  ProgressDate.swift
//  Ttalaosyeo
//
//  Created by 노가현 on 1/28/24.
//  Copyright © 2024 com.team.signiel. All rights reserved.
//

import SwiftUI

struct ProgressDate: View {
    var body: some View {
        Progress()
            Spacer()
            .frame(height:16)
        Tools()
            Spacer()
            .frame(height:16)
        Place()
            Spacer()
            .frame(height:16)
        Et()
            Spacer()
            .frame(height:16)
        AddButton()
            Spacer()
            .frame(height:32)
    }
}

struct Progress: View {
    @State var primary: String = ""
    var body: some View {
        VStack(alignment: .leading) {
            Text("투어 진행 스케줄")
                .TtalaosyeoFont(.text, color: .Black.black800)
            Spacer()
                .frame(height:12)
            HStack(alignment: .center, spacing: 0) {
                VStack {
                    HStack {
                        TextField("1일차", text: $primary)
                            .padding(.leading, 24)
                            .TtalaosyeoFont(.titleSmall, color: .Black.black400)
                        Image(systemName: "chevron.down")
                            .frame(width: 24, height: 24)
                            .padding(.trailing, 24)
                            .foregroundColor(.Black.black400)
                    }
                    
                }
            }
            .frame(width: 335, height: 60)
            .background(Color.Black.black200)
        }
        .padding(.horizontal, 20)
    }
}

struct Tools: View {
    var body: some View {
        HStack {
            Image("plus")
                .padding(8)
                .background(Color.Black.black800)
                .cornerRadius(100)
        }
        .padding(0)
        .frame(width: 290, height: 125, alignment: .center)
        .background(Color.Black.black200)
        .cornerRadius(8)
    }
}

struct Place: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("코스 장소")
                .TtalaosyeoFont(.text, color: .Black.black800)
            Spacer()
                .frame(height:12)
            HStack {
                Text("코스 장소를 입력해주세요 (20자 이내)")
                    .TtalaosyeoFont(.textSmall, color: .Black.black400)
                    .padding(.leading, 16)
            }
            .padding(0)
            .frame(width: 290, height: 48, alignment: .leading)
            .background(Color.Black.black200)
            .cornerRadius(8)
            
        }
    }
}

struct Et: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("코스 설명")
                .TtalaosyeoFont(.text, color: .Black.black800)
            Spacer()
                .frame(height:12)
            HStack {
                Text("코스 장소를 입력해주세요 (50자 이내)")
                    .TtalaosyeoFont(.textSmall, color: .Black.black400)
                    .padding(.leading, 16)
                    .padding(.top, 13)
            }
            .frame(width: 290, height: 111, alignment: .topLeading)
            .background(Color.Black.black200)
            .cornerRadius(8)
        }
    }
}

struct AddButton: View {
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "plus")
                Text("일차 추가")
            }
            .TtalaosyeoFont(.text, color: .Black.black100)
        }
        .frame(width:95, height: 50)
        .padding(.horizontal, 40)
        .background(Color.Black.black800)
        .cornerRadius(8)
    }
}

#Preview {
    ProgressDate()
}
