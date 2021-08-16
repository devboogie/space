//
//  DialogOptionView.swift
//  space
//
//  Created by goboogie on 2021/08/15.
//

import SwiftUI

struct DialogueOptionView: View {
    var option : DialogueOption
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            HStack(alignment: .center, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                    ForEach(option.condition) { condition in
                        ConditionView(condition: condition)
                    }
                })
                Spacer()
                Text(option.content)
                    .fontWeight(.bold)
                
                Spacer()
            })
            
        })
        .padding()
            
        }
}

struct DialogOptionView_Previews: PreviewProvider {
    static var previews: some View {
        DialogueOptionView(option: DialogueOption(id:2,condition: [Condition(id:1,condition: .over, status: .health, statusValue: 2)], result: [EventResult.init(id:1,result: .add, status: .health, statusValue: 3)], content: "상대에게 방구를 날린다."))
    }
}
