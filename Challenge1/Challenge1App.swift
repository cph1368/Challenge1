//
//  Challenge1App.swift
//  Challenge1
//
//  Created by Corry Handayani on 26/7/21.

// initilization code

import SwiftUI
import Firebase

@main
struct Challenge1App: App {
    
    //add adaptor
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
