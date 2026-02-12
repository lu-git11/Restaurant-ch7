//
//  ContentView.swift
//  HelloWorld-ch7
//
//  Created by jeffrey lullen on 2/11/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.green)
            HStack {
                Text("Hello, world!")
                    .font(.caption)
                Text("My first app on 101")
                    .font(.title2)
                    .padding()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
