//
//  BubbaTracker.reducer.swift
//  BubbaTracker
//
//  Created by Eric Alas on 2022-03-20.
//

import Foundation
import ReSwift

func bubbaTrackerReducer(action: Action, state: BubbaTrackerState?) -> BubbaTrackerState {
    var state = state ?? BubbaTrackerState()

    switch action {
        case let action as BubbaTrackerActionSetUserData:
            state.name = action.newName
            state.email = action.newEmail
        case let action as BubbaTrackerActionSetLoggedInStatus:
            state.loggedInStatus = action.loggedInStatus
            state.needsOnBoarding = action.needsOnBoarding
        default:
            break
    }

    return state
}
