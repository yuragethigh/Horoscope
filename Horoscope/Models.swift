//
//  Models.swift
//  Horoscope
//
//  Created by Yuriy on 21.07.2023.
//

import SwiftUI

extension Color {
    static let primaryNight = Color(.white)
}
//MARK: Onboarding modifier
struct OnboardingBG: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(
            LinearGradient(
            stops: [
            Gradient.Stop(color: Color(red: 0.1, green: 0.11, blue: 0.2), location: 0.00),
            Gradient.Stop(color: Color(red: 0.02, green: 0.03, blue: 0.04), location: 1.00),
            ],
            startPoint: UnitPoint(x: 0.5, y: 0),
            endPoint: UnitPoint(x: 0.5, y: 1)
            )
            )
            
    }
}
struct InageOnboarding: ViewModifier {
    func body(content: Content) -> some View {
        content
            .aspectRatio(contentMode: .fit)
            .frame(width: 408.3228759765625, height: 408.3228759765625)
    }
}
struct TitleOnboarding: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 26, weight: .bold))
            .foregroundColor(Color.primaryNight)
            .multilineTextAlignment(.center)
    }
}
struct SubTitleOnboarding: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 17))
            .multilineTextAlignment(.center)
            .foregroundColor(Color.primaryNight)
            .opacity(0.7)
            .padding(.bottom, 36)
    }
}
//MARK: Star Animated
struct Star: View {
    @State private var isAnimating: Bool = false
    let xPos: CGFloat
    let yPos: CGFloat
    let diameter: CGFloat

    var body: some View {
        Circle()
            .frame(width: diameter, height: diameter)
            .position(x: xPos, y: yPos)
            .foregroundColor(.white)
            .opacity(isAnimating ? 0.1 : 1)
            .animation(Animation.easeInOut(duration: Double.random(in: 1...5)).repeatForever(autoreverses: true), value: isAnimating)
            .onAppear {
                isAnimating = true
            }
    }
}

struct StarView: View {
    let starCount: Int

    var body: some View {
        ZStack {
            ForEach(0..<starCount, id: \.self) { _ in
                Star(xPos: CGFloat.random(in: 0...UIScreen.main.bounds.width),
                     yPos: CGFloat.random(in: 0...UIScreen.main.bounds.height),
                     diameter: CGFloat.random(in: 1...3))
            }
        }
    }
}
