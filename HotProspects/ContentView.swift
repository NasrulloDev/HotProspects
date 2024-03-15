//
//  ContentView.swift
//  HotProspects
//
//  Created by Насрулло Исмоилжонов on 14/03/24.
//

import SwiftUI

struct ContentView: View {
    @State private var backgroundColor = Color.red
    
    var body: some View {
        VStack {
                    Text("Hello, World!")
                        .padding()
                        .background(backgroundColor)

                    Text("Change Color")
                        .padding()
                        .contextMenu {
                            Button("Red", systemImage: "checkmark.circle.fill") {
                                backgroundColor = .red
                            }

                            Button("Green") {
                                backgroundColor = .green
                            }

                            Button("Blue") {
                                backgroundColor = .blue
                            }
                        }
                }
    }
}

#Preview {
    ContentView()
}
