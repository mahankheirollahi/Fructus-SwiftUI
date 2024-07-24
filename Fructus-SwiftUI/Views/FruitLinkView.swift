//
//  FruitLinkView.swift
//  Fructus-SwiftUI
//
//  Created by Mahan Kheirollahi on 7/24/24.
//

import SwiftUI

struct FruitLinkView: View {
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content Source")
                Spacer()
                Link("Wikipedia",destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

#Preview {
    FruitLinkView()
}
