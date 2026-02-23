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
                .font(.system(size: 150))
                .foregroundStyle(.blue)
            Text("Hello, world!")
                .font(.system(size: 30))
                .padding(5)
            Text("My first app on 101")
                .font(.title2)
                .padding(5)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
