//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 박상원 on 2023/03/15.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
