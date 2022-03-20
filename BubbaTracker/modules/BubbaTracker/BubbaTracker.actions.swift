//
//  BubbaTracker.actions.swift
//  BubbaTracker
//
//  Created by Eric Alas on 2022-03-20.
//

import Foundation
import ReSwift
import ReSwiftThunk

struct BubbaTrackerActionSetUserData: Action {
    var newName: String
    var newEmail: String
}


func BubbaTrackerThunkSetUserData(_ newName: String, _ newEmail: String) -> Thunk<AppState> {
    return Thunk<AppState> { dispatch, _ in
        // TODO: call API to update
        dispatch(BubbaTrackerActionSetUserData(newName: newName, newEmail: newEmail))
    }
}

struct BubbaTrackerActionSetLoggedInStatus: Action {
    var loggedInStatus: LoggedInStatus
    var needsOnBoarding: Bool
}

let BubbaTrackerThunkLaunch = Thunk<AppState> { dispatch, _ in
    print("launching")
//    if AuthApi.isLoggedIn() {
//        AuthApi.postLogin(dispatch: dispatch)
//    } else {
        dispatch(BubbaTrackerActionSetLoggedInStatus(loggedInStatus: .loggedOut, needsOnBoarding: false))
        // Temp
//        dispatch(BubbaTrackerThunkSetUserData("Eric", "alas.eric@gmail.com"))
//    }
}
