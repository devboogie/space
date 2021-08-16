//
//  ContentView.swift
//  space
//
//  Created by goboogie on 2021/08/15.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .game

    enum Tab {
        case game
        case inventory
    }

    var body: some View {
          
            TabView(selection: $selection){
                GameTabView()
                    .tabItem { Label("Main", systemImage: "gamecontroller") }
                    .tag(Tab.game)
                StatusView()
                    .tabItem { Label("Status", systemImage: "waveform.path.ecg") }
                    .tag(Tab.game)
            }
        
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
