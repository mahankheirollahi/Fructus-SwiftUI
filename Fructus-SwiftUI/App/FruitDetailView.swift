//
//  FruitDetailView.swift
//  Fructus-SwiftUI
//
//  Created by Mahan Kheirollahi on 7/24/24.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - PROPTERTIES
    var fruit: Fruit
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment:.leading,spacing: 20){
                        
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // NUTRITIONS
                        FruitNutritionView(fruit: fruit)
                        
                        
                        // SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        
                        // LINK
                        FruitLinkView()
                        
                        
                    }//: VSTACK
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640,alignment: .center)
                    
                
                    
                }//: VSTACK
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//: SCROLLVIEW
            .edgesIgnoringSafeArea(.top)
        }//: NAVIGATIONVIEW
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
