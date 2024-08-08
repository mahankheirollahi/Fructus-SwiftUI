//
//  SettingsLabelView.swift
//  Fructus-SwiftUI
//
//  Created by Mahan Kheirollahi on 7/25/24.
//

import SwiftUI

struct SettingsLabelView: View {
    
    //MARK: - PROPERTIES
    var labelText: String
    var labelImage: String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
       }
    }
}

//MARK: - PREVIEW
#Preview {
    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
}
