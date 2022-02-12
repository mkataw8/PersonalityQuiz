//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Muhamad Kataw on 10/30/21.
//“On my honor, I have neither received nor given any unauthorized assistance on Mid Term Exam." Muhamad Kataw

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}
enum ResponseType {
    case single, multiple, ranged
}
struct Answer {
    var text: String
    var type: AnimalType
}
enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    var definition: String {
        switch self {
            case .dog:
            return "You  are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
            case .cat:
            return "Mischievous, yet mild tempered, you enjoy doing things on your own terms."
            case .rabbit:
            return "You love everything that's soft. You are healthy and full of energy."
            case .turtle:
            return "You are wise beyond your years, and you focuson the details. Slow and steady wins the race."
        }
        
        
    }

}

