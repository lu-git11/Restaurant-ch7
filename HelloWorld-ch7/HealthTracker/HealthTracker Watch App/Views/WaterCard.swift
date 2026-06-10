//
//  WaterCard.swift
//  HealthTracker
//
//  Created by jeffrey lullen on 6/3/26.
//

import SwiftUI

struct WaterCard: View {
    // Existing inputs
    let water: Int
    let calories: Int
    
    // New inputs for water and goals
    let waterMilliliters: Int
    let calorieGoal: Int
    let waterGoalMilliliters: Int
    
    var body: some View {
        HStack(spacing: 16) {
            ProgressRing(
                title: "Calories",
                value: Double(calories),
                goal: Double(max(calorieGoal, 1)),
                ringColor: .orange,
                symbol: "flame"
            )
            
            ProgressRing(
                title: "Water",
                value: Double(waterMilliliters),
                goal: Double(max(waterGoalMilliliters, 1)),
                ringColor: .blue,
                symbol: "drop"
            )
        }
        .padding(16)
        .background(
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .fill(.thinMaterial)
        )
    }
}

private struct ProgressRing: View {
    let title: String
    let value: Double
    let goal: Double
    let ringColor: Color
    let symbol: String?
    
    private var progress: Double { min(max(value / goal, 0), 1) }
    
    var body: some View {
        VStack(spacing: 8) {
            ZStack {
                Circle()
                    .stroke(Color.gray.opacity(0.2), lineWidth: 10)
                Circle()
                    .trim(from: 0, to: progress)
                    .stroke(
                        ringColor.gradient,
                        style: StrokeStyle(lineWidth: 10, lineCap: .round)
                    )
                    .rotationEffect(.degrees(-90))
                
                VStack(spacing: 2) {
                    if let symbol {
                        Image(systemName: symbol)
                            .font(.caption)
                            .foregroundStyle(ringColor)
                    }
                    Text("\(Int(progress * 100))%")
                        .font(.footnote.monospacedDigit())
                        .bold()
                }
            }
            .frame(width: 90, height: 90)
            
            VStack(spacing: 2) {
                Text(title)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                Text(metricText)
                    .font(.subheadline).bold()
                    .monospacedDigit()
            }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(Text(title))
        .accessibilityValue(Text("\(Int(value)) of \(Int(goal))"))
    }
    
    private var metricText: String {
        switch title.lowercased() {
        case "calories":
            return "\(Int(value)) / \(Int(goal)) kcal"
        case "water":
            // Show liters if large enough, else mL
            if goal >= 1000 {
                let vL = value / 1000
                let gL = goal / 1000
                return String(format: "%.1f / %.1f L", vL, gL)
            } else {
                return "\(Int(value)) / \(Int(goal)) mL"
            }
        default:
            return "\(Int(value)) / \(Int(goal))"
        }
    }
}

#Preview {
    StepCard(
        steps: 6500,
        calories: 420,
        waterMilliliters: 1200,
        calorieGoal: 600,
        waterGoalMilliliters: 2000
    )
    .padding()
}

