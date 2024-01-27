//
//  Recommend3View.swift
//  Ttalaosyeo
//
//  Created by 서지완 on 1/27/24.
//  Copyright © 2024 com.team.signiel. All rights reserved.
//

import SwiftUI

struct Recommend4View: View {
    @State var forty = false
    @State var fifty = false
    @State var sixty = false
    @State var seventy = false
    @State var isNavigation = false
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Text("여행에서 얼마정도 걷고 싶으세요?")
                .TtalaosyeoFont(.title)
                .padding(.top, 78)
                .padding(.leading,18)
            
            Button{
                forty.toggle()
                fifty = false
                sixty = false
                seventy = false
            }label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 335, height: 80)
                        .foregroundColor(forty ? .Primary.Primary900 : .white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(forty ? .white : .black, lineWidth: 1)
                        )
                    HStack{
                        Circle()
                            .frame(width: 32,height: 32)
                            .foregroundStyle(.white)
                            .overlay(
                                Circle()
                                    .frame(width: 16,height: 16)
                                    .foregroundStyle(forty ? .black : .white)
                        
                            
                        ).overlay(
                            Circle()
                                .stroke(forty ? .white : .black, lineWidth: 1)
                        )
                        
                        Text("1시간 이하")
                            .TtalaosyeoFont(.title)
                            .foregroundStyle(forty ? .white : .black)
                        
                        Spacer()
                    }.padding(.leading,44)
                }.padding(.top, 32)
            }
            
            Button{
                fifty.toggle()
                forty = false
                sixty = false
                seventy = false
            }label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 335, height: 80)
                        .foregroundColor(fifty ? .Primary.Primary900 : .white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(fifty ? .white : .black, lineWidth: 1)
                        )
                    HStack{
                        Circle()
                            .frame(width: 32,height: 32)
                            .foregroundStyle(.white)
                            .overlay(
                                Circle()
                                    .frame(width: 16,height: 16)
                                    .foregroundStyle(fifty ? .black : .white)
                        
                            
                        ).overlay(
                            Circle()
                                .stroke(fifty ? .white : .black, lineWidth: 1)
                        )
                        
                        Text("2시간 이하")
                            .TtalaosyeoFont(.title)
                            .foregroundStyle(fifty ? .white : .black)
                        
                        Spacer()
                    }.padding(.leading,44)
                }.padding(.top, 12)
            }
            
            Button{
                sixty.toggle()
                fifty = false
                forty = false
                seventy = false
            }label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 335, height: 80)
                        .foregroundColor(sixty ? .Primary.Primary900 : .white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(sixty ? .white : .black, lineWidth: 1)
                        )
                    HStack{
                        Circle()
                            .frame(width: 32,height: 32)
                            .foregroundStyle(.white)
                            .overlay(
                                Circle()
                                    .frame(width: 16,height: 16)
                                    .foregroundStyle(sixty ? .black : .white)
                        
                            
                        ).overlay(
                            Circle()
                                .stroke(sixty ? .white : .black, lineWidth: 1)
                        )
                        
                        Text("3시간 이하")
                            .TtalaosyeoFont(.title)
                            .foregroundStyle(sixty ? .white : .black)
                        
                        Spacer()
                    }.padding(.leading,44)
                }.padding(.top, 12)
            }
            
            Button{
                seventy.toggle()
                sixty = false
                fifty = false
                forty = false
            }label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 335, height: 80)
                        .foregroundColor(seventy ? .Primary.Primary900 : .white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(seventy ? .white : .black, lineWidth: 1)
                        )
                    HStack{
                        Circle()
                            .frame(width: 32,height: 32)
                            .foregroundStyle(.white)
                            .overlay(
                                Circle()
                                    .frame(width: 16,height: 16)
                                    .foregroundStyle(seventy ? .black : .white)
                        
                            
                        ).overlay(
                            Circle()
                                .stroke(seventy ? .white : .black, lineWidth: 1)
                        )
                        
                        Text("4시간 이상")
                            .TtalaosyeoFont(.title)
                            .foregroundStyle(seventy ? .white : .black)
                        
                        Spacer()
                    }.padding(.leading,44)
                }.padding(.top, 12)
            }
            
            Button{
                self.isNavigation = true
            }label: {
                HStack {
                    Spacer()
                    Text("추천받기")
                        .foregroundStyle(.white)
                        .TtalaosyeoFont(.titleSmall)
                    Spacer()
                }
                .padding(.vertical, 20)
                .background(Color.black)
                .cornerRadius(8, corners: .allCorners)
                .padding(.top,70)
            }
            .padding(.horizontal, 16)
            
            Spacer()
        }.navigate(to: Recommend5View(), when: $isNavigation)
            .navigationBarBackButtonHidden()
    }
}

#Preview {
    Recommend4View()
}
