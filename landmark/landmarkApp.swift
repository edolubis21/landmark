//
//  landmarkApp.swift
//  landmark
//
//  Created by Rekeningku on 30/03/22.
//

import SwiftUI

@main
struct landmarkApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
