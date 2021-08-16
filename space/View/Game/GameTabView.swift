//
//  GameTabView.swift
//  space
//
//  Created by goboogie on 2021/08/16.
//

import SwiftUI

struct GameTabView: View {
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
            ZStack(alignment: /*@START_MENU_TOKEN@*/Alignment(horizontal: .center, vertical: .center)/*@END_MENU_TOKEN@*/, content: {
                StatusView()
            })
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, content: {
                DialogueView(dialogue: test)
            })
        })
    }
}

struct GameTabView_Previews: PreviewProvider {
    static var previews: some View {
        GameTabView()
    }
}
