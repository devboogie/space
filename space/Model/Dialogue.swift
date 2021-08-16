//
//  Dialogue.swift
//  space
//
//  Created by goboogie on 2021/08/15.
//

import Foundation

struct Dialogue : Hashable,Codable, Identifiable {
    var id: Int
    var content:String
    var options : [Int]
    
    static func == (lhs: Dialogue, rhs: Dialogue) -> Bool {
        return lhs.id == (rhs.id);
    }
}

struct DialogueOption : Hashable,Codable,Identifiable{
    var id: Int
    var conditions : [Int]
    var results : [Int]
    var content:String
}

struct Condition : Hashable,Codable,Identifiable {
    var id: Int
    var condition : ConditionType
    var status : StatusType
    var statusValue : Int
}
enum ConditionType:Int,Codable{
    case over = 0,same,under
}


struct EventResult : Hashable,Codable,Identifiable {
    var id: Int
    var result : ResultType
    var status:StatusType
    var statusValue: Int
}
enum ResultType:Int,Codable{
    case add = 0,remove
}
