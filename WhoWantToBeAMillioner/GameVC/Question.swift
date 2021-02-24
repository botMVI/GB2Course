//
//  Question.swift
//  WhoWantToBeAMillioner
//
//  Created by Michael Iliouchkin on 23.02.2021.
//

import Foundation

struct Question {
    let id: Int
    let question: String
    let correctAnswer: String
    var correctAnswerIndex: Int? {
        answers.firstIndex(of: correctAnswer)
    }
    let answers: [String]
}

class QuestionVocab {
    private static var shared = QuestionVocab()
    
    func getData() -> [Question] {
        let questions: [Question] = [
            Question(id: 1, question: "Какое растение существует на самом деле?", correctAnswer: "!Лох индийский", answers: ["Лох чилийский", "!Лох индийский", "Лох греческий", "Лох русский"]),
            Question(id: 2, question: "Что за место, попав в которое, человек делает селфи на кухне, которую не может себе позволить?", correctAnswer: "!Икея", answers: ["Рим", "Париж", "Лондон", "!Икея"]),
            Question(id: 3, question: "Какой город объявлен официальной родиной русского Деда Мороза?", correctAnswer: "!Великий Устюг", answers: ["Малая Вишера", "!Великий Устюг", "Вышний Волочек", "Нижний Новгород"]),
            Question(id: 4, question: "Что проводит боксер, наносящий удар противнику снизу?", correctAnswer: "!Апперкот", answers: ["Свинг", "Хук", "!Апперкот", "Джэб"]),
            Question(id: 5, question: "К кому первому обратились за помощью дед и бабка, не справившись с репкой?", correctAnswer: "!К внучке", answers: ["К Жучке", "К дочке", "!К внучке", "К залу"]),
            Question(id: 6, question: "Кого нет среди смешариков?", correctAnswer: "!Коня", answers: ["Барана", "Свиньи", "!Коня", "Лося"]),
            Question(id: 7, question: "Как называется ближайшая к Земле звезда?", correctAnswer: "!Солнце", answers: ["Проксиома Центавра", "!Солнце", "Полярная", "Сириус"]),
            Question(id: 8, question: "Что помогает запомнить мнемоническое правило «Это я знаю и помню прекрасно»?", correctAnswer: "!Число Пи", answers: ["!Число Пи", "Ряд активности металлов", "Цвета радуги", "Порядок падежей"]),
            Question(id: 9, question: "Какую площадь имеет клетка стандартной школьной тетради?", correctAnswer: "!0.25 кв.см", answers: ["!0.25 кв.см", "1 кв.см", "0.5 кв.см", "1.25 кв. см"]),
            Question(id: 10, question: "Что происходит на соревнованиях по стрельбе, если соперники набрали одинаковое количество очков?", correctAnswer: "Перестрелка", answers: ["Перевербовка", "Перепалка", "Перебранка", "Перестрелка"])
        ]
        return questions
    }
}
