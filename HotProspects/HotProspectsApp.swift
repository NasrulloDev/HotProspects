//
//  HotProspectsApp.swift
//  HotProspects
//
//  Created by Насрулло Исмоилжонов on 14/03/24.
//

import SwiftData
import SwiftUI

@main
struct HotProspectsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Prospect.self)
    }
}
