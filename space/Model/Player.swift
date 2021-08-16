//
//  Player.swift
//  space
//
//  Created by goboogie on 2021/08/15.
//

import Foundation

struct Player : Hashable, Identifiable {
    var id: Int
    var name: String
    var status : [Status] = [Status.init(id: 0, type: .health, value: 3),Status.init(id: 0, type: .mental, value: 3),Status.init(id: 0, type: .moral, value: 3),]
}
struct Status:Hashable,Identifiable {
    var id:Int
    var type : StatusType
    var value : Int
}
