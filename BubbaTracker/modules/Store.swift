//
//  Store.swift
//  BubbaTracker
//
//  Created by Eric Alas on 2022-03-20.
//

import Foundation
import ReSwift
import ReSwiftThunk

struct AppState: Hashable {
    var bubbaTracker = BubbaTrackerState()
}

func appReducer(action: Action, state: AppState?) -> AppState {
    return AppState(
        bubbaTracker: bubbaTrackerReducer(action: action, state: state?.bubbaTracker)
    )
}

//let AuthApi = AuthApiClass()
let thunkMiddleware: Middleware<AppState> = createThunkMiddleware()
let appStore = Store<AppState>(reducer: appReducer, state: nil, middleware: [thunkMiddleware])
