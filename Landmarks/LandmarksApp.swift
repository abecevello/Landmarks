//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Adam Becevello on 2021-01-10.
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
		
		#if os(watchOS)
		WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
		#endif
    }
}
