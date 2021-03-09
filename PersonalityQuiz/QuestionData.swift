//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Владимир Тимофеев on 28.01.2021.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
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
            return "You are loyal, happy etc."
        case .cat:
            return "You are lazy, like fish etc."
        case .rabbit:
            return "You are optimistic and have a lot of energy"
        case .turtle:
            return "You are lazy and live long"
        }
    }
}
enum ResponseType {
    case single, multiple, ranged
}

var questions: [Question] = [
    Question(text: "Which food do you like the most?", type: .single,
             answers: [
                Answer(text: "Steak", type: .dog),
                Answer(text: "Fish", type: .cat),
                Answer(text: "Carrot", type: .rabbit),
                Answer(text: "Corn", type: .turtle)]),
    Question(text: "Which activities do you enjoy?", type: .multiple, answers:[
                Answer(text: "Swimming", type: .turtle),
                Answer(text: "Sleeping", type: .cat),
                Answer(text: "Cuddling", type: .rabbit),
                Answer(text: "Eating", type: .dog)]),
    Question(text: "How much do you enjoy car rides?", type: .ranged, answers: [
                Answer(text: "I dislike them", type: .cat),
                Answer(text: "I get a little nervous", type: .rabbit),
                Answer(text: "I barely notice them", type: .turtle),
                Answer(text: "I love them", type: .dog)])]
