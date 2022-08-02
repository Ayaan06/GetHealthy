//
//  GetHealthyV1App.swift
//  GetHealthyV1
//
//  Created by Student on 2022-07-22.
//

import SwiftUI
class AppState: ObservableObject {
    @Published var hasOnboarded: String

    init(hasOnboarded: String) {
        self.hasOnboarded = hasOnboarded
    }
}

@main
struct GetHealthyV1App: App {
    @StateObject var appState = AppState(hasOnboarded: "ContentViewSCR")
        
        var body: some Scene {
            WindowGroup {
                if appState.hasOnboarded == "MeditationSCR"{
                    MeditationView()
                        .environmentObject(appState)
                }
                else if appState.hasOnboarded == "WorkoutSCR"
                {
                    WorkoutView()
                        .environmentObject(appState)
                }
                else {
                   ContentView()
                        .environmentObject(appState)
                }
            }
        }
}
