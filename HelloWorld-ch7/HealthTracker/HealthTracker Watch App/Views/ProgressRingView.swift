//
//  ProgressRingView.swift
//  HealthTracker
//
//  Created by jeffrey lullen on 6/4/26.
//

import SwiftUI

struct ProgressRingView: View {
    let progress: Double
    let icon: String
    let color: Color
    let size: CGFloat
    let title: String
    let value: Double
    
    private let lineWidth: CGFloat = 8
    
    var body: some View {
        VStack(spacing: 8) {
            ZStack {
                Circle()
                    .stroke(color.opacity(0.2), lineWidth: lineWidth)
                
                Circle()
                    .trim(from: 0, to: progress)
                    .stroke(
                        color.gradient,
                        style: StrokeStyle(lineWidth: 10, lineCap: .round)
                    )
                    .rotationEffect(.degrees(-90))
                    .animation(.easeInOut(duration: 2), value: progress)
                
                VStack(spacing: 2) {
                    Image(systemName: icon)
                            .font(.system(size: size * 0.3))
                            .foregroundStyle(color)
                    
                    Text("\(Int(value))")
                        .font(.footnote.monospacedDigit())
                        .bold()
                }
            }
            .frame(width: size, height: size)
            
            VStack(spacing: 2) {
                Text(title)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
        .accessibilityElement(children: .ignore)
    }
}

#Preview{
    HStack{
        ProgressRingView(
            progress: 0.3, icon: "flame.fill", color: .orange, size: 60, title: "Calorie", value: 1000
        )
    }
}
