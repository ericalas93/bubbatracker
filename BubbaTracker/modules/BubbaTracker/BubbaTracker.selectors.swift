//
//  BubbaTracker.selectors.swift
//  BubbaTracker
//
//  Created by Eric Alas on 2022-03-20.
//


import Foundation
import ReSwift

let selectBubbaTrackerState = createSelector(selector1: { (state: AppState) in state }, { state in state.bubbaTracker })


let selectName = createSelector(selector1: selectBubbaTrackerState) { state in state.name }

let selectEmail = createSelector(selector1: selectBubbaTrackerState) { state in state.email }
