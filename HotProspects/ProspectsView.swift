//
//  ProspectsView.swift
//  HotProspects
//
//  Created by Насрулло Исмоилжонов on 17/03/24.
//
import SwiftData
import SwiftUI

struct ProspectsView: View {
    enum FilterType {
        case none, contacted, uncontacted
    }
    
    @Environment(\.modelContext) var modelContext
    @Query(sort: \Prospect.name) var prospects: [Prospect]
    
    let filter: FilterType
    
    var title: String {
        switch filter {
        case .none:
            "Everyone"
        case .contacted:
            "Contacted people"
        case .uncontacted:
            "Uncontacted people"
        }
    }
    var body: some View {
        NavigationStack{
            Text("People: \(prospects.count)")
                .navigationTitle(title)
                .toolbar{
                    Button("Scan", systemImage: "qrcode.viewfinder"){
                        let prospect = Prospect(name: "Nasrullo", emailAddress: "nasrullo@gmail.com", isContacted: false)
                        modelContext.insert(prospect)
                    }
                }
        }
    }
}

#Preview {
    ProspectsView(filter: .none)
        .modelContainer(for: Prospect.self)
}
