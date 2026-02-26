//
//  RegularBadge.swift
//  HelloWorld-ch7
//
//  Created by jeffrey lullen on 2/26/26.
//

import SwiftUI

struct RegularBadge: View {
    var body: some View {
        HStack{
            Text("Regular")
                .font(.footnote)
        }
        .padding(6)
        .background(Color.green.opacity(0.3))
        .cornerRadius(6)
    }
}

#Preview {
    RegularBadge()
}
