//
//  EditProspectView.swift
//  HotProspects
//
//  Created by Насрулло Исмоилжонов on 20/03/24.
//

import SwiftUI

struct EditProspectView: View {
    @State var prospect: Prospect
    
    var body: some View {
        Form {
            TextField("Name", text: $prospect.name)
                .textContentType(.name)
                .font(.title)
            
            TextField("Email address", text: $prospect.emailAddress)
                .textContentType(.emailAddress)
                .font(.title)
        }
    }
}

#Preview {
    EditProspectView(prospect: Prospect(name: "", emailAddress: "", isContacted: false))
}
