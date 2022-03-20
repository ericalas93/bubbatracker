//
//  BubbaTracker.state.swift
//  BubbaTracker
//
//  Created by Eric Alas on 2022-03-20.
//

import Foundation

enum LoggedInStatus {
    case loggedIn
    case loggedOut
    case unknown
}

struct BubbaTrackerState: Hashable {
    var loggedInStatus: LoggedInStatus = .unknown
    var needsOnBoarding: Bool = false
    var hideNavigation: Bool = false
    var name: String = ""
    var email: String = ""
}
