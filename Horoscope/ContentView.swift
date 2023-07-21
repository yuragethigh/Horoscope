//
//  ContentView.swift
//  Horoscope
//
//  Created by Yuriy on 21.07.2023.
//

import SwiftUI


struct Onboarding: View {
    @State private var selection = 0
    var body: some View {
        ZStack {
            
            StarView(starCount: 400)
                .edgesIgnoringSafeArea(.all)
            
            TabView(selection: $selection) {
                tabFirst()
                    .tag(0)
                
                tabSecond()
                    .tag(1)
                
                tabThird()
                    .tag(2)

            }
            .tabViewStyle(.page)
        }
        .modifier(OnboardingBG())
    }
    
    @ViewBuilder
    func tabFirst() -> some View {
        VStack(spacing: 27) {
            Image("Tab1")
                .resizable()
                .modifier(InageOnboarding())
            
            VStack(spacing: 10) {
                Text("Гороскопы на все сферы жизни")
                    .modifier(TitleOnboarding())
                
                Text("Будьте готовы к любым сюрпризам судьбы с нашими приложением")
                    .modifier(SubTitleOnboarding())
                
                Button(action: {
                    withAnimation() {
                            selection = 1
                        }
                   
                }, label: {
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 342, height: 60)
                        .background(
                            LinearGradient(
                                stops: [
                                    Gradient.Stop(color: Color(red: 0.99, green: 0.76, blue: 0.76), location: 0.00),
                                    Gradient.Stop(color: Color(red: 0.77, green: 0.52, blue: 0.73), location: 1.00),
                                ],
                                startPoint: UnitPoint(x: 0.02, y: 0.06),
                                endPoint: UnitPoint(x: 0.96, y: 0.96)
                            )
                        )
                        .cornerRadius(20)
                        .overlay(Text("Отлично")
                            .font(.system(size: 17, weight: .semibold))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black))
                    
                })
                
                
            }
            .padding(.horizontal, 30)
        }
    }
    
    @ViewBuilder
    func tabSecond() -> some View {
        VStack(spacing: 27) {
            Image("Tab2")
                .resizable()
                .modifier(InageOnboarding())
            
            VStack(spacing: 10) {
                Text("Используйте энергию звёзд в свою пользу")
                    .modifier(TitleOnboarding())
                
                Text("Гороскопы, которые помогут принять верные решения")
                    .modifier(SubTitleOnboarding())
                
                Button(action: {
                    withAnimation() {
                            selection = 2
                        }
                   
                }, label: {
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 342, height: 60)
                        .background(
                            LinearGradient(
                                stops: [
                                    Gradient.Stop(color: Color(red: 0.99, green: 0.76, blue: 0.76), location: 0.00),
                                    Gradient.Stop(color: Color(red: 0.77, green: 0.52, blue: 0.73), location: 1.00),
                                ],
                                startPoint: UnitPoint(x: 0.02, y: 0.06),
                                endPoint: UnitPoint(x: 0.96, y: 0.96)
                            )
                        )
                        .cornerRadius(20)
                        .overlay(Text("Хорошо")
                            .font(.system(size: 17, weight: .semibold))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black))
                    
                })
                
                
            }
            .padding(.horizontal, 30)
        }
    }
    
    @ViewBuilder
    func tabThird() -> some View {
        VStack(spacing: 27) {
            Image("Tab3")
                .resizable()
                .modifier(InageOnboarding())
                .padding(.horizontal)
            
            VStack(spacing: 10) {
                Text("Уникальные гороскопы на каждый день")
                    .modifier(TitleOnboarding())
                
                Text("Управляйте своей судьбой вместе со звёздами")
                    .modifier(SubTitleOnboarding())
                
                Button(action: {
                   
                   
                }, label: {
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 342, height: 60)
                        .background(
                            LinearGradient(
                                stops: [
                                    Gradient.Stop(color: Color(red: 0.99, green: 0.76, blue: 0.76), location: 0.00),
                                    Gradient.Stop(color: Color(red: 0.77, green: 0.52, blue: 0.73), location: 1.00),
                                ],
                                startPoint: UnitPoint(x: 0.02, y: 0.06),
                                endPoint: UnitPoint(x: 0.96, y: 0.96)
                            )
                        )
                        .cornerRadius(20)
                        .overlay(Text("Продолжить")
                            .font(.system(size: 17, weight: .semibold))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black))
                    
                })
                
                
            }
            .padding(.horizontal, 30)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
