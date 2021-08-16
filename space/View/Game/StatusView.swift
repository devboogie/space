//
//  statusView.swift
//  space
//
//  Created by goboogie on 2021/08/15.
//

import SwiftUI

struct StatusView: View {
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
            Spacer()
            StatusDetailView(statusType: .health, statusValue: 3)
            Spacer()
            StatusDetailView(statusType: .mental, statusValue: 1)
            Spacer()
            StatusDetailView(statusType: .moral, statusValue: 2)
            Spacer()
        })
        .background((Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 0.5)))
        
    }
}

struct statusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView()
    }
}
