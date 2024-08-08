//
//  ContentView.swift
//  Fructus-SwiftUI
//
//  Created by Mahan Kheirollahi on 7/22/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){ item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical,4)
                    }
            
                   
                }//: FOREACH
            }//: LIST
            .navigationTitle(Text("Fruits"))
            .toolbar{
                ToolbarItem(placement: .topBarTrailing, content: {
                    Button(action: {
                        isShowingSettings = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    })//: Button
                    .sheet(isPresented: $isShowingSettings, content: {
                        SettingsView()
                    })
                
                })//: ToolbarItem
                
            }//: Toolbar
        }//: NAVIGATIONVIEW
       
    }
}

#Preview {
    ContentView()
}
