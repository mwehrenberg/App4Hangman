//
//  SecondViewController.swift
//  App 4 - Hangman
//
//  Created by John Wehrenberg on 6/30/17.
//  Copyright © 2017 Molly Wehrenberg. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var wordInUse: UILabel!
    @IBOutlet weak var hangerView: UIImageView!
    @IBOutlet weak var resultDisplayer: UILabel!
    
    var wordGenerator = [String]()
    var randomIndex = 0
    var wordUsedForCurrentGame = ""
    var currentWordLetters = [Character]()
    var numberOfCharactersInWord = 0
    var emptyInitializer = ""
    var indexOfLetterChosen = 0
    var stringBeforeLetter = ""
    var stringAfterLetter = ""
    var stringAfterLetterPlaces = 0
    var changingArrayForWord = [Character]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomIndex = Int(arc4random_uniform(UInt32(wordGenerator.count)))
        wordUsedForCurrentGame = wordGenerator[randomIndex]
        currentWordLetters = [Character](wordUsedForCurrentGame.characters)
        print(currentWordLetters)
        numberOfCharactersInWord = wordUsedForCurrentGame.characters.count
        emptyInitializer = String(repeating : "_ ", count : numberOfCharactersInWord)
        wordInUse.text = emptyInitializer
        changingArrayForWord = [Character](emptyInitializer.characters)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func testForLetterInWord(givenLetter : Character) {
        for (index, element) in currentWordLetters.enumerated() {
            if element == givenLetter {
                changingArrayForWord[index * 2] = givenLetter
                wordInUse.text = String(changingArrayForWord)
            }
            else {
                //do nothing
            }
        }
    }
    
    func testForNotInWordAtAll(givenLetter : Character){
        if currentWordLetters.contains(givenLetter){
            //do nothing
        }
        else {
            if hangerView.image == UIImage(named: "Hangman-0") {
                hangerView.image = UIImage(named: "Hangman-1")
            }
            else if hangerView.image == UIImage(named: "Hangman-1") {
                hangerView.image = UIImage(named: "Hangman-2")
            }
            else if hangerView.image == UIImage(named: "Hangman-2") {
                hangerView.image = UIImage(named: "Hangman-3")
            }
            else if hangerView.image == UIImage(named: "Hangman-3") {
                hangerView.image = UIImage(named: "Hangman-4")
            }
            else if hangerView.image == UIImage(named: "Hangman-4") {
                hangerView.image = UIImage(named: "Hangman-5")
            }
            else if hangerView.image == UIImage(named: "Hangman-5") {
                hangerView.image = UIImage(named: "Hangman-6")
                resultDisplayer.text = "Game Over"
                let alert = UIAlertController(title: "Game Over. Play again?", message: nil, preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
                    self.hangerView.image = UIImage(named: "Hangman-0")
                    self.randomIndex = Int(arc4random_uniform(UInt32(self.wordGenerator.count)))
                    self.wordUsedForCurrentGame = self.wordGenerator[self.randomIndex]
                    self.currentWordLetters = [Character](self.wordUsedForCurrentGame.characters)
                    print(self.currentWordLetters)
                    self.numberOfCharactersInWord = self.wordUsedForCurrentGame.characters.count
                    self.emptyInitializer = String(repeating : "_ ", count : self.numberOfCharactersInWord)
                    self.wordInUse.text = self.emptyInitializer
                    self.changingArrayForWord = [Character](self.emptyInitializer.characters)
                    self.resultDisplayer.text = ""
                }
                alert.addAction(okAction)
                present(alert, animated: true, completion: nil)
            }
        }
    }
    
    func testForFinishedWord() {
        if wordInUse.text!.contains("_") {
            return
        }
        else {
            resultDisplayer.text = "You Won!"
            let alert = UIAlertController(title: "You win! Play again?", message: nil, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
                self.hangerView.image = UIImage(named: "Hangman-0")
                self.randomIndex = Int(arc4random_uniform(UInt32(self.wordGenerator.count)))
                self.wordUsedForCurrentGame = self.wordGenerator[self.randomIndex]
                self.currentWordLetters = [Character](self.wordUsedForCurrentGame.characters)
                print(self.currentWordLetters)
                self.numberOfCharactersInWord = self.wordUsedForCurrentGame.characters.count
                self.emptyInitializer = String(repeating : "_ ", count : self.numberOfCharactersInWord)
                self.wordInUse.text = self.emptyInitializer
                self.changingArrayForWord = [Character](self.emptyInitializer.characters)
                self.resultDisplayer.text = ""
            }
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func onQ(_ sender: Any) {
        testForLetterInWord(givenLetter: "Q")
        testForNotInWordAtAll(givenLetter: "Q")
        testForFinishedWord()
    }
    @IBAction func onW(_ sender: Any) {
        testForLetterInWord(givenLetter: "W")
        testForNotInWordAtAll(givenLetter: "W")
        testForFinishedWord()
    }
    @IBAction func onE(_ sender: Any) {
        testForLetterInWord(givenLetter: "E")
        testForNotInWordAtAll(givenLetter: "E")
        testForFinishedWord()
    }
    @IBAction func onR(_ sender: Any) {
        testForLetterInWord(givenLetter: "R")
        testForNotInWordAtAll(givenLetter: "R")
        testForFinishedWord()
    }
    @IBAction func onT(_ sender: Any) {
        testForLetterInWord(givenLetter: "T")
        testForNotInWordAtAll(givenLetter: "T")
        testForFinishedWord()
    }
    @IBAction func onY(_ sender: Any) {
        testForLetterInWord(givenLetter: "Y")
        testForNotInWordAtAll(givenLetter: "Y")
        testForFinishedWord()
    }
    @IBAction func onU(_ sender: Any) {
        testForLetterInWord(givenLetter: "U")
        testForNotInWordAtAll(givenLetter: "U")
        testForFinishedWord()
    }
    @IBAction func onI(_ sender: Any) {
        testForLetterInWord(givenLetter: "I")
        testForNotInWordAtAll(givenLetter: "I")
        testForFinishedWord()
    }
    @IBAction func onO(_ sender: Any) {
        testForLetterInWord(givenLetter: "O")
        testForNotInWordAtAll(givenLetter: "O")
        testForFinishedWord()
    }
    @IBAction func onP(_ sender: Any) {
        testForLetterInWord(givenLetter: "P")
        testForNotInWordAtAll(givenLetter: "P")
        testForFinishedWord()
    }
    @IBAction func onA(_ sender: Any) {
        testForLetterInWord(givenLetter: "A")
        testForNotInWordAtAll(givenLetter: "A")
        testForFinishedWord()
    }
    @IBAction func onS(_ sender: Any) {
        testForLetterInWord(givenLetter: "S")
        testForNotInWordAtAll(givenLetter: "S")
        testForFinishedWord()
    }
    @IBAction func onD(_ sender: Any) {
        testForLetterInWord(givenLetter: "D")
        testForNotInWordAtAll(givenLetter: "D")
        testForFinishedWord()
    }
    @IBAction func onF(_ sender: Any) {
        testForLetterInWord(givenLetter: "F")
        testForNotInWordAtAll(givenLetter: "F")
        testForFinishedWord()
    }
    @IBAction func onG(_ sender: Any) {
        testForLetterInWord(givenLetter: "G")
        testForNotInWordAtAll(givenLetter: "G")
        testForFinishedWord()
    }
    @IBAction func onH(_ sender: Any) {
        testForLetterInWord(givenLetter: "H")
        testForNotInWordAtAll(givenLetter: "H")
        testForFinishedWord()
    }
    @IBAction func onJ(_ sender: Any) {
        testForLetterInWord(givenLetter: "J")
        testForNotInWordAtAll(givenLetter: "J")
        testForFinishedWord()
    }
    @IBAction func onK(_ sender: Any) {
        testForLetterInWord(givenLetter: "K")
        testForNotInWordAtAll(givenLetter: "K")
        testForFinishedWord()
    }
    @IBAction func onL(_ sender: Any) {
        testForLetterInWord(givenLetter: "L")
        testForNotInWordAtAll(givenLetter: "L")
        testForFinishedWord()
    }
    @IBAction func onZ(_ sender: Any) {
        testForLetterInWord(givenLetter: "Z")
        testForNotInWordAtAll(givenLetter: "Z")
        testForFinishedWord()
    }
    @IBAction func onX(_ sender: Any) {
        testForLetterInWord(givenLetter: "X")
        testForNotInWordAtAll(givenLetter: "X")
        testForFinishedWord()
    }
    @IBAction func onC(_ sender: Any) {
        testForLetterInWord(givenLetter: "C")
        testForNotInWordAtAll(givenLetter: "C")
        testForFinishedWord()
    }
    @IBAction func onV(_ sender: Any) {
        testForLetterInWord(givenLetter: "V")
        testForNotInWordAtAll(givenLetter: "V")
        testForFinishedWord()
    }
    @IBAction func onB(_ sender: Any) {
        testForLetterInWord(givenLetter: "B")
        testForNotInWordAtAll(givenLetter: "B")
        testForFinishedWord()
    }
    @IBAction func onN(_ sender: Any) {
        testForLetterInWord(givenLetter: "N")
        testForNotInWordAtAll(givenLetter: "N")
        testForFinishedWord()
    }
    @IBAction func onM(_ sender: Any) {
        testForLetterInWord(givenLetter: "M")
        testForNotInWordAtAll(givenLetter: "M")
        testForFinishedWord()
    }
    
}






















