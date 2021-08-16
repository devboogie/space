//
//  Status.swift
//  space
//
//  Created by goboogie on 2021/08/15.
//

enum StatusType:Int
{
    case health = 0
    case mental
    case moral
    
    func toIcon() -> String {
        switch self {
        case .health:
            return "♥️"
        case .mental:
            return "🧠"
        case .moral:
            return "⚖️"
        }
    }
    func toIcon(countValue : Int) -> String {
        var result :String = "";
        for _ in 0..<countValue {
            result += self.toIcon()
        }
        return result;
    }
    func localize() -> String {
        switch self {
        case .health:
            return "체력"
        case .mental:
            return "정신력"
        case .moral:
            return "도덕성"
        }
    }
}
