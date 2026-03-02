//
//  LoyaltyBadge.swift
//  HelloWorld-ch7
//
//  Created by jeffrey lullen on 3/2/26.
//

import SwiftUI

struct LoyaltyBadge: View {
    var body: some View {
        HStack{
            Image(systemName: "star.fill")
                .foregroundStyle(
                    LinearGradient(
                        colors: [Color.yellow, Color.white, Color.yellow],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            Text("Loyalty Member")
                .font(.caption)
        }
        .padding(4)
        .background(Color.purple.opacity(0.3))
        .cornerRadius(6)
    }
}

#Preview {
    LoyaltyBadge()
}
