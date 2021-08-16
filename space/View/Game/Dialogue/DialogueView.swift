//
//  dialogView.swift
//  space
//
//  Created by goboogie on 2021/08/15.
//
import Foundation
import SwiftUI

struct DialogueView: View {
    var dialogue:Dialogue
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            ScrollView(.vertical, showsIndicators: true, content: {
                VStack(alignment: .center, spacing: nil, content: {
                    Text(dialogue.content)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.body)
                        .padding()
                    Spacer(minLength: 200)
                    
                })
                
            }).padding()
            VStack(alignment: .center, spacing: nil, content: {
                ForEach(dialogue.options) { option in
                    DialogueOptionView(option: option)
                }
                
            })
            .background(Color.white)
            .padding()
        })
        
        
       
        
    }
}

struct dialogView_Previews: PreviewProvider {
    static var previews: some View {
        DialogueView(dialogue: test)
    }
}
