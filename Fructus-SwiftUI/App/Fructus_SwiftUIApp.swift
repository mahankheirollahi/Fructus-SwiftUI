//
//  Fructus_SwiftUIApp.swift
//  Fructus-SwiftUI
//
//  Created by Mahan Kheirollahi on 7/22/24.
//

import SwiftUI

@main
struct Fructus_SwiftUIApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            }
            else{
                ContentView()
            }
           
        }
    }
}
