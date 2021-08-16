//
//  statusDetailView.swift
//  space
//
//  Created by goboogie on 2021/08/15.
//

import SwiftUI

struct StatusDetailView: View {
    var statusType : StatusType
    var statusValue : Int
    var body: some View {
        VStack {
            Text(statusType.toIcon(countValue: statusValue))
                .tracking(-4.5)
                .multilineTextAlignment(.center)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .font(.body)
            Text(statusType.localize())
                .fontWeight(.medium)
                .font(.caption)

        }
    }
}

struct statusDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StatusDetailView(statusType: .health, statusValue: 3)
    }
}
