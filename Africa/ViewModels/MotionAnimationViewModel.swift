//
//  MotionAnimationViewModel.swift
//  Africa
//
//  Created by Uriy Martynenko on 05.11.2024.
//

import SwiftUI

struct MotionAnimationViewModel: View {
    // MARK: - Properties
    @State private var randomCirce = Int.random(in: 12...16)
    @State private var isAnimating: Bool = false
    
    // MARK: - Functions
    func randomCoordinate(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }
    
    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 10...300))
    }
    
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    
    func randomSpeed() -> Double {
        return Double.random(in: 0.025...1.0)
    }
    
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    // MARK: - Body
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0...randomCirce, id: \.self) { item in
                    Circle()
                        .foregroundStyle(.gray)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .scaleEffect(isAnimating ? randomScale() : 1)
                        .position(x: randomCoordinate(max: geometry.size.width), y: randomCoordinate(max: geometry.size.height))
                        .animation(
                            Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever()
                                .speed(randomSpeed())
                                .delay(randomDelay()),
                            value: isAnimating
                        )
                        .onAppear {
                            isAnimating = true
                        }
                } //: ForEach
            } //: ZStack
            .drawingGroup()
        } //: Geometry
    }
}

#Preview {
    MotionAnimationViewModel()
}
