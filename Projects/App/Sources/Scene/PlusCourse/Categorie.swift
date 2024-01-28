//
//  Kategorie.swift
//  Ttalaosyeo
//
//  Created by 노가현 on 1/28/24.
//  Copyright © 2024 com.team.signiel. All rights reserved.
//

import SwiftUI

struct Categorie: View {
    var body: some View {
        VStack(alignment: .leading) {
            Setting()
            Spacer()
                .frame(height:32)
            WalkTime()
            Spacer()
                .frame(height:16)
            TourPlace()
            Spacer()
                .frame(height:16)
            Theme()
            Spacer()
                .frame(height:32)
        }
    }
}

struct Setting: View {
    var body: some View {
        Text("투어 카테고리 설정")
            .TtalaosyeoFont(.titleSmall, color: .Black.black800)
    }
}

struct WalkTime: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("투어 중 도보시간")
                .TtalaosyeoFont(.text, color: .Black.black800)
            Spacer()
                .frame(height:12)
            HStack {
                HStack {
                    Text("1시간 이하")
                        .font(.system(size:16))
                        .foregroundColor(.white)
                }
                .frame(width:70, height:48)
                .padding(.horizontal, 16)
                .background(Color.Primary.Primary900)
                .cornerRadius(100)
                
                HStack {
                    Text("2시간 이하")
                        .font(.system(size:16))
                    
                }
                .frame(width:70, height:48)
                .padding(.horizontal, 16)
                .background(Color.Black.black200)
                .cornerRadius(100)
                .overlay(
                    RoundedRectangle(cornerRadius: 100)
                        .inset(by: 0.5)
                        .stroke(Color.Black.black400, lineWidth: 1)
                )
                
                HStack {
                    Text("3시간 이하")
                        .font(.system(size:16))
                    
                }
                .frame(width:70, height:48)
                .padding(.horizontal, 16)
                .background(Color.Black.black200)
                .cornerRadius(100)
                .overlay(
                    RoundedRectangle(cornerRadius: 100)
                        .inset(by: 0.5)
                        .stroke(Color.Black.black400, lineWidth: 1)
                )
            }
        }
    }
}

struct TourPlace: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("투어 장소")
                .TtalaosyeoFont(.text, color: .Black.black800)
            Spacer()
                .frame(height: 16)
            HStack {
                HStack {
                    Text("숲")
                        .font(.system(size:16))
                    
                }
                .frame(width:50, height:48)
                .padding(.horizontal, 16)
                .background(Color.Black.black200)
                .cornerRadius(100)
                .overlay(
                    RoundedRectangle(cornerRadius: 100)
                        .inset(by: 0.5)
                        .stroke(Color.Black.black400, lineWidth: 1)
                )
                
                HStack {
                    Text("바다")
                        .font(.system(size:16))
                        .foregroundColor(.white)
                }
                .frame(width:50, height:48)
                .padding(.horizontal, 16)
                .background(Color.Primary.Primary900)
                .cornerRadius(100)
                
                HStack {
                    Text("도심")
                        .font(.system(size:16))
                    
                }
                .frame(width:50, height:48)
                .padding(.horizontal, 16)
                .background(Color.Black.black200)
                .cornerRadius(100)
                .overlay(
                    RoundedRectangle(cornerRadius: 100)
                        .inset(by: 0.5)
                        .stroke(Color.Black.black400, lineWidth: 1)
                )
            }
            .frame(alignment: .leading)
        }
    }
}

struct Theme: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("중심 테마")
                .TtalaosyeoFont(.text, color: .Black.black800)
            Spacer()
                .frame(height: 16)
            HStack{
                HStack {
                    Text("음식")
                        .font(.system(size:16))
                    
                }
                .frame(width:50, height:48)
                .padding(.horizontal, 16)
                .background(Color.Black.black200)
                .cornerRadius(100)
                .overlay(
                    RoundedRectangle(cornerRadius: 100)
                        .inset(by: 0.5)
                        .stroke(Color.Black.black400, lineWidth: 1)
                )
                
                HStack {
                    Text("풍경")
                        .font(.system(size:16))
                        .foregroundColor(.white)
                }
                .frame(width:50, height:48)
                .padding(.horizontal, 16)
                .background(Color.Primary.Primary900)
                .cornerRadius(100)
                
                HStack {
                    Text("힐링")
                        .font(.system(size:16))
                    
                }
                .frame(width:50, height:48)
                .padding(.horizontal, 16)
                .background(Color.Black.black200)
                .cornerRadius(100)
                .overlay(
                    RoundedRectangle(cornerRadius: 100)
                        .inset(by: 0.5)
                        .stroke(Color.Black.black400, lineWidth: 1)
                )
            }
        }
    }
}

#Preview {
    Categorie()
}
