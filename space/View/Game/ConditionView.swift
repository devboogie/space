//
//  ConditionView.swift
//  space
//
//  Created by goboogie on 2021/08/15.
//

import SwiftUI

struct ConditionView: View {
    var condition: Condition
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
            if(condition.condition == .over){
            
             Text(condition.status.localize())
                    .foregroundColor(Color.green)
                    .fontWeight(.bold)
            }
            else
            {
                Text(condition.status.localize())
                        .foregroundColor(Color.red)
                    .fontWeight(.bold)
            }
            
        })
    }
}

struct ConditionView_Previews: PreviewProvider {
    static var previews: some View {
        ConditionView(condition: Condition.init(id:1,condition: .under, status: .health, statusValue: 3))
    }
}
