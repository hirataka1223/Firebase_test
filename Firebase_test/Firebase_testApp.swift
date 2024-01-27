//
//  Firebase_testApp.swift
//  Firebase_test
//
//  Created by Taka on 2023/12/21.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {

        return true
    }
}

@main
struct YourApp: App {
    // register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    init() {
        FirebaseApp.configure() // Configure FirebaseApp here
    }
    
    var body: some Scene {
        WindowGroup{
            NewAccount()
        }
    }
}


