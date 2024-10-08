//
//  FruitRowView.swift
//  Fructus-SwiftUI
//
//  Created by Mahan Kheirollahi on 7/24/24.
//

import SwiftUI

struct FruitRowView: View {
    //MARK: - PROPERTIES
    
    var fruit: Fruit
    
    var body: some View {
        HStack {
      
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80,height: 80,alignment: .center)
                    .shadow(color: Color(red:0, green: 0, blue: 0, opacity: 0.3), radius: 3,x: 2,y:2)
                    .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
                    .cornerRadius(8)
            
            
            VStack(alignment:.leading){
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
        }//: HSTACK
    }
}

#Preview {
    FruitRowView(fruit: fruitsData[0])
        .padding()
}
