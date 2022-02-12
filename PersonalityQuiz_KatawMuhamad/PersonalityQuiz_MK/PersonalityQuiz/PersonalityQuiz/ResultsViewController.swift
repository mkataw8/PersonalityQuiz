//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Muhamad Kataw on 10/30/21.
//“On my honor, I have neither received nor given any unauthorized assistance on Mid Term Exam." Muhamad Kataw

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var resultAnswerLabel: UILabel!
    
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    var responses: [Answer]!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        calculatePersonalityResult()
    }

    func calculatePersonalityResult() {
        var frequencyOfAnswers = [AnimalType: Int]()
        let responseTypes = responses.map {
            $0.type
        }
        for response in responseTypes {
            
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted {
            $0.value > $1.value
        }
        let mostCommonAnswer = frequentAnswersSorted.first!.key
        resultAnswerLabel.text = "You  are a \(mostCommonAnswer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition
    }

}




    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


