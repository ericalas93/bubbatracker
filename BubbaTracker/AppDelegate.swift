//
//  AppDelegate.swift
//  BubbaTracker
//
//  Created by Eric Alas on 2022-03-20.
//

import Foundation
import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        appStore.dispatch(BubbaTrackerThunkLaunch)
        return true
    }
}
