//
//  SettingsView.swift
//  Fructus-SwiftUI
//
//  Created by Mahan Kheirollahi on 7/24/24.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentionMode
    
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing:20) {
                    //MARK: - SECTION 1
                    GroupBox(
                    label:
                    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical,4)
                        HStack(alignment: .center,spacing: 10) {
                            
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80,height: 80)
                                .cornerRadius(8)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have choleserol. Fruits are sources of many essential nutrions, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                            
                     
                            
                        }
                    }
                    
                    //MARK: - SECTION 2
                    
                    
                    //MARK: - SECTION 3
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")){
                        SettingsRowView(name: "Developer",content: "Mahan Kheirollahi")
                        SettingsRowView(name: "Designer",content: "Robert Petras")
                        SettingsRowView(name: "Compatibility",content: "IOS 17")
                        SettingsRowView(name: "Framework", content: "SWIFTUI" )
                        SettingsRowView(name: "Github",linkLabel: "Follow Me on Github", linkDestination: "github.com/mahankheirollahi" )
                        
                        
                        
                      
                    }
                }
                .navigationBarTitle(Text("Settings"),displayMode: .large)
                .padding()
                .toolbar{
                    ToolbarItem(placement: .topBarTrailing, content: {
                        Button(action: {
                            presentionMode.wrappedValue.dismiss()
                        },
                               
                        label: {
                            Image(systemName: "xmark")
                        })
                            
                        
                    })
                }
            }//: ScrollView
            
        }//: NavigationView
    }
}

//MARK: - PREVIEW
#Preview {
    SettingsView()
}
