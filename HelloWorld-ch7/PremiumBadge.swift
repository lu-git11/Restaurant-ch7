//
//  PremiumBadge.swift
//  HelloWorld-ch7
//
//  Created by jeffrey lullen on 2/26/26.
//

import SwiftUI

struct PremiumBadge: View {
    var body: some View {
        HStack{
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            Text("Premium")
                .font(.caption)
        }
        .padding(4)
        .background(Color.orange.opacity(0.3))
        .cornerRadius(6)
    }
}


#Preview {
    PremiumBadge()
}
