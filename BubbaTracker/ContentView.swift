//
//  ContentView.swift
//  BubbaTracker
//
//  Created by Eric Alas on 2022-03-20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var store = ObservableStore(store: appStore)
    
    
    var body: some View {
        let name = selectName(store.state)

        VStack {
            Text("Hello, \(name)!")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
