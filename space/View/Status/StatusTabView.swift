//
//  StatusTabView.swift
//  space
//
//  Created by goboogie on 2021/08/16.
//

import SwiftUI

struct StatusTabView: View {
    var player:Player
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
            ForEach(player.status){ status in
                StatusDetailView(statusType: status.type, statusValue: status.value)
            }
        })
        
    }
}

struct StatusTabView_Previews: PreviewProvider {
    static var previews: some View {
        StatusTabView(player: Player.init(id: 1, name: "dkdk"))
    }
}
