//
//  ContentView.swift
//  HotProspects
//
//  Created by Насрулло Исмоилжонов on 14/03/24.
//

import SwiftUI

struct ContentView: View {

    
    var body: some View {
        VStack {
            List{
                Text("Taylor Swift")
                    .swipeActions {
                        Button("Delete", systemImage: "minus.circle", role: .destructive){
                            print("Delete")
                        }
                    }
                    .swipeActions(edge: .leading){
                        Button("Pin", systemImage: "pin"){
                            print("Pinning")
                        }
                        .tint(.orange)
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
