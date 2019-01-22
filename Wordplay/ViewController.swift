//
//  ViewController.swift
//  Wordplay
//
//  Created by Bailey Carlson on 12/3/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var adjectiveTextField: UITextField!
    @IBOutlet weak var nounTextField: UITextField!
    @IBOutlet weak var verbTextField: UITextField!
    @IBOutlet weak var wordToFindTextField: UITextField!
    @IBOutlet weak var replaceTextField: UITextField!
    @IBOutlet weak var sentenceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func whenButtonPressed(_ sender: Any) {
        var str = "The nice blue cat wanted to travel the world."
        let wordToReplace: String = replaceTextField.text!
        let wordToFind: String = wordToFindTextField.text!
        if wordToFind == "" || str.contains(wordToFind) == false {
            let sadAlert = UIAlertController(title: "😭", message: nil, preferredStyle: .alert)
            let sadButton = UIAlertAction(title: "Ok", style: .cancel)
            sadAlert.addAction(sadButton)
            present(sadAlert, animated: true, completion: nil)
        }
        else if wordToReplace == "" {
            let errorAlert = UIAlertController(title: "No Word Entered", message: "Would you like to enter a word below?", preferredStyle: .alert)
            errorAlert.addTextField (configurationHandler:{ (textField) in
                textField.placeholder = "Enter word to replace"
            })
            let errorButton = UIAlertAction(title: "Cancel", style: .cancel)
            let ok = UIAlertAction(title: "Ok", style: .default) { (alert) in
                let textFieldWord = errorAlert.textFields?[0].text
                if errorAlert.textFields?[0].text == " " || errorAlert.textFields?[0].text == "" {
                    let superErrorAlert = UIAlertController(title: "Error", message: "Wow you really suck! Just enter in some words.", preferredStyle: .alert)
                    let sorryButton = UIAlertAction(title: "Sorry", style: .cancel)
                    superErrorAlert.addAction(sorryButton)
                    self.present(superErrorAlert, animated: true, completion: nil)
                }
                else {
                let range = str.range(of: wordToFind)
                    str.replaceSubrange(range!, with: textFieldWord!)
                self.sentenceLabel.text = str
                }
            }
            errorAlert.addAction(errorButton)
            errorAlert.addAction(ok)
            present(errorAlert, animated: true, completion: nil)
        }
            else if str.contains(wordToFind) {
//                let happyAlert = UIAlertController(title: "😁", message: nil, preferredStyle: .alert)
//                let happyButton = UIAlertAction(title: "Ok", style: .cancel)
//                happyAlert.addAction(happyButton)
//                present(happyAlert, animated: true, completion: nil)
                let range = str.range(of: wordToFind)
                str.replaceSubrange(range!, with: wordToReplace)
                sentenceLabel.text = str
            }
            else {
            let wentToFarAlert = UIAlertController(title: "Woah", message: "You shouldn't have gotten here", preferredStyle: .alert)
            let ToFarButton = UIAlertAction(title: "Yikes", style: .cancel)
            wentToFarAlert.addAction(ToFarButton)
            present(wentToFarAlert, animated: true, completion: nil)
            }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! AnswerViewController
        nvc.word = textField.text
        nvc.adjective = adjectiveTextField.text
        nvc.noun = nounTextField.text
        nvc.verb = verbTextField.text
    }
    
    
    
}

