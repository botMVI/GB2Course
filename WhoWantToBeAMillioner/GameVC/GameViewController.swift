//
//  GameViewController.swift
//  WhoWantToBeAMillioner
//
//  Created by Michael Iliouchkin on 20.02.2021.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var questionNumberLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    
    var questions: [Question] = []
    var gameSessionDelegate = GameSession?
    
    init(questions: [Question], gameSession: GameSession) {
        super.init(nibName: nil, bundle: nil)
        self.questions = questions
        self.gameSessionDelegate = gameSession
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        changeQuestionNumberText()
//        changeQuestionText()
//        changeAnswerText()
        fillGameData()
    }
    
    private func fillGameData() {
        guard let gameSession = gameSessionDelegate else {return}
        let currentQuestionIndex = gameSession.correctAnswer
        if currentQuestionIndex < questions.count {
            let question = questions[currentQuestionIndex]
            
            questionNumberLabel.text = "Вопрос №\(currentQuestionIndex + 1)"
            questionLabel.text = question.text
            for (i, button) in [button1, button2, button3, button4].enumerated() {
                button.setTitle(question.answers[i], for: .normal)
            }
        } else {
            return print("else")
        }
    }
}
    
    
    
    
    
    
    
    
    
    
    
    
//
//
//
//    let questionNumber = 1
//
//    func changeQuestionNumberText() {
//
//        questionNumberLabel.text = "Вопрос номер \(questionNumber)"
//    }
//
//    let questionVocab = [
//        "Какое растение существует на самом деле?",
//        "Что за место, попав в которое, человек делает селфи на кухне, которую не может себе позволить?",
//        "Какой город объявлен официальной родиной русского Деда Мороза?",
//        "Что проводит боксер, наносящий удар противнику снизу?",
//        "К кому первому обратились за помощью дед и бабка, не справившись с репкой?",
//        "Кого нет среди смешариков?",
//        "Как называется ближайшая к Земле звезда?",
//        "Что помогает запомнить мнемоническое правило «Это я знаю и помню прекрасно»?",
//        "Какую площадь имеет клетка стандартной школьной тетради?"
//    ]
//
//    func changeQuestionText() {
//
//        let i = 0
//
//        questionLabel.text = "\(questionVocab[i])"
//        questionLabel.lineBreakMode = .byWordWrapping
//        questionLabel.numberOfLines = 3
//    }
//
//    let answerVocab = [
//        ["Лох чилийский", "!Лох индийский", "Лох греческий", "Лох русский"],
//        ["Рим", "Париж", "Лондон", "!Икея"],
//        ["Малая Вишера", "!Великий Устюг", "Вышний Волочек", "Нижний Новгород"],
//        ["Свинг", "Хук", "!Апперкот", "Джэб"],
//        ["К Жучке", "К дочке", "!К внучке", "К залу"],
//        ["Барана", "Свиньи", "!Коня", "Лося"],
//        ["Проксиома Центавра", "!Солнце", "Полярная", "Сириус"],
//        ["!Число Пи", "Ряд активности металлов", "Цвета радуги", "Порядок падежей"],
//        ["!0.25 кв.см", "1 кв.см", "0.5 кв.см", "1.25 кв. см"]
//    ]
//
//
//    func changeAnswerText() {
//
//        let i = 0
//
//       firstAnswerLabel.text = "1. \(answerVocab[i][0])"
//       secondAnswerLabel.text = "2. \(answerVocab[i][1])"
//       thirdAnswerLabel.text = "3. \(answerVocab[i][2])"
//        fourthAnswerLabel.text = "4. \(answerVocab[i][3])"
//    }
//
//
//
//    func checkRightAnswer() {
//
//    }
//}
