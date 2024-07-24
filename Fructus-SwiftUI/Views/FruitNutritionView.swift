//
//  FruitNutritionView.swift
//  Fructus-SwiftUI
//
//  Created by Mahan Kheirollahi on 7/24/24.
//

import SwiftUI

struct FruitNutritionView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
    let nutrition: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    //MARK: - BODY
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0..<nutrition.count,id: \.self) { item in
                    Divider().padding(.vertical,2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrition[item])
                        }
                        .foregroundStyle(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }//: GROUPBOX
    }
}
    
    //MARK: - Preview
    
    #Preview {
        FruitNutritionView(fruit: fruitsData[0])
    }

