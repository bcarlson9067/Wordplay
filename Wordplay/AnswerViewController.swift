//
//  AnswerViewController.swift
//  Wordplay
//
//  Created by Bailey Carlson on 12/3/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    var word: String!
    var adjective: String!
    var noun: String!
    var verb: String!
    @IBOutlet weak var answerSentence: UILabel!
    @IBOutlet weak var stretchOneSentence: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let MVP = word!
        let stretchOneAdj = adjective!
        let stretchOneNoun = noun!
        let stretchOneVerb = verb!
        if MVP == "" || MVP == " ", stretchOneAdj == "" || stretchOneNoun == "" || stretchOneVerb == "" {
            answerSentence.text = "Please go back and fill in all blanks"
            stretchOneSentence.text = "Please go back and fill in all blanks"
        }
        else if stretchOneAdj == "" || stretchOneNoun == "" || stretchOneVerb == "" {
    answerSentence.text = "My uncle wants to go to the" + " " + word
    stretchOneSentence.text = "Please go back and fill in all blanks"
        }
        else if MVP == "" || MVP == " " {
          answerSentence.text = "Please go back and fill in all blanks"
        stretchOneSentence.text = "The" + " " + adjective + " " + noun + " " + verb + " " + "to the store"
        }
        else {
            answerSentence.text = "My uncle wants to go to the" + " " + word
            stretchOneSentence.text = "The" + " " + adjective + " " + noun + " " + verb + " " + "to the store"
        }
        
        }
//    @IBAction func whenBackButtonPressed(_ sender: Any) {
//        word = nil
//        adjective = ""
//        verb = ""
//        noun = ""
//        answerSentence.text = ""
//        stretchOneSentence.text = ""
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
